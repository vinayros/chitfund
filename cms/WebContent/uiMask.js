/*
	Created Date	: 09/10/2011
	Author		    : Sabesan.C
*******************************************************************
    Modified By     : Sabesan.C 
    Modified Date   : 09/01/2012
    Description     : Updated trimming of input data
*******************************************************************
    Modified By     : Sabesan.C 
    Modified Date   : 28/03/2012
    Description     : Added New Property Show Alert (True/False)
    Description     : Allow or Prevent Copy/Paste
*******************************************************************
    Modified By     : Sabesan.C 
    Modified Date   : 28/03/2012
    Description     : Added New Property mobile, pincode
*******************************************************************	
    Default Type    : alpha, numeric, float, alphanumeric, alphanumericspecial, email, date, mobile, phone, pincode
*/

jQuery.fn.uiMask = function(options) {
	var defaults = {
	    type: 'alpha',
		allow: '',
		allow_negative: false,
		allow_empty: true,
		allow_paste: false,
		allow_alert: false,
		allow_enter: true,
		allow_autocomplete: false,
		empty_message: '',
		validate_range: false,
		min_value: 0,
		max_value: 0,
		decimalsize: 2,
		keyValue: ''
	};
	
	if(defaults.allow_autocomplete==false)
    {
        $(this).attr("autocomplete","off");
    }

	// Extend our default options with those provided.
	var opts = $.extend(defaults, options);

	// Assign the valid characters for the data type
	switch(options.type)
	{
		case "alpha":
			defaults.keyValue="abcdefghijklmnopqrstuvwxyz";
			$(this).css("text-align", "left");
			defaults.allow=options.allow + '';
			break;
		case "numeric":
			defaults.keyValue="0123456789";
			$(this).css("text-align", "right");
			defaults.allow="";
			if(options.allow_negative) defaults.allow+="-";
			break;
		case "float":
			defaults.keyValue="0123456789";
			$(this).css("text-align", "right");
			defaults.allow=".";
			if(options.allow_negative)  defaults.allow+="-";
			break;
		case "alphanumeric":
			defaults.keyValue="abcdefghijklmnopqrstuvwxyz0123456789";
			$(this).css("text-align", "left");
			defaults.allow = options.allow + '';
			break;
		case "alphanumericspace":
            defaults.keyValue = "abcdefghijklmnopqrstuvwxyz0123456789 _-.";
            $(this).css("text-align", "left");
            defaults.allow = options.allow + '';
            break;
		case "alphanumericspecial":
			defaults.keyValue="abcdefghijklmnopqrstuvwxyz0123456789";
			$(this).css("text-align", "left");
			defaults.allow="!@#$%^&*()_+-=/.,:;{}[] ";
			break;
		case "date":
			defaults.keyValue="0123456789";
			$(this).css("text-align", "left");
			defaults.allow="/";
			break;
		case "email":
			defaults.keyValue="abcdefghijklmnopqrstuvwxyz0123456789";
			$(this).css("text-align", "left");
			defaults.allow="._@";
			break;
        case "mobile":
        case "phone":
        case "pinphone":
        case "pincode":
			defaults.keyValue="0123456789";
			$(this).css("text-align", "left");
			defaults.allow="";
			break;
		default:
			defaults.keyValue="";
			defaults.allow="";
			break;
		
			
	}
	
	// Allow Valid Characters with default key value
	defaults.keyValue+=defaults.allow;

	// Do Automatic action when the objects are created
	return this.each(function() {
    	var curNode = $(this);
		var key;
		var keychar;

/*
		// Key Down event implementation code goes here.
		curNode.keydown(function() {
			if (window.event)	//	IE
			   key = window.event.keyCode;
			else if (e)			//	Netscape, Mozila, Firefox, Chrome
			   key = e.which;
			else
			   return true;

			if (key==13 && defaults.allow_enter==true)
			{
			    
				var inp = $('input, select');
				var index = inp.index(this);
				var next = inp[index+1];
                
                if ($(next).css("display")=="none")
                {
                    next = inp[index+2];
		        }
				next.focus();
    			next.select();
		         	   
				return true;
			}
		});
*/
		// Key Press event for valid characters identification goes here.
		curNode.keypress(function() {
			if (window.event)	//	IE
			   key = window.event.keyCode;
			else if (e)			//	Netscape, Mozila, Firefox, Chrome
			   key = e.which;
			else
			   return true;

                        
			keychar = String.fromCharCode(key);
			keychar = keychar.toLowerCase();

            if (defaults.type=="phone" && (keychar=='-' || keychar==' '))
            {
                totalHyphen=(this.value).split("-").length - 1;
                totalSpace=(this.value).split(" ").length - 1;
                
                if (totalHyphen>0 || totalSpace>0)
                    return false;
                else
                    return true;
            }
            else if (defaults.type=="float" && keychar=='.')
            {
                totalDot=(this.value).split(".").length - 1;
                
                if (totalDot>0)
                    return false;
                else
                    return true;
            }
             else if (defaults.type=="percentage")
            {
                totalDot=(this.value).split("%").length - 1;
                
                if (totalDot>0)
                    return false;
                else
                    return true;
            }
            else if (defaults.type=="float" && keychar=='-' && options.allow_negative)
            {
                totalHyphen=(this.value).split("-").length - 1;
                
                if (totalHyphen>0)
                    return false;
                else
                    return true;
            }
			else if (((defaults.keyValue).indexOf(keychar) >=0))
			{
			  	return true;
			}
			else
			  	return false;
		});

	    curNode.bind('cut paste', function (e) {
            if (defaults.allow_paste==false)
            {
                e.preventDefault();
            }
        });
	  		
		curNode.blur(function(e) {
				this.value=trim(this.value);
				thisValue=this.value;

				if(defaults.allow_empty==false && thisValue.length==0)
				{
					if(defaults.empty_message.length>0)
					{
						ShowMessage(defaults.empty_message,defaults.allow_alert);
					}
					this.focus();
				}
				else if(defaults.type=="numeric")
				{
					tVal=parseInt(thisValue);
					if(isNaN(tVal))
						this.value=0;
					else
						this.value=tVal;
				}
				else if(defaults.type=="float")
				{
					tVal=parseFloat(thisValue);
					if(isNaN(tVal))
						this.value=0;
					else
						this.value=tVal.toFixed(defaults.decimalsize);
				}
								
				if((defaults.type=="numeric" || defaults.type=="float") && options.validate_range==true)
				{
					if(thisValue<defaults.min_value || thisValue>defaults.max_value)
					{
						ShowMessage("Enter a number between " + defaults.min_value + " and " + defaults.max_value,defaults.allow_alert);
						this.value="";
						this.focus();
					}
				}
				else if(defaults.type=="email" && thisValue.length!=0 && echeck(thisValue)==false)
				{
					ShowMessage("Invalid E-mail ID",defaults.allow_alert);
					this.focus();
				}
				else if(defaults.type=='date' && thisValue.length!=0 && isDate(thisValue,defaults.allow_alert)==false)
				{
					this.focus();
				}
		});
		
		curNode.bind("contextmenu",function(e){
    	    return false;
	    });
    });
};

// Overloades the inbuilt alert function
function ShowMessage(msg,allow_alert)
{
    if (allow_alert) alert(msg);
}

function trim(str) {
    return str.replace(/^\s+|\s+$/g,'');
} 

function echeck(str) {
	var at="@"
	var dot="."
	var lat=str.indexOf(at)
	var lstr=str.length
	var ldot=str.indexOf(dot)
	if (str.indexOf(at)==-1){
	   return false
	}

	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
	   return false
	}

	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		return false
	}

	 if (str.indexOf(at,(lat+1))!=-1){
		return false
	 }

	 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		return false
	 }

	 if (str.indexOf(dot,(lat+2))==-1){
		return false
	 }
	
	 if (str.indexOf(" ")!=-1){
		return false
	 }

	 return true					
}

/******************************* DATE VALIDATION *************************/
/*************************************************************************/

var dtCh= "/";
var minYear=1900;
var maxYear=2078;

function isInteger(s){
	var i;
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
}

function stripCharsInBag(s, bag){
	var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++){   
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function daysInFebruary (year){
	// February has 29 days in any year evenly divisible by four,
    // EXCEPT for centurial years which are not also divisible by 400.
    return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 4 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
	for (var i = 1; i <= n; i++) {
		this[i] = 31
		if (i==4 || i==6 || i==9 || i==11) {this[i] = 30}
		if (i==2) {this[i] = 29}
   } 
   return this
}

function isDate(dtStr,allow_alert){
	var daysInMonth = DaysArray(12)
	var pos1=dtStr.indexOf(dtCh)
	var pos2=dtStr.indexOf(dtCh,pos1+1)
	var strMonth=dtStr.substring(pos1+1,pos2)
	var strDay=dtStr.substring(0,pos1)
	var strYear=dtStr.substring(pos2+1)
	strYr=strYear
	if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
	if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
	for (var i = 1; i <= 3; i++) {
		if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
	}
	month=parseInt(strMonth)
	day=parseInt(strDay)
	year=parseInt(strYr)
	if (pos1==-1 || pos2==-1){
    	ShowMessage("The date format should be : dd/mm/yyyy",allow_alert)
		return false
	}
	if (strMonth.length<1 || month<1 || month>12){
		ShowMessage("Kindly enter a valid month",allow_alert)
		return false
	}
	if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > daysInMonth[month]){
		ShowMessage("Kindly enter a valid day",allow_alert)
		return false
	}
	if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
		ShowMessage("Kindly enter a valid 4 digit year between "+minYear+" and "+maxYear,allow_alert)
		return false
	}
	if (dtStr.indexOf(dtCh,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, dtCh))==false){
		ShowMessage("Kindly enter a valid date",allow_alert)
		return false
	}
	return true
}
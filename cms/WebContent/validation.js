/***************************/
//@Author: Adrian "yEnS" Mato Gondelle & Ivan Guardado Castro
//@website: www.yensdesign.com
//@email: yensamg@gmail.com
//@license: Feel free to use it, but keep this credits please!					
/***************************/

$(document).ready(function(){

    $("#txtMobile").uiMask({type: 'mobile'});



	//global vars
	var form = $("#freedemoForm");
	
	var name = $("#txtName");	
	var nameInfo = $("#nameInfo");
	
/*	var firm = $("#txtfirm");
	var firmInfo = $("#firmInfo");*/
	
	var mobile = $("#txtMobile");
	var mobileInfo = $("#mobileInfo");
	
	var email = $("#txtEmail");
	var emailInfo = $("#emailInfo");
	
/*	var city = $("#txtCity");
	var cityInfo = $("#cityInfo");
	
	var state = $("#txtState");
	var stateInfo = $("#stateInfo");		
	
	var message = $("#message");
	var messageInfo = $("#messageInfo");*/	
	
	//On blur
	name.blur(validateName);
/*	firm.blur(validateFirm);*/	
	mobile.blur(validateMobile);
	email.blur(validateEmail);
/*	city.blur(validateCity);
	state.blur(validateState);			
	message.blur(validateMessage);	*/

	
	//On key press
	name.keyup(validateName);
/*	firm.keyup(validateFirm);	*/	
	mobile.keyup(validateMobile);
	email.keyup(validateEmail);	
/*	city.keyup(validateCity);
	state.keyup(validateState);		
	message.keyup(validateMessage);*/
	
	//On Submitting
	form.submit(function(){
		if(validateName() & validateMobile() & validateEmail())
			return true
		else
			return false;
	});
	
	//validation functions

//============================================================================================
	function validateName(){
		//if it's NOT valid
		if(name.val().length < 1){
			name.addClass("error");
			nameInfo.text("Enter Your Name !!");
			nameInfo.addClass("error");
			return false;
		}
		//if it's valid
		else{
			name.removeClass("error");
			nameInfo.text("");
			nameInfo.removeClass("error");
			return true;
		}
	}	
//============================================================================================
/*	function validateFirm(){
		//if it's NOT valid
		if(firm.val().length < 1){
			firm.addClass("error");
			firmInfo.text("Type Your Firm Name !!");
			firmInfo.addClass("error");
			return false;
		}
		//if it's valid
		else{
			firm.removeClass("error");
			firmInfo.text("");
			firmInfo.removeClass("error");
			return true;
		}
	}	*/
//============================================================================================
	function validateEmail(){
		//testing regular expression
		var a = $("#txtEmail").val();
		var filter = /^[a-zA-Z0-9]+[a-zA-Z0-9_.-]+[a-zA-Z0-9_-]+@[a-zA-Z0-9]+[a-zA-Z0-9.-]+[a-zA-Z0-9]+.[a-z]{2,4}$/;
		//if it's valid email
		
		if(filter.test(a)){
			email.removeClass("error");
			emailInfo.text("");
			emailInfo.removeClass("error");
			return true;
		}
		//if it's NOT valid
		else{
			email.addClass("error");
			emailInfo.text("Enter Valid E-Mail ID !!");
			emailInfo.addClass("error");
			return false;
		}
	}
	
//============================================================================================	
		function validateMobile(){
		//if it's NOT valid
		var m = $("#txtMobile").val();		
		
		//if it's valid email
		if(mobile.val().length < 10){
			mobile.addClass("error");
			mobileInfo.text("Enter Valid Mobile Number !!");
			mobileInfo.addClass("error");
			return false;
		}				
		else{
			mobile.removeClass("error");
			mobileInfo.text("");
			mobileInfo.removeClass("error");
			return true;
		}		
	}

});
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>WeRise Chits||Admin Panel</title>
	<link rel="stylesheet" type="text/css" href="css/default.css"/>

</head>

<body>
<!--Header image and menu bar starts........................*/-->
	<div id="nav">
		<div id="header"><img src="images/adlogo.png"  border="0"/></div>
		<ul id="menu">
			<li class="home"><a href="admin_home_chitfund.jsp">Add New Agents</a></li>
			<li class="contact"><a href="ad_view_agent.jsp">View Agents</a></li>
			<li class="tutorials"><a href="ad_chit_schemes.jsp">Schemes</a>
				<ul class="sub-menu">
					<li><a href="#"><font size="3">Add New Scheme</font></a></li>
					<li><a href="#"><font size="3">Viw Scheme</font></a></li>
					<li><a href="#"><font size="3">Delete Scheme</font></a></li>
				</ul>
			</li>
					            
			<li class="about"><a href="#">Messages</a>
			<ul class="sub-menu">
					<li><a href="ad_messgae_inbox.jsp"><font size="3">Inbox</font></a></li>
					<li><a href="ad_sent_message.jsp"><font size="3">Sent New Message</font></a></li>
					
				</ul></li>
			<li class="news"><a href="#">My Account</a>
			<ul class="sub-menu">
					
					<li><a href="ad_myaccount_manage.jsp"><font size="3">Settings</font></a></li>
					<li><a href="#"><font size="3">Logout</font></a></li>
					
				</ul></li>
		</ul>
	</div>
<!-- /*Header image and  Menu bar ends.........................................*/ -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1 style="margin-left:185px;"> Agent Registration Form</h1>
	<!--registration form starts  -->
	<form action="CreateAgent" class="register" method="post">
    	
<!-- field set row 1 starts -->
            <fieldset class="row1"><legend>Agent Details</legend>		
				<p>
                    <label>First Name*</label>
                    <input type="text" name="txtAgtFirstName" maxlength="16" placeholder="First Name"/>
                    <label>Last Name*</label>
                    <input type="text" name="txtAgtLastName" maxlength="16" placeholder="Last Name"/>
                </p>
                <br>
                <p>
                    <label>Email *</label>
                    <input type="email" name="mailAgtEmail" maxlength="30" placeholder="Email">
                    <label>Mobile No *</label>
                    <input type="text" name="txtAgtContactno" maxlength="30" placeholder="Mobile Number"/>
                </p>
               <br>
                
               
               
				
				 <p>
                    <label>Adress</label>
                     <input type="text" name="txtAgtAddress" maxlength="200" placeholder="Address"/>
                     <label>State *</label>
                	<input type="text" name="txtAgtState" maxlength="25" placeholder="State"/>
                 
                </p>
                <br>
                <p>
					<label>City *</label>
                	<input type="text" name="txtAgtCity" maxlength="25" placeholder="City"/>
                	<label>PIN code</label>
                     <input type="text" name="AgtPINCode" maxlength="6" placeholder="PIN"/>
				</p>
				<br>
				<p>
                    <label>DOB *</label>
                    <input type="date" name="AgtDOB" maxlength="16" placeholder="date of birth"/>
                    
                </p>
                <br>
				 <p>
                    <label>Gender *</label>
                    <select name ="gender">
                        <option value="select">select</option>
                        <option value="M">Male</option>
 						<option value="F">Female</option>
                    </select>
                </p>
				<br>
				
                 <p>
					<label>Upload Passport Size Photo *</label>
					<div class="upload">			
        				<input type="file" name="agtpic" id="agtpic"/>
        			</div>
   					
				</p>
				

        </fieldset>
<!-- field set row 1 ends -->
<!-- field set row 2 starts -->
        <fieldset class="row2"><legend>Nominee Details</legend>
                <p>
                    <label>First Name*</label>
                    <input type="text" name="txtAgtNomineeName" maxlength="16" placeholder="Nominee Name"/>
                    <label>PIN code</label>
                     <input type="text" name="AgtPINNomCode" maxlength="6" placeholder="PIN"/>
                    
                    
                </p>
                <br>
                
                <p>
                <label>Relation ship *</label>
                    <input type="text" name="txtAgtRelationship" maxlength="16" placeholder="Relationship"/>
                    <label>City *</label>
                	<input type="text" name="txtAgtNomCity" maxlength="25" placeholder="City"/>
                </p>
                <br>
                <p>
                    <label>Email * </label>
                    <input type="email" name="txtAgtNomEmail" maxlength="30" placeholder="Email">
                    <label>Mobile No *</label>
                    <input type="text" name="txtAgtNomContactno" maxlength="30" placeholder="Mobile Number"/>
                </p>
                <br>
 				<p>
                    <label>Adress</label>
                    <input type="text" name="txtAgtNomAdderss" maxlength="30" placeholder="Address" />
                    <label>State *</label>
	                <input type="text" name="txtAgtNomState" maxlength="20"placeholder="State"/>
				</p>
				<br>
              
				<br>
</fieldset>
<!-- field set row 2 ends -->

<!-- field set row 3 starts -->

        <fieldset class="row3"><legend>Order Information</legend>

				<p>
					<label>Upload Id Proof:</label>
					<div class="upload">
        				<input type="file" name="id_Proof" id="id_Proof"/>
   					 </div>
					
				</p>
				<br>
				
                <p>
                    <label>Scheme *</label>
                    <select name="scheme">
                        <option value="0"></option>
                        <option value="scheme1">Scheme1</option>
 						<option value="scheme2">Scheme2</option>
                    </select>
                </p>
                 <p>
                    <label>Mode of payment *</label>
                    <select name ="payment">
                        <option value="0"></option>
                        <option value="cash">cash</option>
 						<option value="cheque">cheque</option>
                    </select>
                </p>
		</fieldset>
<!-- field set row 3 ends -->

<!-- field set row 4 starts -->
        <fieldset class="row4"><legend>Terms and Cinditions</legend>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>*  I accept the <a href="#">Terms and Conditions</a></label>
                </p>
		</fieldset>
         <div><button class="button">Register &raquo;</button></div>
<!-- field set row 4 ends -->

   </form> <!-- Form ends -->

        
<br>
<br>
<br>
<br>
<div id="cfooter" 
	style="color: #FFFFFF;
	background:rgba(219, 129, 12, 1);
	padding: 6px 0 5px 0;
	
	margin-top:25px;
	font-weight: bold;
	width:1348px;
	margin-left: 1px;
height:44px;

margin-bottom:-10px;
font-size:10px;">
		<center><font color="black" size="1px">Copyright @ 2014 Werise Foundation. www.WeriseFoundation.org. All Rights Reserved.</font><br>
		<a href="main-index.html"><font color="black" size="2px">Home</font></a>|
		<a href="about.jsp"><font color="black" size="2px">About Us</font></a>|
		<a href="join.jsp"><font color="black" size="2px">Join Us</font></a>|
		<a href="features.jsp"><font color="black" size="2px">Features</font></a>|
		<a href="enquiry.jsp"><font color="black" size="2px">Contact Us</font></a>|
		<a href="chit_scheme.jsp"><font color="black" size="2px">View Schemes</font></a>|
		<a href="forgot-password.jsp"><font color="black" size="2px">Forgot password?</font></a>|
		<a href="forgot-userid.jsp"><font color="black" size="2px">Forgot User Id?</font></a>|
		<a href="whatchit.jsp"><font color="black" size="2px">What is Chit Fund?</font></a>|
		</center>
	</div>
<!-- .........................................FOOTER ENDS..................................... -->
</body>
</html>
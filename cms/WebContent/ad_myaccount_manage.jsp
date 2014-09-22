<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>WeRise Chits||My Account</title>
<link rel="stylesheet" type="text/css" href="css/default.css"/>
<style>


#login {
	width: 440px;
position: relative;
margin-left: 453px;
margin-top: 137px;
}

h2 {
	color: rgba(3, 0, 0, 1);
font: 28px/18px "Segoe UI";
position: relative;
text-align: center;
margin-top: -77px;
margin-left:-25px;
}

.boxCont {
	width: 400px;
	padding: 15px;
	border: 5px solid #ccc;
	
	-webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3), inset 0px 0px 0px 1px white;
	-moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3), inset 0px 0px 0px 1px white;
	box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3), inset 0px 0px 0px 1px white;
	
	-webkit-border-radius: px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	
	background: #ffffff;
	background: -moz-linear-gradient(top,  #ffffff 0%, #d3efff 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#d3efff));
	background: -webkit-linear-gradient(top,  #ffffff 0%,#d3efff 100%);
	background: -o-linear-gradient(top,  #ffffff 0%,#d3efff 100%);
	background: -ms-linear-gradient(top,  #ffffff 0%,#d3efff 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#d3efff',GradientType=0 );
	background: linear-gradient(to bottom,  #ffffff 0%,#d3efff 100%);
	
	overflow: hidden;
}

/* Shadow */
.boxCont:after {
	content: '';
	position: absolute;
	bottom: -20px;
	left: 0;
	width: 100%;
	
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	
	-webkit-box-shadow: 0px 0px 8px 5px rgba(0,0,0,0.5);
	-moz-box-shadow: 0px 0px 8px 5px rgba(0,0,0,0.5);
	box-shadow: 0px 0px 8px 5px rgba(0,0,0,0.5);
}

.boxCont div {
	overflow: hidden;
}

/* Input */
input[type="text"], input[type="password"] {
	padding: 14px 10px;
	width: 70%;
	border: 1px solid #ccc;
	display: block;
	float: right;
	
	background: #d3efff;
	background: -moz-linear-gradient(top,  #d3efff 0%, #ffffff 55%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#d3efff), color-stop(55%,#ffffff));
	background: -webkit-linear-gradient(top,  #d3efff 0%,#ffffff 55%);
	background: -o-linear-gradient(top,  #d3efff 0%,#ffffff 55%);
	background: -ms-linear-gradient(top,  #d3efff 0%,#ffffff 55%);
	background: linear-gradient(top,  #d3efff 0%,#ffffff 55%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d3efff', endColorstr='#ffffff',GradientType=0 );
	
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

input[type="password"] {
	margin-top: 5px;
}

/* Buttons */
input.btn {
	display: inline-block;
	text-decoration: none;
	font: 14px/18px Arial, sans-serif;
	color: white;
	padding: 12px 40px;
	margin:15px 133px 7px;
	float: left;
	cursor: pointer;
	
    background-color: #0064cd;
    background-repeat: repeat-x;
    background-image: -khtml-gradient(linear, left top, left bottom, from(#049cdb), to(#0064cd));
    background-image: -moz-linear-gradient(top, #049cdb, #0064cd);
    background-image: -ms-linear-gradient(top, #049cdb, #0064cd);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #049cdb), color-stop(100%, #0064cd));
    background-image: -webkit-linear-gradient(top, #049cdb, #0064cd);
    background-image: -o-linear-gradient(top, #049cdb, #0064cd);
    background-image: linear-gradient(to bottom, #049cdb, #0064cd);
    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#049cdb', endColorstr='#0064cd', GradientType=0);

    border: 1px solid #ccc;
    border-color: #0064cd #0064cd #003f81;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	
	-webkit-transition: all .2s ease;
	-moz-transition: all .2s ease;
	-ms-transition: all .2s ease;
	-o-transition: all .2s ease;
	transition: all .2s ease;
}

input.btn.right {
	float: right;
}

input.btn:hover {
    background-position: 0 -15px;
    text-decoration: none;
}

input.btn:active {
    -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.25),0 1px 2px rgba(0, 0, 0, 0.05);
    -moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.25),0 1px 2px rgba(0, 0, 0, 0.05);
    box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.25),0 1px 2px rgba(0, 0, 0, 0.05);
}

a#forgotpass {
	color: #ccc;
	text-decoration: none;
	font: 12px/18px Arial, sans-serif;
	margin-top: 20px;
	display: block;
}

label {
	float: left;
	font: 14px/18px Arial, sans-serif;
	color: #333;
	padding: 16px 0 0 0;
	
}
</style>
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
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<!-- .......................CHANGE PASSWORD FORM STARTS........... -->
<div id="login">
	<h2>Change Your Password</h2>
	<br>
	<br>
	<form class="boxCont" method="POST" action="processChangePWD">
		<div>
			<label for="userName">Current password</label>
			<input id="userName" type="text" name="txtCurrentPassword" placeholder="Current password" />
		</div>
		
		<div>
			<label for="password">New Password</label>
			<input id="password" type="password" name="txtNewPassword" placeholder="New Password" />
		</div>
		<div>
			<label for="password">Conform new password:</label>
			<input id="password" type="password" name="txtConformPassword" placeholder="Conform new password" />
		</div>
		
		<div>
			<input type="submit" id="signIn" name="signIn" value="Change" class="btn left" />
			
		</div>
	</form>
	

<!-- .......................CHANGE PASSWORD FORM STARTS........... -->




 <!-- .........................................FOOTER STARTS..................................... -->

 <div id="cfooter" 
	style="color: #FFFFFF;
	background:rgba(219, 129, 12, 1);
	padding: 6px 0 5px 0;
	
	margin-top:150px;
	font-weight: bold;
	width:1348px;
	margin-left:-452px;
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
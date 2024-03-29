<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Werise chits|Admin Login</title>
<style>
body {
	background:  repeat top left;
	padding: 1px;
}

#login {
	width: 440px;
position: relative;
margin-left: 453px;
margin-top: 137px;
}

h2 {
	color: black;
	font: 28px/18px "Segoe UI";
	position: relative;
	text-align: center;
	margin-top: 30px;
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
	color:red;
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
<div id="login">
	<h2>Please Login Again With your New Password!!!!</h2>
	<form class="boxCont" method="POST" action="loginurl">
		<div>
			<label for="userName">Username</label>
			<input id="userName" type="text" name="txtUserName" placeholder="Please enter your username here" />
		</div>
		
		<div>
			<label for="password">Password</label>
			<input id="password" type="password" name="txtPassword" placeholder="And your password here" />
		</div>
		
		<div>
			<input type="submit" id="signIn" name="signIn" value="Sign In" class="btn left" />
			
		</div>
	</form>
	
	<a href="ad_secure_forgotpass.jsp" id="forgotpass">Forgot Your Password?</a>
	<a href="main-index.html" id="forgotpass">Back to Homepage</a>
</div>
</body>
</html>
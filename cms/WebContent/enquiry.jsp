<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>WeRise Chits||Chit mangement</title>

<link href="css/mainstyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="general.css" type="text/css" media="screen" />
<script type="text/javascript" src="slider/min.js"></script>
 <script type="text/javascript" src="validation.js"></script>
 <script type="text/javascript" src="uiMask.js"></script>
<style>
#paraframe{width: 812px;
height: 626px;
left: 251px;
position: absolute;
top: 234px;
right: 10px;
border: 1px solid #DCDAC2;
background: url('images/bg.jpg') repeat scroll 0% 0% transparent;
color: #3D3C2C;}
#parabody{width:550px; height:450px; position:absolute; top:10px; left:10px;}
#parabody h2{width:266px; height:31px; display:block; position: relative; background:url(images/symbol5.gif) 100% 0 no-repeat #FCFAE6; padding:24px 0 0 0; font:28px/28px Georgia, "Times New Roman", Times, serif; color:#3D3C2C; margin:20px 0 20px 80px ;}
#parabody p{padding:0 90px 30px;}

</style>
</head>

<body>
<div class="wrapper col0">
  <div id="topline">
    <p>Tel: 080 42195341 | Mail: info@chitsoft.com</p>
    <ul>
      <li><a href="#">Privacy Terms</a></li>
      <li><a href="#">Help</a></li>
      <li><a href="ad_secure_login.jsp">Admin Area</a></li>
     
    </ul>
    <br class="clear" />
  </div>
<div id="header"><img src="css/images/logo.jpg"  border="0"/>
	<ul>
		<li><a href="main-index.html" title="Home"><img src="css/images/home.jpg" style="width:60px; height:60px;"/></a></li>
		<li><a href="about.jsp" title="About Us"><img src="css/images/about.png" style="width:60px; height:60px;"/></a></li>
		
		<li><a href="join.jsp" title="Join Us"><img src="css/images/join.jpg" style="width:60px; height:60px;"/></a></li>
		<li><a href="features.jsp" title="Features"><img src="css/images/features.jpg" style="width:60px; height:60px;"/></a></li>
		<li><a href="enquiry.jsp" title="Enquiry"><img src="css/images/enquire.png" style="width:60px; height:60px;"/></a></li>
		
	</ul>
</div>
<br>
<br>

  


	

 <div id="paraframe">
  	<div id="parabody">
  	<div id="pnlEnquiryTable">

  	  <form method="post" action="Register_enquiry_data" id="freedemoForm">
  	
	 <table border="0" width="500" cellspacing="0" cellpadding="3" align="center">
                                        <tr>
                                            <td colspan="2" valign="top" align="center">
                                                <h1 class="welcomeheading" dir="ltr">
                                                   <img src="images/enq.png"></h1>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                Name *
                                            </td>
                                            <td valign="top">
                                                <input type="text" id="txtName" name="name" placeholder="Your Name" autofocus="" />
                                                <span id="nameInfo"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                Firm / Company Name
                                            </td>
                                            <td valign="top">
                                                <input  type="text" id="txtfirm" name="firmname" placeholder="Firm / Company Name" /><span
                                                    id="firmInfo"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                Address
                                            </td>
                                            <td valign="top">
                                                <input type="text" id="txtAddress" name="address" placeholder="Address" />
                                                <span id="firmInfo"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                Street
                                            </td>
                                            <td valign="top">
                                                <input name="sreet" type="text" id="street" placeholder="Street" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                Area
                                            </td>
                                            <td valign="top">
                                                <input name="area" type="text" id="txtArea" placeholder="Area" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                State
                                            </td>
                                            <td valign="top">
                                                <select  id="cmbState" name="state" onchange="loadAjaxCombo(this,&#39;#cmbDistrict&#39;,&#39;city&#39;);">
		<option value="-1">::Select::</option>
		<option value="5">Andaman and Nicobar</option>
		<option value="4">Andhra Pradesh</option>
		<option value="17">Arunachal Pradesh</option>
		<option value="18">Assam</option>
		<option value="19">Bihar</option>
		<option value="6">Delhi</option>
		<option value="7">Goa</option>
		<option value="8">Gujarat</option>
		<option value="9">Haryana</option>
		<option value="10">Jammu and Kashmir</option>
		<option value="3">Karnataka</option>
		<option value="2">Kerala</option>
		<option value="11">Madhya Pradesh</option>
		<option value="12">Maharashtra</option>
		<option value="15">Puducherry</option>
		<option value="13">Sikkim</option>
		<option value="1">Tamilnadu</option>
		<option value="14">Uttar Pradesh</option>
		<option value="16">West Bengal</option>
		<option value="0">Others</option>

	</select>
                                                <span id="stateInfo"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                District
                                            </td>
                                            <td valign="top">
                                               <input name="district" type="text" id="district" name="district" placeholder="District" />
                                                <span id="cityInfo2"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                E-mail *
                                            </td>
                                            <td valign="top">
                                                <input name="email" type="text" id="txtEmail" name="txtEmail" placeholder="sample@sample.com" />
                                                <span id="emailInfo"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle">
                                                Mobile *
                                            </td>
                                            <td valign="top">
                                                <input name="mobile" type="text" maxlength="10" id="txtMobile" name="txtMobile" placeholder="10 Digit Mobile Number" />
                                                <span id="mobileInfo"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                Message
                                            </td>
                                            <td valign="top" height="140px">
                                                <textarea name="message" rows="2" cols="20" id="message" name="message" placeholder="Message">
</textarea>
                                                <span id="messageInfo"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" valign="top">
                                                <div align="right">
                                                    <input type="submit" name="cmdSave" value="Send" id="cmdSave" style="margin-right: 15px;" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                
</div>
                                
                                </form>

                               

                         
	
	

	 
  </div>
 
 


 	</div>
 <!-- .........................................FOOTER STARTS..................................... -->

 <!-- .........................................FOOTER STARTS..................................... -->

<div id="cfooter" style="color: #FFFFFF;
	background:rgba(219, 129, 12, 1);
	padding: 6px 0 5px 0;
	
	margin-top:761px;
	font-weight: bold;
	width:1348px;
height:44px;

margin-bottom:-10px;
font-size:10px;">
		<center><font color="black" size="1px">Copyright @ 2014 Werise Foundation. www.WeriseFoundation.org. All Rights Reserved.</font><br>
		<a href="main-index.html"><font color="black" size="2px">Home</font></a>|
		<a href="about.jsp"><font color="black" size="2px">About Us</font></a>|
		<a href="join.jsp"><font color="black" size="2px">Join Us</font></a>|
		<a href="features.jsp"><font color="black" size="2px">Features</font></a>|
		<a href="enquiry.jsp"><font color="black" size="2px">Contact Us</font></a>|
		<a href="contact.jsp"><font color="black" size="2px">View Schemes</font></a>|
		<a href="forgot-password.jsp"><font color="black" size="2px">Forgot password?</font></a>|
		<a href="forgot-userid.jsp"><font color="black" size="2px">Forgot User Id?</font></a>|
		<a href="whatchit.jsp"><font color="black" size="2px">What is Chit Fund?</font></a>|
		</center>
	</div>
<!-- .........................................FOOTER ENDS..................................... -->


</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>WeRise Chits||Chit mangement</title>

<link href="css/mainstyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="general.css" type="text/css" media="screen" />

 <script type="text/javascript" src="uiMask.js"></script>
<style>
#paraframe{width:550px; height:450px;left:500px; position:absolute; top:155px; right:10px; border:1px solid #DCDAC2; background:#fff;color:#3D3C2C;}
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
      <li><a href="#">Admin Area</a></li>
     
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
<img src="images/fp.png" style="
    margin-left: 180px;
    margin-top: 91px;
    width: 300px;"/>
    
    
    <fieldset style="width:80px;margin-left: 519px;margin-top:-215px;">
    <form action="forgot_password" method="post">
    
    <table border="0" width="500" cellspacing="0" cellpadding="3" align="center">
    
    <tr>
            <td valign="middle">
                                               
                <font color="green"><b> E-mail *</b></font> </td>
              <td valign="top">
            <input name="txtEmail" type="text" id="txtEmail" name="txtEmail" placeholder="sample@sample.com" />
           <span id="emailInfo"></span>
           </td>
           </tr>
           <tr>
    <td valign="middle">
        <font color="green"><b> User Id*</b></font>
   </td>
  <td valign="top">
 <input name="useridf" type="text" id="txtName" name="txtName" placeholder="Your Id" autofocus="" />
<span id="nameInfo"></span>
</td> 
</tr>   
<tr>
   <td colspan="2" valign="top">
       <div align="right">
            <input type="submit" name="cmdSave" value="Get Password" id="cmdSave" style="margin-right: 15px;" />
       </div>
   </td>
 </tr>
                                                                         
    </table>
    
    </form>
    </fieldset>
  
	


	

 
 
  <!-- .........................................FOOTER STARTS..................................... -->

<div id="cfooter" style="color: #FFFFFF;
	background:rgba(219, 129, 12, 1);
	padding: 6px 0 5px 0;
	
	margin-top:207px;
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
		<a href="chit_scheme.jsp"><font color="black" size="2px">View Schemes</font></a>|
		<a href="forgot-password.jsp"><font color="black" size="2px">Forgot password?</font></a>|
		<a href="forgot-userid.jsp"><font color="black" size="2px">Forgot User Id?</font></a>|
		<a href="whatchit.jsp"><font color="black" size="2px">What is Chit Fund?</font></a>|
		</center>
	</div>
<!-- .........................................FOOTER ENDS..................................... -->


</body>
</html>

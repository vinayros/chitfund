<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="loadVal", method="POST">
		Your email:<input type="text" name="txtEmail"><br>
		new Password:<input type="text" name="txtNewPassword"><br>
		old passwordd:<input type="text" name="ros"><br>
		
		
		<input type="submit" value="Check">
		<%
			String resp=(String)request.getAttribute("status"); //get the response from StoreController servlet.
		
			if(resp!=null && resp.equalsIgnoreCase("success"))
			{%>
				<h1>Updated</h1>
			<%}
			else if(resp!=null && resp.equalsIgnoreCase("fail"))
			{%>
				<h1>Not Updated</h1>
			<%}
		%>	
		 
	</form>
</body>
</html>
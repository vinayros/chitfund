<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
try{
String user=request.getParameter("textfield");
String pass=request.getParameter("secure_login");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms","root","root");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select count(*) from admin_area where security_id='10900admin' and admin_id='"+user+"' and password='"+pass+"'");
           rs.next();
           int count1=rs.getInt(1);
           System.out.println(count1);
           
           
           
           ResultSet rs1=st.executeQuery("select count(*) from agent_area where security_id='855_gent' and agent_id='"+user+"' and password='"+pass+"'");
           rs1.next();
           
           int count2=rs1.getInt(1);
           System.out.println(count2);
         
          if(count1>0){
        	  
        	  response.sendRedirect("admin-home.jsp");
           }
          else if(count2>0){
        	  response.sendRedirect("try.jsp");
          
          }
          else{
        	  response.sendRedirect("main-index.html");
          
         
           
           
           
}
}
    catch(Exception e){
    System.out.println(e);
}
%>

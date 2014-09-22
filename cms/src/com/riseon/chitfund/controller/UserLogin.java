package com.riseon.chitfund.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.riseon.chitfund.dao.UserLoginDao;
import com.riseon.chitfund.dto.UserDetailsDto;


public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MyLogic(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	MyLogic(request, response);	
	}
	protected void MyLogic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String UName=request.getParameter("txtUserName"); //get the parameter values from browser.
		String pwd=request.getParameter("txtUserPassword");
		PrintWriter pw=response.getWriter();
		UserDetailsDto beans=new UserDetailsDto();  //Create Bean Object. And Set The Values to Setter methods().
		beans.setAgtId(UName);
		beans.setAgtPassword(pwd);
		
		UserLoginDao d=new UserLoginDao();
		boolean b=d.userLogin(beans);
		if(b)
		{
			RequestDispatcher rd= request.getRequestDispatcher("/admin_home_chitfund.jsp");   //pass the req,resp obj to index.jsp.
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd= request.getRequestDispatcher("login.jsp");   //pass the req,resp obj to index.jsp.
			rd.forward(request, response);
		}
	 
	}

}


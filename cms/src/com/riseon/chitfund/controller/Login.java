package com.riseon.chitfund.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.riseon.chitfund.dao.LoginDao;
import com.riseon.chitfund.dto.Admin_details;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MyLogic(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	MyLogic(request, response);	
	}
	protected void MyLogic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String UName=request.getParameter("txtUserName"); //get the parameter values from browser.
		String pwd=request.getParameter("txtPassword");
		PrintWriter pw=response.getWriter();
		Admin_details beans=new Admin_details();  //Create Bean Object. And Set The Values to Setter methods().
		beans.setAdmEmailId(UName);
		beans.setPassword(pwd);
		
		LoginDao d=new LoginDao();
		boolean b=d.adminLogin(beans);
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


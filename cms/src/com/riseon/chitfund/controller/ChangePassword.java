package com.riseon.chitfund.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.riseon.chitfund.dao.PasswordDao;
import com.riseon.chitfund.dto.Admin_details;


public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	MyLogic(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MyLogic(request, response);
	}

	protected void MyLogic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String oldPassword=request.getParameter("txtCurrentPassword");
		String newPassword=request.getParameter("txtNewPassword");
		String confirmpassword=request.getParameter("txtConformPassword");
		System.out.println(oldPassword+""+newPassword+""+confirmpassword);

        PasswordDao pd=new PasswordDao();
        int b=pd.changePassword(oldPassword,newPassword,confirmpassword);
        if(b==0)
        {
        	pw.println("New Password Can't be changed");
        	RequestDispatcher rd=request.getRequestDispatcher("ad_secure_forgotpass.jsp");
        	rd.forward(request,response);
        	
        	
        }
		else
		{
			pw.println("New Password sucessfully changed");		
			RequestDispatcher rd=request.getRequestDispatcher("after_changing_password.jsp");
        	rd.forward(request,response);
		}
        
        }
	}


package com.riseon.chitfund.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.riseon.chitfund.dto.Admin_details;
import com.riseon.chitfund.services.ConnectionProvider;

public class LoginDao 
{
	Connection con=ConnectionProvider.getObj().getCon();  // Make a connection using Services.
	
	public boolean adminLogin(Admin_details storebean)
	{
		PreparedStatement pstm=null;
		String query="select * from admin_details where AdmEmailId=? and admpassword=?" ;  // prepared Statement.
	 try
		{	
			pstm=con.prepareStatement(query);
			
			String username=storebean.getAdmEmailId(); // get the values using beans getter methods().
			String password=storebean.getPassword();
			
			pstm.setString(1, username);
			pstm.setString(2, password);
			ResultSet rs= pstm.executeQuery();  //execute the query.
			if(rs.next())
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	return false;
	}
}

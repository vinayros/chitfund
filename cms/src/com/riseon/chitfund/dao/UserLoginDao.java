package com.riseon.chitfund.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.riseon.chitfund.dto.UserDetailsDto;
import com.riseon.chitfund.services.ConnectionProvider;

public class UserLoginDao 
{
	Connection con=ConnectionProvider.getObj().getCon();  // Make a connection using Services.
	
	public boolean userLogin(UserDetailsDto storebean)
	{
		PreparedStatement pstm=null;
		String query="select count(*) from agent_details where AgtID=? and AgtPassword=?" ;  // prepared Statement.
	 try
		{	
			pstm=con.prepareStatement(query);
			
			String username=storebean.getAgtId(); // get the values using beans getter methods().
			String password=storebean.getAgtPassword();
			
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

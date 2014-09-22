package com.riseon.chitfund.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.riseon.chitfund.dto.Admin_details;
import com.riseon.chitfund.services.ConnectionProvider;

public class PasswordDao 
{
	Connection con=ConnectionProvider.getObj().getCon();  // Make a connection using Services.
	private PreparedStatement pstm1;
	
	public int changePassword(String oldpassword,String newPassword,String confirmPassword)
	{
		try {
			PreparedStatement pstmt=con.prepareStatement("select * from admin_details where AdmPassword=?");
			pstmt.setString(1, oldpassword);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				if(newPassword.equals(confirmPassword))
				{
					PreparedStatement pstmt1=con.prepareStatement("update admin_details set AdmPassword=?");
					pstmt1.setString(1, newPassword);
					pstmt1.executeUpdate();
					return 1;
				}
				else
				{
					return 0;
				}
			}
			else
			{
				return 0;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
}

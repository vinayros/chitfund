package com.riseon.chitfund.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import com.riseon.chitfund.dto.CreateAgentDto;
import com.riseon.chitfund.services.ConnectionProvider;

public class CreateAgentDao {
	Connection con=ConnectionProvider.getObj().getCon();
	
	public boolean createAgent(CreateAgentDto bean)
	{
		PreparedStatement pstm=null;
		StringBuilder query = new StringBuilder();
		query.append("insert into agent_details (AgtFirstName, AgtLastName, AgtID, AgtPassword, AgtEmail,AgtDOB, AgtAddress, AgtState, AgtCity, AgtPINCode, AgtContactno,"); 
		query.append("AgtGender, AgtNomineeName, AgtRelationship, AgtNomContactno,AgtPhoto, AgtNomAdderss, AgtNomState, AgtNomCity, AgtNomPINCode,"); 
		query.append("AgtNomEmail, AgtIdProof, AgtPANno, AgtChitPlan, AgtModeOfPayment,	AgtAccCreDate, AgtCreSys_IP)");
		query.append("values ( ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?,?, ?, ?, ?,?, ?, ?, ?, ?,?, ?, ?, ?, ?,now(), ?)"); 
	 try
		{	
			pstm=con.prepareStatement(query.toString());			
			pstm.setString(1, bean.getAgtFirstName());
			pstm.setString(2, bean.getAgtLastName());
			pstm.setInt(3,  (int)bean.getAgtID());
			pstm.setString(4, bean.getAgtPassword());
			pstm.setString(5, bean.getAgtEmail());
			pstm.setString(6, bean.getAgtDOB());
			pstm.setString(7, bean.getAgtAddress());
			pstm.setString(8, bean.getAgtState());
			pstm.setString(9, bean.getAgtCity());
			pstm.setInt(10, bean.getAgtPINCode());
			pstm.setInt(11, bean.getAgtContactno());
			pstm.setString(12, bean.getAgtGender());
			pstm.setString(13, bean.getAgtNomineeName());
			pstm.setString(14, bean.getAgtRelationship());
			pstm.setInt(15, bean.getAgtNomContactno());
			pstm.setBlob(16, bean.getAgtPhoto());
			pstm.setString(17, bean.getAgtNomAdderss());
			pstm.setString(18, bean.getAgtNomState());
			pstm.setString(19, bean.getAgtNomCity());
			pstm.setInt(20, bean.getAgtNomPINCode());
			pstm.setString(21, bean.getAgtNomEmail());
			pstm.setBlob(22, bean.getAgtIdProof());
			pstm.setString(23, bean.getAgtPANno());
			pstm.setString(24, bean.getAgtChitPlan());
			pstm.setString(25, bean.getAgtModeOfPayment());
			pstm.setString(26, bean.getAgtCreSys_IP());
			int rs= pstm.executeUpdate();  //execute the query.
			if(rs >0)
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

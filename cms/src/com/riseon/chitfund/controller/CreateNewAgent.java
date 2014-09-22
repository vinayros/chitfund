package com.riseon.chitfund.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.riseon.chitfund.dao.CreateAgentDao;
import com.riseon.chitfund.dto.CreateAgentDto;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class CreateNewAgent extends HttpServlet {
	private static final long serialVersionUID = 1L;
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			MyLogic(request, response);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
	}
	protected void MyLogic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, FileUploadException {
		
		//........reading agent personal details..................
		CreateAgentDto createAgentDto = new CreateAgentDto();
		Part agtpic = request.getPart("agtpic");
		//createAgentDto.setAgtPhoto(agtpic.getInputStream());
		
		Random random = new Random();
		createAgentDto.setAgtFirstName(request.getParameter("txtAgtFirstName")); //get the parameter values from browser.
		createAgentDto.setAgtLastName(request.getParameter("txtAgtLastName"));
		createAgentDto.setAgtID(random.nextInt(999999999) + 1000000000);
		createAgentDto.setAgtEmail(request.getParameter("mailAgtEmail"));
		createAgentDto.setAgtDOB(request.getParameter("AgtDOB"));
		createAgentDto.setAgtAddress(request.getParameter("txtAgtAddress"));
		createAgentDto.setAgtState(request.getParameter("txtAgtState"));
		createAgentDto.setAgtCity(request.getParameter("txtAgtCity"));	
		createAgentDto.setAgtPINCode(Integer.parseInt(request.getParameter("AgtPINCode")));
		createAgentDto.setAgtContactno(Integer.parseInt(request.getParameter("txtAgtContactno")));
		createAgentDto.setAgtGender(request.getParameter("gender"));
		createAgentDto.setAgtPANno("123");
		
	/*	Part idproof = request.getPart("id_Proof");
		File p = new File("C://Users//LENOVO//Desktop//A.jpg");*/
		
		//createAgentDto.setAgtIdProof();//idproof.getInputStream());
		createAgentDto.setAgtChitPlan(request.getParameter("scheme"));
		createAgentDto.setAgtModeOfPayment(request.getParameter("payment"));
		//...........reading nomineee details.............		
		createAgentDto.setAgtNomineeName(request.getParameter("txtAgtNomineeName"));
		createAgentDto.setAgtRelationship(request.getParameter("txtAgtRelationship"));
		createAgentDto.setAgtNomContactno(Integer.parseInt(request.getParameter("txtAgtNomContactno")));
		createAgentDto.setAgtNomAdderss(request.getParameter("txtAgtNomAdderss"));
		createAgentDto.setAgtNomEmail(request.getParameter("txtAgtNomEmail"));
		createAgentDto.setAgtNomState(request.getParameter("txtAgtNomState"));
		createAgentDto.setAgtNomCity(request.getParameter("txtAgtNomCity"));
		createAgentDto.setAgtNomPINCode(Integer.parseInt(request.getParameter("AgtPINNomCode")));
		CreateAgentDao createAgentDao = new CreateAgentDao();
		createAgentDao.createAgent(createAgentDto);
	}


}

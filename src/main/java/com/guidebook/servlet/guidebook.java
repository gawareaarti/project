package com.guidebook.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.*;
import com.db.Dbconnection;
import com.entity.*;

@WebServlet("/guidebook")
public class guidebook extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		try {
			String hid=req.getParameter("hid");
			String cid=req.getParameter("cid");

			String C_NAME=req.getParameter("C_NAME");
			String C_CONTACT=req.getParameter("C_CONTACT");
			String PLACE=req.getParameter("PLACE");
			String B_DATE=req.getParameter("B_DATE");
			
			guidbooking u=new guidbooking(hid,C_NAME,C_CONTACT,PLACE,B_DATE,cid);
			
			guiddao dao= new guiddao(Dbconnection.getConn());
			
			HttpSession session=req.getSession();
			
			boolean f=dao.registerg(u);
			
			if(f) {
				session.setAttribute("sucMsg","Register Sucessfully");
				resp.sendRedirect("trbooking.jsp");
				
			}
			else {
				session.setAttribute("errorMsg","Something wrong");
				resp.sendRedirect("trbooking.jsp");
			}
			
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
	}

	
	
}

package com.traveler.servlet;

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


@WebServlet("/travelerbook")
public class travelerbook extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 try{
				String ID=req.getParameter("hid");
				String cid=req.getParameter("cid");
				String C_NAME=req.getParameter("C_NAME");
				String P_PLACE=req.getParameter("P_PLACE");
				String TO_PLACE=req.getParameter("TO_PLACE");
				String CONTACT=req.getParameter("CONTACT");
				String B_DATE=req.getParameter("B_DATE");

				travelerbooking u=new travelerbooking(ID,C_NAME,P_PLACE,TO_PLACE,CONTACT,B_DATE,cid);
				
				travelerdao dao= new travelerdao(Dbconnection.getConn());
				
				HttpSession session=req.getSession();
				
				boolean f=dao.registera(u);
				
				if(f) {
					session.setAttribute("sucMsg","TRAVELERS BOOK");
					resp.sendRedirect("Tbooking.jsp");
					
				}
				else {
					session.setAttribute("errorMsg","TRAVELERS NOT BOOK");
					resp.sendRedirect("Tbooking.jsp");
				}
				
				
				
			}catch(Exception e) {
				System.out.println(e);
			}
		
		
		
	}

}

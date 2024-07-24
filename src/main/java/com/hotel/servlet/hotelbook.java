package com.hotel.servlet;

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


@WebServlet("/hotelbook")
public class hotelbook extends HttpServlet{
	
	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 
		 try{
				String hid=req.getParameter("hid");
				String cid=req.getParameter("cid");
				String C_NAME=req.getParameter("C_NAME");
				String C_CONTACT=req.getParameter("C_CONTACT");
				String JOIN_DATE=req.getParameter("JOIN_DATE");
				String LEAVE_DATE=req.getParameter("LEAVE_DATE");

				hotelbooking u=new hotelbooking(hid,cid,C_NAME,C_CONTACT,JOIN_DATE,LEAVE_DATE);
				
				hoteldao dao= new hoteldao(Dbconnection.getConn());
				
				HttpSession session=req.getSession();
				
				boolean f=dao.register1(u);
				
				if(f) {
					session.setAttribute("sucMsg","HOTEL BOOK");
					resp.sendRedirect("Hbooking.jsp");
					
				}
				else {
					session.setAttribute("errorMsg","HOTEL NOT BOOK");
					resp.sendRedirect("Hbooking.jsp");
				}
				
				
				
			}catch(Exception e) {
				System.out.println(e);
			}
		}
		 
		 
		 
	}
	





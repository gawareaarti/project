package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.userdao;
import com.db.Dbconnection;
import com.entity.user;




@WebServlet("/userregi")
public class userregi extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String username=req.getParameter("userName");
			String full_NAME=req.getParameter("full_NAME");
			String address=req.getParameter("address");
			String contect=req.getParameter("contect");
			String password=req.getParameter("password");
			
			user u=new user(username,full_NAME,address,contect,password);
			
			userdao dao= new userdao(Dbconnection.getConn());
			
			HttpSession session=req.getSession();
			
			boolean f=dao.register(u);
			
			if(f) {
				session.setAttribute("sucMsg","Register Sucessfully");
				resp.sendRedirect("sign_up.jsp");
				
			}
			else {
				session.setAttribute("errorMsg","Something wrong");
				resp.sendRedirect("sign_up.jsp");
			}
			
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
	}
	
	
	

}

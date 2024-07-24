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


@WebServlet("/userlogin")
public class userlogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String id=req.getParameter("username");
		String password=req.getParameter("Password");
		
		
		
		HttpSession session=req.getSession();
		
		userdao dao= new userdao(Dbconnection.getConn());
		user user1=dao.login(id, password);
		
		
		if(user1!=null) {
			session.setAttribute("userObj",user1);
			resp.sendRedirect("index.jsp");
			
		}else {
			session.setAttribute("errorMsg","invalid email & password");
			resp.sendRedirect("userlogin.jsp");
			
		}
		
		
		
	}
	
	

}

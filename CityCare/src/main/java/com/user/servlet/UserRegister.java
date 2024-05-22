package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		try {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			User u = new User(name, email, password);
			
			UserDao ud = new UserDao(DBConnect.getConn());
			
			boolean f = ud.UserRegister(u);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succmsg", "User Registered Successfully");
				resp.sendRedirect("signup.jsp");
			}
			else {
				session.setAttribute("error", "Something wrong on Server");
				resp.sendRedirect("signup.jsp");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}

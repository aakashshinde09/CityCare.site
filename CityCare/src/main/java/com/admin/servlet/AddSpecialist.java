package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDAO;
import com.db.DBConnect;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		String specName = req.getParameter("specName");
		
		SpecialistDAO dao = new SpecialistDAO(DBConnect.getConn());
		boolean f = dao.addSpecialist(specName);
		
		HttpSession session = req.getSession();
		
		if(f) {
			session.setAttribute("succmsg", "Specialist Added");
			resp.sendRedirect("admin/index.jsp");
		}
		else {
			session.setAttribute("error", "something wrong on server");
			resp.sendRedirect("admin/index.jsp");
		}
	}
}

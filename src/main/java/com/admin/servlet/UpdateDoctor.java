package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/update_doctor")
public class UpdateDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		try {

			String name = req.getParameter("name");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			String specialist = req.getParameter("specialist");
			String email = req.getParameter("email");
			String mobile = req.getParameter("mobile");
			String password = req.getParameter("password");
			int id = Integer.parseInt(req.getParameter("id"));
			System.out.println("This is update doctor servlet and the id is "+id);

			Doctor doctor = new Doctor();
			doctor.setDoctor_Id(id);
            doctor.setDoctor_name(name);
            doctor.setDoctor_dob(dob);
            doctor.setDoctor_qualification(qualification);
            doctor.setDoctor_specialist(specialist);
            doctor.setDoctor_email(email);
            doctor.setDoctor_mobile(mobile);
            doctor.setDoctor_password(password);

			DoctorDao dao = new DoctorDao();

			HttpSession session = req.getSession();

			if (dao.updateDoctor(doctor)) {
				session.setAttribute("succmsg", "Doctor Updated Successfully");
				resp.sendRedirect("admin/show_doctors.jsp");
			} else {
				session.setAttribute("error", "something wrong on server");
				resp.sendRedirect("admin/show_doctors.jsp");
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}

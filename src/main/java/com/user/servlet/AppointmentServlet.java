package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AppointmentDao;
import com.dao.DoctorDao;
import com.entity.Appointment;
import com.entity.Doctor;
import com.entity.User;

@WebServlet
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
//		int appointment_Id = Integer.parseInt(req.getParameter("appointment_Id"))
//		String user = req.getParameter("user");
//		String name = req.getParameter("name");
//		String gender = req.getParameter("gender");
//		String age = req.getParameter("age");
//		String email = req.getParameter("email");
//		String phNo = req.getParameter("phNo");
//		String diseases = req.getParameter("diseases");
//		String doctor = req.getParameter("doctor");
//		String address = req.getParameter("address");
//		String status = req.getParameter("status");
//		
//		User u = new User();
//		Doctor d = new Doctor();
//		Appointment appointment = new Appointment();
//		appointment.setAppointment_Id(appointment_Id);
//        appointment.setUser(u);
//        appointment.setName(name);
//        appointment.setGender(gender);
//        appointment.setAge(age);
//        appointment.setEmail(email);
//        appointment.setPhNo(phNo);
//        appointment.setDiseases(diseases);
//        appointment.setDoctor(d);
//        appointment.setStatus(status);
//		
//		AppointmentDao appdao = new AppointmentDao();
	}
}

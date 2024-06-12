package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDAO;
import com.entity.Specialist;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String specName = req.getParameter("specName");

        Specialist specialist = new Specialist();
        specialist.setSpecName(specName); // Assuming the Specialist entity has a setName method

        SpecialistDAO dao = new SpecialistDAO();
        boolean f = dao.addSpecialist(specialist);

        HttpSession session = req.getSession();

        if (f) {
            session.setAttribute("succmsg", "Specialist Added");
            resp.sendRedirect("admin/index.jsp");
        } else {
            session.setAttribute("error", "Something went wrong on the server");
            resp.sendRedirect("admin/index.jsp");
        }
    }
}

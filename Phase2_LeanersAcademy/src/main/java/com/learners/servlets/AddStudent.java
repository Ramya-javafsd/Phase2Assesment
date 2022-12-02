package com.learners.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learners.dao.StudentDao;
import com.learners.pojo.Student;

/**
 * Servlet implementation class AddStudent
 */
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Student s = new Student();
		s.setStud_id(Integer.parseInt(request.getParameter("stud_id")));
		s.setStud_name(request.getParameter("stud_name"));
		s.setStud_dob(request.getParameter("stud_dob"));
		s.setStud_addr(request.getParameter("stud_addr"));
		s.setStud_class(request.getParameter("stud_class"));
		
		StudentDao dao= new StudentDao();
		String val =dao.enroll(s);
		PrintWriter out = response.getWriter();
		
		request.getRequestDispatcher("addstudent.jsp").include(request, response);
		out.println("<center><span style='color:green'>"+ val +"</span></center>");
	}

}

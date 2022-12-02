package com.learners.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learners.dao.StudentDao;
import com.learners.dao.TeacherDao;
import com.learners.pojo.Teacher;

/**
 * Servlet implementation class AddTeacher
 */
public class AddTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTeacher() {
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
		Teacher t = new Teacher();
		t.setT_id(Integer.parseInt(request.getParameter("t_id")));
		t.setT_name(request.getParameter("t_name"));
		
		TeacherDao dao= new TeacherDao();
		String val =dao.addTeacher(t);
		PrintWriter out = response.getWriter();
		
		request.getRequestDispatcher("addteacher.jsp").include(request, response);
		out.println("<center><span style='color:green'>"+ val +"</span></center>");
		
		
	}

}

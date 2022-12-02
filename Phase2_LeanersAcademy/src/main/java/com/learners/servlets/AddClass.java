package com.learners.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learners.dao.ClassDao;
import com.learners.dao.SubjectDao;
import com.learners.pojo.Classes;
import com.learners.pojo.Subject;

/**
 * Servlet implementation class AddClass
 */
public class AddClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddClass() {
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
		Classes c= new Classes();
		c.setC_id(Integer.parseInt(request.getParameter("c_id")));
		c.setC_name(request.getParameter("c_name"));
		c.setC_subject(request.getParameter("c_subject"));
		c.setC_teacher(request.getParameter("c_teacher"));
		
		ClassDao dao= new ClassDao();
		String val = dao.addClass(c);
		PrintWriter out = response.getWriter();
		
		request.getRequestDispatcher("addsubject.jsp").include(request, response);
		out.println("<center><span style='color:green'>"+ val +"</span></center>");
	}

}

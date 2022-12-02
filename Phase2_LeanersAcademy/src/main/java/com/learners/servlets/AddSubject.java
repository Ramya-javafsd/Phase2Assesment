package com.learners.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learners.dao.StudentDao;
import com.learners.dao.SubjectDao;
import com.learners.dao.TeacherDao;
import com.learners.pojo.Subject;

/**
 * Servlet implementation class AddSubject
 */
public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSubject() {
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
		Subject sub= new Subject();
		sub.setSub_id(Integer.parseInt(request.getParameter("sub_id")));
		sub.setSub_name(request.getParameter("sub_name"));
		
		SubjectDao dao= new SubjectDao();
		String val = dao.addSubject(sub);
		PrintWriter out = response.getWriter();
		
		request.getRequestDispatcher("addsubject.jsp").include(request, response);
		out.println("<center><span style='color:green'>"+ val +"</span></center>");
	}

}

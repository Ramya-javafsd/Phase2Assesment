<%@page import="com.learners.pojo.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session = "true" %>    
<%@ page import="org.hibernate.cfg.Configuration" %>  
<%@ page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder" %>  
<%@ page import="org.hibernate.SessionFactory" %>   
<%@ page import="org.hibernate.Session" %>   
<%@ page import="org.hibernate.Transaction" %>   
<%@ page import="org.hibernate.query.Query" %>   
<%@ page import="java.util.List" %>
<%@ page import="com.learners.pojo.Student" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
</head>
<body>
<main>
			<div align="center">
				<a href="addstudent.jsp">Add Student</a><br>
				<p style='font-size:30px'><b> Students List </b></p>
				<table border =1 id="students">
					<thead>
						<tr>
					<th>ID</th>
					<th>Name</th>
					<th>DOB</th>
					<th>Address</th>
					<th>Class</th>
					</tr>
					</thead>
					<tbody>
						<%
							try{
								Configuration cfg = new Configuration().configure();
								cfg.addAnnotatedClass(com.learners.pojo.Student.class);
								StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
								SessionFactory factory = cfg.buildSessionFactory(builder.build());
								Session sess = factory.openSession();
								Transaction tx = sess.beginTransaction();
								Query query = sess.createQuery("from Student");
								List<Student> st1 = query.list();
								for(Student st:st1){
									out.println("<tr><td>"+st.getStud_id()+"</td><td>"+st.getStud_name()+"</td><td>"+st.getStud_dob()+"</td><td>"+st.getStud_addr()+"</td><td>"+st.getStud_class()+"</td></tr>");
								}
								tx.commit();
								sess.close();
							}catch(Exception e){
								e.printStackTrace();
							}
						%>
					</tbody>
				</table>
				<br><br><br>
				<a href="homePage.jsp">Click here for HomePage</a>
			</div>
		</main>
</body>
</html>
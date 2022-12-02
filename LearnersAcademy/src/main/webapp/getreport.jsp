<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="org.hibernate.cfg.Configuration" %>  
<%@ page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder" %>  
<%@ page import="org.hibernate.SessionFactory" %>   
<%@ page import="org.hibernate.Session" %>   
<%@ page import="org.hibernate.Transaction" %>   
<%@ page import="org.hibernate.query.Query" %>   
<%@ page import="java.util.List" %>
<%@ page import="com.learners.pojo.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<main>
		<% String clss = request.getParameter("c_name");
		
		      %>
	
		<div align="center">
			<a href="homePage.jsp">Click here for HomePage</a><br>
		<p style='font-size:30px'><b> Students List </b></p>
		<table border=1   id="report">
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
								Session s = factory.openSession();
								Transaction tx = s.beginTransaction();
								String stdquery = "from Student S where S.stud_class='"+clss+"'";
								Query query = s.createQuery(stdquery);
								List<Student> stl = query.list();
								for(Student st:stl){
									out.println("<tr><td>"+st.getStud_id()+"</td><td>"+st.getStud_name()+"</td><td>"+st.getStud_dob()+"</td><td>"+st.getStud_addr()+"</td><td>"+st.getStud_class()+"</td></tr>");
								}
								tx.commit();
								s.close();
							}catch(Exception e){
								e.printStackTrace();
							}
						%>
					</tbody>
				</table>
				<br>
				<p style='font-size:30px'><b>Subjects List</b></p>
				<table border=1  id="report">
				<thead>
					<tr>
					<th>Subject ID</th>
					<th>Subject Name</th>
					<th>Class</th>
					</tr>
				</thead>
				<tbody>
					<%
						try{
							Configuration cfg = new Configuration().configure();
							cfg.addAnnotatedClass(com.learners.pojo.Subject.class);
							StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
							SessionFactory factory = cfg.buildSessionFactory(builder.build());
							Session s = factory.openSession();
							Transaction tx = s.beginTransaction();
							String subjquery = "from Subject SC where SC.sub_class='"+clss+"'";
							Query query = s.createQuery(subjquery);
							List<Subject> sbc = query.list();
							for(Subject sb:sbc){
								out.println("<tr><td>"+sb.getSub_id()+"</td><td>"+sb.getSub_name()+"</td><td>"+sb.getSub_class()+"</td></tr>");
							}
							tx.commit();
							s.close();
						}catch(Exception e){
							e.printStackTrace();
						}
					%>
				</tbody>
			</table>
			<br>
			<p style='font-size:30px'><b>Teachers List</b></p>
				<table border=1  id="report">
				<thead>
					<tr>
					<th>Teacher ID</th>
					<th>Teacher Name</th>
					<th>Class</th>
					</tr>
				</thead>
				<tbody>
					<%
						try{
							Configuration cfg = new Configuration().configure();
							cfg.addAnnotatedClass(com.learners.pojo.Teacher.class);
							StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
							SessionFactory factory = cfg.buildSessionFactory(builder.build());
							Session s = factory.openSession();
							Transaction tx = s.beginTransaction();
							String subjquery = "from Teacher  where t_class='"+clss+"'";
							Query query = s.createQuery(subjquery);
							List<Teacher> sbc = query.list();
							for(Teacher t:sbc){
								out.println("<tr><td>"+t.getT_id()+"</td><td>"+t.getT_name()+"</td><td>"+t.getT_class()+"</td></tr>");
							}
							tx.commit();
							s.close();
						}catch(Exception e){
							e.printStackTrace();
						}
					%>
				</tbody>
			</table>
			<br>
		</div>
	
	</main>
</body>
</html>
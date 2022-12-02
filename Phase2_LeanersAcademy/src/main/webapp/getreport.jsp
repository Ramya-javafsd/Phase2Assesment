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
			<p style='font-size:30px'><b> Classes List </b></p>
			<table  border=1 id="report">
			<thead>
				<tr>
				<th>ClassId</th>
				<th>ClassName</th>
				<th>Teacher</th>
				<th>Subject</th>
				</tr>
			</thead>	
			<tbody>
			<%
				try{
					Configuration cfg = new Configuration().configure();
					cfg.addAnnotatedClass(com.learners.pojo.Classes.class);
					StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
					SessionFactory factory = cfg.buildSessionFactory(builder.build());
					Session s = factory.openSession();
					Transaction tx = s.beginTransaction();
					String classquery = "from Classes C where C.c_name="+clss;
					Query query = s.createQuery(classquery);
					List<Classes> cl = query.list();
					for(Classes cls:cl){
						out.println("<tr><td>"+cls.getC_id()+"</td><td>"+cls.getC_name()+"</td><td>"+cls.getC_teacher()+"</td><td>"+cls.getC_subject()+"</td></tr>");
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
								String stdquery = "from Student S where S.stud_class=="+clss;
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
					<th>Subject Name</th>
					<th>Class Assigned</th>
					</tr>
				</thead>
				<tbody>
					<%
						try{
							Configuration cfg = new Configuration().configure();
							cfg.addAnnotatedClass(com.learners.pojo.SubjectClass.class);
							StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
							SessionFactory factory = cfg.buildSessionFactory(builder.build());
							Session s = factory.openSession();
							Transaction tx = s.beginTransaction();
							String subjquery = "from SubjectClass SC where SC.classes="+clss;
							Query query = s.createQuery(subjquery);
							List<SubjectClass> sbc = query.list();
							for(SubjectClass sb:sbc){
								out.println("<tr><td>"+sb.getSubjectname()+"</td><td>"+sb.getClasses()+"</td></tr>");
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
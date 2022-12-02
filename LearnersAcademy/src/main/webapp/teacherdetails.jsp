<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="org.hibernate.cfg.Configuration" %>  
<%@ page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder" %>  
<%@ page import="org.hibernate.SessionFactory" %>   
<%@ page import="org.hibernate.Session" %>   
<%@ page import="org.hibernate.Transaction" %>   
<%@ page import="org.hibernate.query.Query" %>   
<%@ page import="java.util.List" %>
<%@ page import="com.learners.pojo.Teacher" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Details</title>
</head>
<body>
<main>
		<div align="center">
			<a href="addteacher.jsp">Add Teacher</a><br>
			<p style='font-size:30px'><b> Teachers List </b></p>
			<table  border="1"  id="teachers">
				<thead>
					<tr>
				<th>Teacher Id</th>
				<th>Name</th>
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
							Query query = s.createQuery("from Teacher");
							List<Teacher> tl = query.list();
							for(Teacher t:tl){
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
			<br><br><br>
			<a href="homePage.jsp">Click here for HomePage</a>
		</div>
	
	</main>
	
</body>
</html>
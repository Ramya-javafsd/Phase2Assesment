<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.hibernate.cfg.Configuration" %>  
<%@ page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder" %>  
<%@ page import="org.hibernate.SessionFactory" %>   
<%@ page import="org.hibernate.Session" %>   
<%@ page import="org.hibernate.Transaction" %>   
<%@ page import="org.hibernate.query.Query" %>   
<%@ page import="java.util.List" %>
<%@ page import="com.learners.pojo.Subject" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<main>
		
		<div align="center">
			<a href="addsubject.jsp">Add Subject</a><br>
			<a href="assignsubject.jsp">Assign a Class for Subject</a><br>
			<p style='font-size:30px'><b> Subjects List </b></p>
			<table border="1"   id="subjects">
				<thead>
					<tr>
					<th>Subject Id</th>
					<th>Subject Name</th>
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
							Query query = s.createQuery("from Subject");
							List<Subject> sbj = query.list();
							for(Subject sb:sbj){
								out.println("<tr><td>"+sb.getSub_id()+"</td><td>"+sb.getSub_name()+"</td>></tr>");
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
		</div>
	</main>
	
</body>
</html>
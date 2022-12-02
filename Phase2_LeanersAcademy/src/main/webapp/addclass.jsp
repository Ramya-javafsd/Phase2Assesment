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
		<%
			Configuration cfg = new Configuration().configure();
			cfg.addAnnotatedClass(com.learners.pojo.Subject.class);
			cfg.addAnnotatedClass(com.learners.pojo.Teacher.class);
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
			SessionFactory factory = cfg.buildSessionFactory(builder.build());
			Session s = factory.openSession();
			Transaction tx = s.beginTransaction();
			Query query = s.createQuery("from Subject");
			Query query1 = s.createQuery("from Teacher");
			List<Subject> sbj = query.list();
			List<Teacher> tch = query1.list();
		%>
	
		<div align="center">
			<p style='font-size:30px'><b> Assign Teacher to a Class with Subject </b></p>
			<form action="AddClass" method="post">
				<table>
					<tr>
					<td><b>Class</b></td>
					<td><select name="classes">
					<option value="selectclass">select class</option>
					<option value="1">BE</option>
					<option value="2">BCom</option>
					<option value="3">Bsc</option>
					<option value="4">BA</option>
					<option value="5">BBA</option>
					<option value="6">BCA</option>
					</select></td>
					</tr>
					<tr>
					</tr>
					<tr>
					<td><b>Teacher</b></td>
					<td><select name="teacher">
					<option value="chooseteach">select teacher</option>
						<%
							for(Teacher tc : tch){
								String tname = tc.getT_name();
							
						%>
					<option value="<%=tname%>"><%=tname %></option>	
						<%
							}
						%>
					</select></td>
					</tr>
					<tr>
					<td><b>Subject</b></td>
					<td><select name="subject">
					<option value="choose">choose subject</option>
						<%
							for (Subject sb : sbj) {
								String sname = sb.getSub_name();
						%>
					<option value="<%=sname%>"><%=sname%></option>
						<%
							}
						%>
					</select></td>
					
					</tr>
				</table>
				<br>
				<input type="submit" value="Assign"/>
			</form>
			<br>
			<a href="homePage.jsp">Click here for HomePage</a>
		</div>
		
	</main>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="org.hibernate.cfg.Configuration" %>  
<%@ page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder" %>  
<%@ page import="org.hibernate.SessionFactory" %>   
<%@ page import="org.hibernate.Session" %>   
<%@ page import="org.hibernate.Transaction" %>   
<%@ page import="org.hibernate.query.Query" %>   
<%@ page import="java.util.List" %>
<%@ page import="com.learners.pojo.Classes" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<main>
		<div align="center">
		
		<p style='font-size:30px'><b> Classes List </b></p>
		<table border="1"  id="classes">
			<thead>
				<tr>
				<th>ClassID</th>
				<th>ClassName</th>
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
					Query query = s.createQuery("from Classes");
					List<Classes> cl = query.list();
					for(Classes cls:cl){
						out.println("<tr><td>"+cls.getC_id()+"</td><td>"+cls.getC_name()+"</td></tr>");
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
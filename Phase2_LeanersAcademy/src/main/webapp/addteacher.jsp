<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Teacher</title>
</head>
<body>
<main>
		<div align="center">
			<p style='font-size:30px'><b>  Add Teacher  </b></p>
				<form action="AddTeacher" method="post">
					<table>
					<tr>
					<td><b>TeacherId</b></td>
					<td><input type="number" name="t_id"></td>
					</tr>
					<tr>
					<td><b>Name</b></td>
					<td><input type="text" name="t_name"></td>
					</tr>
					</table>
					<br>
					<input type="submit" value="Add"/>
			</form>
			<br>
			<a href="homPage.jsp">Click here for HomePage</a>
		</div>
	</main>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddStudent</title>
</head>
<body>


<main>
		<div align="center">
			<p style='font-size:30px'><b> Add Student Details </b></p>
				<form action="AddStudent" method="post">
					<table>
					<tr>
					<td><b>ID</b></td>
					<td><input type="number" name="stud_id"></td>
					</tr>
					<tr>
					<td><b>Name</b></td>
					<td><input type="text" name="stud_name"></td>
					</tr>
					<tr>
					<td><b>DOB</b></td>
					<td><input type="text" name="stud_dob"></td>
					</tr>
					<tr>
					<td><b>Address</b></td>
					<td><input type="text" name="stud_addr"></td>
					</tr>
					<tr>
					<td><b>Class</b></td>
					<td><select name="stud_class">
					<option value="selectclass">select class
					<option value="1">BE</option>
					<option value="2">BCom</option>
					<option value="3">Bsc</option>
					<option value="4">BA</option>
					<option value="5">BBA</option>
					<option value="6">BCA</option>
					</select></td>
					</tr>
					</table>
					<br>
					<input type="submit" value="Add"/>
			</form>
			<br>
			<a href="homePage.jsp">Click here for HomePage</a>
		</div>
	</main>
	
</body>
</html>
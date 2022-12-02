<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Subject</title>
</head>
<body>

<main>
		<div align="center">
			<p style='font-size:30px'><b>  Add Subject</b></p>
				<form action="AddSubject" method="post">
					<table>
					<tr>
					<td><b>SubjectId</b></td>
					<td><input type="number" name="sub_id"></td>
					</tr>
					<tr>
					<td><b>SubjectName</b></td>
					<td><input type="text" name="sub_name"></td>
					</tr>
					<tr>
					<td><b>Class</b></td>
					<td><select name="sub_class">
					<option value="selectclass">select class
					<option value="BE">BE</option>
					<option value="BCom">BCom</option>
					<option value="BSc">BSc</option>
					<option value="BA">BA</option>
					<option value="BBA">BBA</option>
					<option value="BCA">BCA</option>
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
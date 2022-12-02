<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class Report</title>
</head>
<body>

<main>
		<div align="center">
			<p style='font-size:30px'><b>Class Report</b></p><br><br>
			<form action="getreport.jsp" method="get">
				<table>
					<tr>
					<td><b>Class</b></td>
					<td><select name="classes">
					<option value="1">BE</option>
					<option value="2">BCom</option>
					<option value="3">Bsc</option>
					<option value="4">BA</option>
					<option value="5">BBA</option>
					<option value="6">BCA</option>
					</select></td>
					</tr>
					
				</table><br><br>
				<input type="submit" value="See Details"/>	
			</form>
		</div>
	</main>
</body>
</html>
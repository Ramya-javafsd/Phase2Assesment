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
					<td><select name="c_name">
					<option value="BE">BE</option>
					<option value="BCom">BCom</option>
					<option value="BSc">BSc</option>
					<option value="BA">BA</option>
					<option value="BBA">BBA</option>
					<option value="BCA">BCA</option>
					</select></td>
					</tr>
					
				</table><br><br>
				<input type="submit" value="See Details"/>	
			</form>
		</div>
	</main>
</body>
</html>
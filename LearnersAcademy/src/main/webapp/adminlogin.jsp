<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<main>
		<br>
		<br>
		<div align="center">
			<p style='font-size:30px'><b><u> Welcome to Learner's Academy </u></b></p>
			<p><b>Login Here!</b></p>
			<form action="LoginController" method="post">
				<table>
					<tr>
						<td><b>Username</b></td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td><b>Password</b></td>
						<td><input type="password" name="password" /></td>
					</tr>
				</table>
				<br>
				<input type="submit" value="Login" />
			</form>
		</div>
	</main>
</body>
</html>
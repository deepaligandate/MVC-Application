<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<form action="validate.jsp " method="post">
	User Name : <input type="text" name="userName"></br>
	
	Password   : <input type="password" name="userPass"><br>
	
	<a href="reg_form.jsp">Sign Up</a>
	
	<input type="submit" value="login">
	
	<%=(request.getParameter("error_msg")!=null)? request.getParameter("error_msg"):"" %>
	</form>
</body>
</html>

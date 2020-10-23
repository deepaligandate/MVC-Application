<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" href="logout.jsp">Logout</a>
  </li>
  
</ul>

<h1>

	<p><b>Welcome:</b>
   <%= request.getParameter("userName")%>
   <%= request.getParameter("fullName")%>
	  
	
</h1>
	
	


</body>
</html>
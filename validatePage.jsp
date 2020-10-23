<%@page import ="com.service.UserService" %>
<%@page import ="com.service.UserServiceImple" %>

<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>

<jsp:setProperty property="*" name="user"/>

<% 
	UserService userservice = new UserServiceImple();
	boolean b= userservice.login(user);
	if(b){
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.include(request, response);
	}
		else{
		response.sendRedirect("login.jsp?error_msg = wrong credentials");
	}
		
%>
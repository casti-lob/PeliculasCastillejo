<%@page import="com.jacaranda.UserControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.jacaranda.Users" %>
    <%@page import="com.jacaranda.ConnectionDAO" %>
    <%@page import="com.jacaranda.UserControl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String nick = request.getParameter("nick");
		String password=request.getParameter("password");
		Users user = UserControl.getUser(nick, password);
		/* user.setName(nick);
		user.setId(password); */
		
		if(UserControl.validUser(user.getId())==true){
			HttpSession sesion = request.getSession();
			sesion.setAttribute("login","true");
			sesion.setAttribute("user",user);
		
		
	%>
		<jsp:forward page="Main.jsp"></jsp:forward>
		
	<%
		}else{%>
			<jsp:forward page="Error.jsp"></jsp:forward>
		<%}
	%>
</body>
</html>
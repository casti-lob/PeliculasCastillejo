<%@page import="com.jacaranda.ConnectionDAO"%>
<%@page import="com.jacaranda.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String nick = request.getParameter("nick");
		String password= request.getParameter("password");
		Users user = new Users();
		user.setNick(nick);
		user.setNick(password);
		
		if(ConnectionDAO.validUser(user.getPassword())==true){
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
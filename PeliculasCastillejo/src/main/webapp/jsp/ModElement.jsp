<%@page import="com.jacaranda.ElementControl"%>
<%@page import="com.jacaranda.Element"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<% 
		int idElement=Integer.parseInt(request.getParameter("id"));
		Element element= ElementControl.getElement(idElement);
		%>
			<h1>Modificación de artículo: <%=element.getName_ele()%></h1>
			<form action="../AddElementServlet" method="post" enctype="multipart/form-data">
				<p>
					Nombre artículo
					<input name="name" type="text" placeholder="<%=element.getName_ele() %>" >
				</p>
				<p>
					Descripción artículo
					<input name="description" type="text" placeholder="<%=element.getDescription_ele() %>">
				</p>
				<p>
					Precio del artículo
					<input name="price" type="number" placeholder="<%=element.getPrice() %>">
				</p>
				
				<button>Modificar Artículo</button><br>
				<a href='../LoginServlet"'>Atras</a>
			</form>
			
		</div>
</body>
</html>
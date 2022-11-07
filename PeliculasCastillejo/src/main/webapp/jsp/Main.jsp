<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.jacaranda.Category"%>
    <%@page import="com.jacaranda.CategoryControl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center" >
		<table >
			<tr>
				<td>
					Cerrar sesión
				</td>
				<td>
					<a href="../html/Index.html"><img width=100px src="../images/closeSession.png" ></a>
				</td>
			</tr>
		</table>
	
	</div>
		<div align="center">
			<table>
			<%
			
			Set<Category> category = CategoryControl.getCategoryC();
			StringBuilder text = new StringBuilder();
			
			for(Category i: category){

				text.append("<tr><td>"+i.getName()+"</td></tr>");
				
				
			}
			
			%>
			<%=text.toString()%>
		</table>
	</div>
</body>
</html>
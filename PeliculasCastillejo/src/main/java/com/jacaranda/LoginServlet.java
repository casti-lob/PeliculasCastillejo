package com.jacaranda;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		//Datos del formulario y creaciï¿½n de usuario
		String nick = request.getParameter("nick");
		String password=request.getParameter("password");
		//Encriptamos contraseï¿½a
		String passwordEndcript = DigestUtils.md5Hex(password);
		Users user = UserControl.getUser(nick, passwordEndcript);
		
		if(user !=null){
			//Validamos o no al usuario
			if(UserControl.validUser(user.getId())==true){	
				HttpSession sesion = request.getSession();
				sesion.setAttribute("login","true");
				sesion.setAttribute("user",user.getName());
				PrintWriter out = response.getWriter();
				out.println("<html><body>");
				//Bienvenida al usuario
				out.println("<h1>Bienvenido "+user.getName()+" </h1>");
				out.println("<h1>Lista de artículos   <a href='/PeliculasCastillejo/html/AddElement.html'>Añadir artículo</a>");
				//Tabla de artículos
				
				out.println("<table border=\"1px\">\r\n"
						+ "    <tr>\r\n"
						+ "        <td>\r\n"
						+ "            Nombre\r\n"
						+ "        </td>\r\n"
						+ "        <td>\r\n"
						+ "            Descripción\r\n"
						+ "        </td>\r\n"
						+ "        <td>\r\n"
						+ "            Precio\r\n"
						+ "        </td>\r\n"
						+ "        \r\n"
						+ "        <td colspan=2>Acciones</td></tr>");
				
				List<Element> element = ElementControl.getListElement();
				for(Element i: element) {
					out.println("<tr><td>"+i.getName_ele()+"</td>\r\n"
							+ "<td>"+i.getDescription_ele()+"</td>\r\n"
							+ "<td>"+i.getPrice()+"</td>\r\n"
							+"<td> <a href='/PeliculasCastillejo/jsp/ModElement.jsp?id="+i.getCode_ele()+"'>Modificar</a></td>\r\n"
							+"<td> <a href='/PeliculasCastillejo/jsp/DeletElement.jsp?id="+i.getCode_ele()+"'>Eliminar</a></td></tr>");
					
				}
				out.println("</table>");
				out.println("<a href='/PeliculasCastillejo/html/Index.html'>Atras</a>");
				out.println("</body></html>");
			}}else{
				PrintWriter out = response.getWriter();
				out.println("<html><body>");
				out.println("<h1>Error al loguearte</h1>");
				out.println("<a href='/PeliculasCastillejo/html/Index.html'>Atras</a>");
				out.println("</body></html>");
			}
	}

}

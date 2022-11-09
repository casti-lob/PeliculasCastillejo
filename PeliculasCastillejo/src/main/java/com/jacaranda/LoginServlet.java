package com.jacaranda;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		doGet(request, response);
		response.setContentType("text/html");
		//Datos del formulario y creación de usuario
		String nick = request.getParameter("nick");
		String password=request.getParameter("password");
		Users user = UserControl.getUser(nick, password);
		
		if(user !=null){
			if(UserControl.validUser(user.getId())==true){	
				HttpSession sesion = request.getSession();
				sesion.setAttribute("login","true");
				sesion.setAttribute("user",user);
				PrintWriter out = response.getWriter();
				out.println("<html><body>");
				out.println("<h1>Lista de categorias</h1>");
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

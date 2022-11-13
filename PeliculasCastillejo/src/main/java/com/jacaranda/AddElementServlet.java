package com.jacaranda;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig//anotación para permitir recivir archivos
@WebServlet("/AddElementServlet")
public class AddElementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String pathFiles="/PeliculasCastillejo/src/main/webapp/img";
    private File uploads = new File(pathFiles);
    private String[] extens= {".png",".jpg"};
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddElementServlet() {
        super();
       
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
		
		String nameElement = request.getParameter("name");
		String descriptionElement=request.getParameter("description");
		int price=Integer.parseInt(request.getParameter("price")) ;
		Part part = request.getPart("file");
		if(part!=null) {
			if(isExtension(part.getSubmittedFileName(), extens)) {
				String photo =saveFile(part, uploads);
			}
		}
		Element e = new Element();
		try {
			e.setName_ele(nameElement);
			e.setDescription_ele(descriptionElement);
			e.setPrice(price);
			PrintWriter out = response.getWriter();
			out.println("<h1>Elemento Creado</h1>");
		} catch (ElementException e1) {
			PrintWriter out = response.getWriter();
			out.println("<h1>Error</h1>");
			out.println("<h1>"+e1.getMessage()+"</h1>");
			
		}
		
	}
	//Guardamos la imagen
	private String saveFile(Part part, File pathUploads) {
		String pathAbsolute="";
		
		try {
			Path path = Paths.get(part.getSubmittedFileName());
			String fileName = path.getFileName().toString();
			InputStream input = part.getInputStream();
			
			if(input!=null) {
				File file = new File(pathUploads,fileName);
				pathAbsolute= file.getAbsolutePath();
				Files.copy(input, file.toPath());
			}
		} catch (Exception e) {

			e.getMessage();
		}
		return pathAbsolute;
	}
	//Comprobamos que la extensión es correcta
	private boolean isExtension(String fileName, String[] extens) {
		boolean valid = false;
		for(String i : extens) {
			if(fileName.toLowerCase().endsWith(i)) {
				valid= true;
			}
		}
		return valid;
	}

}

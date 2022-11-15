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

@WebServlet("/AddElementServlet")
public class AddElementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Category c = new Category();
		String nameElement = request.getParameter("name");
		String descriptionElement=request.getParameter("description");
		int price=Integer.parseInt(request.getParameter("price")) ;
		String category= request.getParameter("category");
		Element element= new Element();
		element.setName_ele(nameElement);
		element.setDescription_ele(descriptionElement);
		element.setPrice(price);
		element.setCateg(c);
		if(ElementControl.saveElement(null))
		
		
		
	}
	
}

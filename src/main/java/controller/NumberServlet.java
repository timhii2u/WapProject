package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import app.Numerals;
import data.Mock;

@WebServlet("/numberList")
public class NumberServlet extends HttpServlet {
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
	    	try {
	    		
	    		PrintWriter writer = response.getWriter();
	    		Mock data = new Mock();
		        List<Numerals> numbersList = data.numberList();

		       // request.setAttribute("numerals",numbersList);
		       // RequestDispatcher view = request.getRequestDispatcher("numbers.jsp");
		       // view.forward(request,response);
	    		
		        String jsonList = new Gson().toJson(numbersList);
		        response.setContentType("application/json");
		        response.setCharacterEncoding("UTF-8");
		        writer.write(jsonList);
		     
	    	}catch(Exception e) {
	    		
	    	}
	    	
	    	
	    }

}

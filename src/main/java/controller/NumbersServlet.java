package controller;

import app.Alphabet;
import app.Numbers;
import data.Mock;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/numbers")
public class NumbersServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Mock data = new Mock();
        ArrayList<Numbers> numbersList = data.retrieveNumbersList();

        request.setAttribute("numbersList",numbersList);
        RequestDispatcher view = request.getRequestDispatcher("numbers.jsp");
        view.forward(request,response);
    }
}

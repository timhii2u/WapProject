package controller;

import app.Alphabet;
import app.Numbers;
import com.google.gson.Gson;
import data.Mock;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/shade")
public class ShadeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Mock data = new Mock();

        ArrayList<Alphabet> imagesList = data.retrieveAlphabetList();

        PrintWriter out = response.getWriter();

        String JSONimages;
        JSONimages = new Gson().toJson(imagesList);
        System.out.println(JSONimages);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.write(JSONimages);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Mock data = new Mock();
        ArrayList<Alphabet> imagesList = data.retrieveAlphabetList();


        request.setAttribute("images",imagesList);
        RequestDispatcher view = request.getRequestDispatcher("coloring.jsp");
        view.forward(request,response);
    }
}

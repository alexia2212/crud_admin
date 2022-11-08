package com.example.reporteincidenciasadmin.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletInicio", urlPatterns = {"","/ServletInicio"})
public class ServletInicio extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher;
        if(action==null){
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            view.forward(request,response);
        }
        else{
            switch (action){
                case "registro":
                    requestDispatcher = request.getRequestDispatcher("registrar.jsp");
                    requestDispatcher.forward(request,response);
                    break;
                case "usuario":
                    requestDispatcher = request.getRequestDispatcher("user.jsp");
                    requestDispatcher.forward(request,response);
                    break;
                case "seguridad":
                    requestDispatcher = request.getRequestDispatcher("seguridad.jsp");
                    requestDispatcher.forward(request,response);
                    break;
            }
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package com.example.f34tur3s.controller;

import com.example.f34tur3s.service.EventService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "helloServlet" , value = "/helloServlet")
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set the response content type
        response.setContentType("text/html");

        // Get the PrintWriter to write the response
        PrintWriter out = response.getWriter();

        // Write the HTML content to the response
        out.println("<html>");
        out.println("<head><title>Hello, World Servlet</title></head>");
        out.println("<body>");
        out.println("<h1>Hello, World!</h1>");
        out.println("</body>");
        out.println("</html>");
    }
}


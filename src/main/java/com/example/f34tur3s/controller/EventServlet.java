package com.example.f34tur3s.controller;

import com.example.f34tur3s.service.EventService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

//@WebServlet(name = "EventServlet", value = "/event")

public class EventServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("hi tarek !");

//        String msg = "Le message";
//        req.setAttribute("msg",msg);
//
//        getServletContext().getRequestDispatcher("/WEB-INF/pageEvent.jsp").forward(req, resp);

    }
}

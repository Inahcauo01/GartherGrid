package com.example.f34tur3s.controller;

import com.example.f34tur3s.service.EventService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


//@WebServlet(name = "pageOne" , value = "", loadOnStartup = 1)
@WebServlet(name = "EventServlet", value = "/event", loadOnStartup = 1)

public class EventServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
        EventService eventService = new EventService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        resp.getWriter().println("hi tarek !");
    }
}

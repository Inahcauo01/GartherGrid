package com.example.f34tur3s.controller;

import com.example.f34tur3s.service.EventService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet(name ="InitialServlet", value ="/InitialServlet", loadOnStartup = 1)
public class InitialServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        EventService eventService = new EventService();
    }
}

package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.service.CategoryService;
import com.example.f34tur3s.service.CommentService;
import com.example.f34tur3s.service.EventService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "events", value = {"/events", "/deleteEvent"})

public class EventServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.getWriter().println("hi tarek !");
        String action = req.getServletPath();
        if (action.equalsIgnoreCase("/deleteEvent")){
            doDelete(req, resp);
        }else {
            List<Event> events = new EventService().getAllEvents();

            for (Event event : events) {
                Category category = event.getCategory();
                if (category != null) {
                    event.setCategory(category);
                }
            }
            req.setAttribute("events", events);

            List<Category> categories = new CategoryService().getAllCategories();
            req.setAttribute("categories", categories);

            req.getRequestDispatcher("/WEB-INF/pageEvent.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String dateString = req.getParameter("date");
        Date date = null;
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            date = dateFormat.parse(dateString);
        } catch (ParseException e) {
            System.err.println("erreur lors de la recuperation de la date : "+e.getMessage());
        }

        String location = req.getParameter("location");
        String description = req.getParameter("description");
        Long categorie_id = Long.valueOf(req.getParameter("category_id"));

        CategoryService categoryService = new CategoryService();
        Category category = categoryService.findCategory(categorie_id);

        Event event = new Event(name, date, location, description, category);
//        event.setCategory(category);

        Event e = new EventService().createEvent(event);

        List<Event> events = new EventService().getAllEvents();
        for (Event ev: events) {
            Category c = ev.getCategory();
            if (c != null){
                ev.setCategory(c);
            }
        }
        req.setAttribute("events", events);

        List<Category> categories = new CategoryService().getAllCategories();
        req.setAttribute("categories", categories);

        getServletContext().getRequestDispatcher("/WEB-INF/pageEvent.jsp").forward(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long eventID = Long.valueOf(req.getParameter("id"));

        EventService eventService = new EventService();
        eventService.findEvent(eventID);
        Event e = eventService.deleteEvent(eventID);
        String s ;
        if (e != null){
            s = "sup succés";
        }else {
            s = "sup echoué";
        }
        req.setAttribute("msg", s);
        resp.sendRedirect("events");
    }
}

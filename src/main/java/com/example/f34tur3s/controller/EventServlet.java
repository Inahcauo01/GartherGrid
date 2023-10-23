package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.User;
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
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@WebServlet(name = "events", value = {"/events", "/deleteEvent"})

public class EventServlet extends HttpServlet {
    EventService eventService;
    @Override
    public void init() throws ServletException {
        eventService = new EventService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.getWriter().println("hi tarek !");
        String action = req.getServletPath();
        if (action.equalsIgnoreCase("/deleteEvent")){
            doDelete(req, resp);
        }else {
            String searchDateStr = req.getParameter("searchDate");
            String searchName = req.getParameter("searchName");
            String searchCategory = req.getParameter("searchCategory");
            String searchLocation = req.getParameter("searchLocation");

            List<Event> events;
            if (searchDateStr != null || searchName != null || searchCategory != null || searchLocation != null) {
                Date searchDate = null;
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                if (searchDateStr != null && !searchDateStr.isEmpty()) {
                    try {
                        searchDate = dateFormat.parse(searchDateStr);
                    } catch (ParseException e) {
                        System.err.println("Error parsing date: " + e.getMessage());
                    }
                }
                events = eventService.searchEvents(searchDate, searchName, searchCategory, searchLocation);
            } else {
                events = eventService.getAllEvents();
            }

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
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String dateString = req.getParameter("date");
        Date date = null;
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String timeString = req.getParameter("eventTime");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
        LocalTime parsedTime = LocalTime.parse(req.getParameter("eventTime").trim(), formatter);
        Time time = Time.valueOf(parsedTime);

        Integer VIP = Integer.valueOf(req.getParameter("eventNbrVIP"));
        Integer standard  = Integer.valueOf(req.getParameter("eventNbrStandard"));

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

        User organizer = (User) req.getSession().getAttribute("user");
        Event event = new Event(name, date, time, location, description, standard, VIP, category, organizer);

        Event e = eventService.createEvent(event);

        List<Event> events = eventService.getAllEvents();
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

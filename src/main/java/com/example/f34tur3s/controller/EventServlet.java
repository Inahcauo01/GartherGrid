package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.repository.CategoryRepository;
import com.example.f34tur3s.repository.EventRepository;
import com.example.f34tur3s.service.EventService;
import com.example.f34tur3s.utils.EntityManagerUtil;
import jakarta.persistence.EntityManager;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManager em = EntityManagerUtil.getEntityManager();
        EventRepository eventRepository = new EventRepository(em);
        EventService eventService = new EventService(eventRepository);

        String name = req.getParameter("eventName");
        String description = req.getParameter("eventDescription");
        String dateString = req.getParameter("eventDate");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // Adjust the date format as needed
        Date date = null;

        try {
            date = dateFormat.parse(dateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String timeString = req.getParameter("eventTime");
        Time time = Time.valueOf(timeString);
        String location = req.getParameter("eventLocation");
        String image = req.getParameter("eventImage");
        String vipString = req.getParameter("eventNbrVIP");
        Integer VIP = Integer.parseInt(vipString);
        String standardString = req.getParameter("eventNbrStandard");
        Integer standard = Integer.parseInt(standardString);
        String categoryString = req.getParameter("eventCategory");
        Category category = CategoryRepository.findByName(em, categoryString);


        Event event = new Event(name, date, time, location, description, image, standard, VIP, category);
    }
}

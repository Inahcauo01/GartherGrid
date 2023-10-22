package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.CategoryRepository;
import com.example.f34tur3s.repository.EventRepository;
import com.example.f34tur3s.repository.UserRepository;
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
import java.sql.Date;
import java.util.List;

@WebServlet(urlPatterns = {"/events.jsp", ""} )

public class EventServlet extends HttpServlet {
    EventService eventService;
    @Override
    public void init() throws ServletException {
        super.init();
        EntityManager em = EntityManagerUtil.getEntityManager();
        EventRepository eventRepository = new EventRepository(em);
        eventService = new EventService(eventRepository);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Fetch data from the repository via the service
            List<Event> events = eventService.getAllEvents();

            System.out.println("Number of events retrieved: " + events.size());
            // setting data as an attribute
            System.out.println(events);
            req.setAttribute("events", events);

            // Forward to JSP page to display data
            req.getRequestDispatcher("/pages/dashbaord/events.jsp").forward(req, resp);
        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManager em = EntityManagerUtil.getEntityManager();
        EventRepository eventRepository = new EventRepository(em);
        EventService eventService = new EventService(eventRepository);

        String name = req.getParameter("eventName");
        String description = req.getParameter("eventDescription");
        Date date = null;
        String dateString = req.getParameter("eventDate");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // Adjust the date format as needed


        try {
            date = (Date) dateFormat.parse(dateString);
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
        User organizer = (User) req.getSession().getAttribute("user");

        Event event = new Event(name, date, time, location, description, image, standard, VIP, category, organizer);

        // Save the event to the database
        eventService.createEvent(event);

        // Redirect to the event list page or do whatever is needed
        resp.sendRedirect("/events.jsp");
    }
}

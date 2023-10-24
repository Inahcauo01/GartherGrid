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
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.Part;

import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet(value = "/events", name = "events")

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

//            System.out.println("Number of events retrieved: " + events.size());
            // setting data as an attribute
//            System.out.println(events);
            req.setAttribute("events", events);

            // Forward to JSP page to display data
            req.getRequestDispatcher("/dashbaord/pages/events.jsp").forward(req, resp);
        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String action = req.getParameter("action");
        System.out.println(action);

        EntityManager em = EntityManagerUtil.getEntityManager();
        EventRepository eventRepository = new EventRepository(em);
        EventService eventService = new EventService(eventRepository);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");

//        if ("edit".equals(action)) {
//            System.out.println("ediiiiiiiiit");
//            // Handle Edit Action
//            Long editEventId = Long.parseLong(req.getParameter("eventId"));
//            System.out.println(editEventId);
//            // Fetch the event data by eventId from your database
//            // Replace this with your actual code to retrieve the event data
//            Event event = eventService.getEventById(editEventId);
//
//            // Set the event data as a request attribute to populate the edit form
////            req.setAttribute("event", event);
//            String jsonResponse = convertEventToJson(event);
//
//            resp.setContentType("application/json");
//            resp.getWriter().write(jsonResponse);
//            // Forward to the JSP that displays the edit form
////            req.getRequestDispatcher("/pages/dashbaord/editEvent.jsp").forward(req, resp);
//        } else
            if ("Update".equals(action)) {
            System.out.println("updaaaaaaate");
            Long eventId = Long.parseLong(req.getParameter("eventId"));
            System.out.println(eventId);

            // Retrieve the edited event information from the form
            String newName = req.getParameter("eventName");
            String newDescription = req.getParameter("eventDescription");
            Date newDate = null;
            String newDateString = req.getParameter("eventDate");
            SimpleDateFormat newDateFormat = new SimpleDateFormat("yyyy-MM-dd");


            try {
                newDate = new Date(newDateFormat.parse(newDateString).getTime());
            } catch (ParseException e) {
                e.printStackTrace();
            }
            String newTimeString = req.getParameter("eventTime");
//            System.out.println(timeString + ":00");

            LocalTime parsedTime1 = LocalTime.parse(req.getParameter("eventTime").trim(), formatter);
            Time newTime = Time.valueOf(parsedTime1);
            String newLocation = req.getParameter("eventLocation");
            String newImage = req.getParameter("eventImage");
            String newVipString = req.getParameter("eventNbrVIP");
            Integer newVIP = Integer.parseInt(newVipString);
            String newStandardString = req.getParameter("eventNbrStandard");
            Integer newStandard = Integer.parseInt(newStandardString);
            String newCategoryString = req.getParameter("eventCategory");
            Category newCategory = CategoryRepository.findByName(em, newCategoryString);
            User organizer = new User();
            organizer.setId(1L);

            // Fetch the existing event from your database
            Event existingEvent = eventService.getEventById(eventId);

            if (existingEvent != null) {
                // Update the event data with the edited information
                existingEvent.setName(newName);
                existingEvent.setDescription(newDescription);
                existingEvent.setDate(newDate);
                existingEvent.setHour(newTime);
                existingEvent.setLocation(newLocation);
                existingEvent.setImage(newImage);
                existingEvent.setNbrVIP(newVIP);
                existingEvent.setNbrStandard(newStandard);
                existingEvent.setCategory(newCategory);
                existingEvent.setOrganizer(organizer);

                // Save the updated event in your database
                eventService.updateEvent(existingEvent);

                // Redirect to the events listing page or show a success message
                doGet(req, resp);
            }
            } else if ("delete".equals(action)) {
                System.out.println("deleeeeeeete");
                // Handle the delete action
                String deleteEventIdString = req.getParameter("eventId");
                Long deleteEventId = Long.parseLong(deleteEventIdString);


                // Load the event to be deleted
                Event event = eventService.getEventById(deleteEventId);

                if (event != null) {
                    // Delete the event from the database
                    eventService.deleteEvent(event);
                }
                doGet(req, resp);
            } else {
//                Part nameInput = req.getPart("name");
//                String name = nameInput.getName();
                String name = req.getParameter("eventName");
                String description = req.getParameter("eventDescription");
                Date date = null;
                String dateString = req.getParameter("eventDate");
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");


                try {
                    date = new Date(dateFormat.parse(dateString).getTime());
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                String timeString = req.getParameter("eventTime");
                System.out.println(timeString + ":00");
//                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
                LocalTime parsedTime = LocalTime.parse(req.getParameter("eventTime").trim(), formatter);
                Time time = Time.valueOf(parsedTime);
                String location = req.getParameter("eventLocation");



                String image = req.getParameter("eventImage");
                String vipString = req.getParameter("eventNbrVIP");
                Integer VIP = Integer.parseInt(vipString);
                String standardString = req.getParameter("eventNbrStandard");
                Integer standard = Integer.parseInt(standardString);
                String categoryString = req.getParameter("eventCategory");
                Category category = CategoryRepository.findByName(em, categoryString);
                User organizer1 = new User();
                organizer1.setId(1L);

                Event event = new Event(name, date, time, location, description, image, standard, VIP, category, organizer1);

                // Save the event to the database
                eventService.createEvent(event);

                // Redirect to the event list page or do whatever is needed
//        resp.sendRedirect("");
                doGet(req, resp);
            }
        }
    }

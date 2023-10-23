package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.Ticket;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.EventRepository;
import com.example.f34tur3s.service.EventService;
import com.example.f34tur3s.service.TicketService;
import com.example.f34tur3s.service.dto.ResponseDTO;
import com.example.f34tur3s.utils.EntityManagerUtil;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ticket", value = {"/reservation-ticket"})
public class TicketServlet extends HttpServlet {
    EventService eventService;

    @Override
    public void init() throws ServletException {
        EntityManager em = EntityManagerUtil.getEntityManager();
        EventRepository eventRepository = new EventRepository(em);
        eventService = new EventService(eventRepository);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id_event = Long.valueOf(req.getParameter("id"));
        Event event = eventService.getEventById(id_event);
        req.setAttribute("event",event);
        User user = (User) req.getSession().getAttribute("user");
        Ticket ticket = new Ticket();
        ticket.setEvent(event);
        ticket.setUser(user);
        TicketService reservationService = new TicketService();
        ResponseDTO response = reservationService.insertTicketService(ticket);
    }

    protected void reservation(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer quantity = Integer.valueOf(req.getParameter("number-ticket"));
        User user = (User) req.getSession().getAttribute("user");
        Long id_event = Long.valueOf(req.getParameter("id"));
        Event event = eventService.getEventById(id_event);

        //Ticket
        Ticket ticket = new Ticket(quantity, event, user);
        TicketService ticketService = new TicketService();
        ticketService.insertTicketService(ticket);
        resp.sendRedirect("events");
    }
}

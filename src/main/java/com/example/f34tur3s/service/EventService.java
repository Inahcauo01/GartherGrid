package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.Ticket;
import com.example.f34tur3s.repository.EventRepository;
import com.example.f34tur3s.repository.TicketRepository;
import com.example.f34tur3s.service.dto.ResponseDTO;
import com.example.f34tur3s.service.dto.ResponseStatus;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

public class EventService {

    private final EventRepository eventRepository;








    public EventService(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }
    public List<Event> updateCertainEvents(List<Event> events){
        List<Event> updatedEvents = events.stream().filter(e->updatingEventsConditions(e)!=null).map(e -> {
            Event event = new Event();
            event.setDate(e.getDate());
            event.setName(e.getName());
            return event;
        }).collect(Collectors.toList());


        return updatedEvents;
    }

    public Integer updatingEventsConditions(Event event){
        Date today = new Date();
        Date eventDate = event.getDate();
        if (eventDate.before(today)){
            TicketRepository ticketRepository = new TicketRepository();
            List<Ticket> tickets = ticketRepository.getAllTicket();
            List<Ticket> eventsTickets = tickets.stream().filter(t -> t.getEvent().equals(event)).collect(Collectors.toList());
            if (eventsTickets.size()<20){
                return eventsTickets.size();
            }
        }
        return null;
    }
    public Event createEvent(Event event){
//        validate(event);
        return eventRepository.save(event);
    }

    public List<Event> getAllEvents(){
        return eventRepository.findAll();
    }

    public Event getEventById(Long id){
        return eventRepository.find(id);
    }

    public Event updateEvent(Event event){
        return eventRepository.update(event);
    }

    public Event deleteEvent(Event event){
        return eventRepository.delete(event);
    }

    private void validate(Event event){
        Date today = new Date();
        if (event.getName().isBlank() || event.getLocation().isBlank() || event.getDescription().isBlank()){
            throw new IllegalArgumentException("All fields needed");
        }
        if (event.getDate().before(today)){
            throw new IllegalArgumentException("Date not valid");
        }
    }
}
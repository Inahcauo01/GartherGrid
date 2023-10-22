package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.repository.EventRepository;

import java.util.List;

public class EventService {

    private final EventRepository eventRepository;

    public EventService() {
        this.eventRepository = new EventRepository();
    }

    public List<Event> getAllEvents() {
        return eventRepository.getAllEvents();
    }

    public Event findEvent(Long eventID){
        return eventRepository.findEvent(eventID);
    }

    public Event createEvent(Event event){
        return eventRepository.save(event);
    }

    public Event deleteEvent(Long eventID) {
        return eventRepository.deleteEvent(eventID);
    }
}

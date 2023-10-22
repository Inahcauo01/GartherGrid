package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.repository.EventRepository;

import java.util.Date;
import java.util.List;

public class EventService {

    private final EventRepository eventRepository;

    public EventService(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }

    public Event createEvent(Event event){
//        validate(event);
        System.out.println("cc");
        return eventRepository.save(event);
    }

    public List<Event> getAllEvents(){
        return eventRepository.findAll();
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

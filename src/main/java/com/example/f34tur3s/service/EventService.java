package com.example.f34tur3s.service;

import com.example.f34tur3s.repository.EventRepository;

public class EventService {

    private final EventRepository eventRepository;

    public EventService() {
        this.eventRepository = new EventRepository();
    }
}

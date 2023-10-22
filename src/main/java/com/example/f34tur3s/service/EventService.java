package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.repository.EventRepository;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

//    public List<Event> searchEvents(Date searchDate, String searchCategory, String searchLocation) {
//        String query = "SELECT e FROM Event e WHERE 1=1";
//        if (searchDate != null)
//            query += " AND e.date = :searchDate";
//        if (searchCategory != null)
//            query += " AND e.category_id = :searchCategory";
//        if (searchLocation != null)
//            query += " AND e.location = :searchLocation";
//        return eventRepository.customQuery(query);
//    }

    public List<Event> searchEvents(Date searchDate, String searchName, String searchCategory, String searchLocation) {
        String query = "SELECT e FROM Event e WHERE 1=1";
        Map<String, Object> parameters = new HashMap<>();

        if (searchDate != null) {
            query += " AND e.date = :searchDate";
            parameters.put("searchDate", searchDate);
        }
        if (searchName != null && !searchName.isEmpty()) {
            query += " AND e.name LIKE :searchName";
            parameters.put("searchName", "%" + searchName + "%");
        }
        if (searchLocation != null  && !searchLocation.isEmpty()) {
            query += " AND e.location LIKE :searchLocation";
            parameters.put("searchLocation", "%" + searchLocation + "%");
        }
        if (searchCategory != null) {
            query += " AND e.category.id = :searchCategory";
            parameters.put("searchCategory", Long.valueOf(searchCategory));
        }

        return eventRepository.customQuery(query, parameters);
    }

}

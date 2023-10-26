package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.Role;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.EventRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;


import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.IllegalFormatFlagsException;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;

class EventServiceTest {

    EventService eventService;
    EventRepository eventRepository;
    @BeforeEach
    void setup(){
        eventRepository = Mockito.mock(EventRepository.class);
        eventService = new EventService(eventRepository);
    }


    @Test
    void test_create_with_valid_dateIllegalFormatFlagsExceptionException() throws ParseException {
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        Date date_event = dateFormat.parse("2023-11-10");
//        Time time_event = Time.valueOf("02:20:10");
        User user = new User("saad moumou", "saad", "momo", "momosaad@gmail.com", "picture1", new Role(1, "user"));
        Category categorie = new Category("music", "test", "picture_categorie");
        Event event1 = new Event("Event 1", null, null, "Rabat boulevard 1", "description 1", "picture", 12, 20, categorie, user);
        Event event2 = new Event("Event 1", null, null, "Rabat boulevard 1", "description 1", "picture", 12, 20, categorie, user);

        Mockito.when(eventRepository.save(event1)).thenReturn(event2);
        assertThrows(IllegalArgumentException.class,() -> eventService.createEvent(event1), "You must be validate date before save!");
    }

    @Test
    void test_create_with_valid_date_not_before_date_nowIllegalFormatFlagsExceptionException() throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date_event = dateFormat.parse("2023-09-10");
        Time time_event = Time.valueOf("02:20:10");
        User user = new User("saad moumou", "saad", "momo", "momosaad@gmail.com", "picture1", new Role(1, "user"));
        Category categorie = new Category("music", "test", "picture_categorie");
        Event event1 = new Event("Event 1", date_event, time_event, "Rabat boulevard 1", "description 1", "picture", 12, 20, categorie, user);
        Event event2 = new Event("Event 1", date_event, time_event, "Rabat boulevard 1", "description 1", "picture", 12, 20, categorie, user);

        Mockito.when(eventRepository.save(event1)).thenReturn(event2);
        assertThrows(IllegalArgumentException.class,() -> eventService.createEvent(event1), "You must be valid date don't be before date today");
    }

}
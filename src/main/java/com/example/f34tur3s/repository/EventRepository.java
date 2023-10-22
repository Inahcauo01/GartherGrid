package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.Event;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.List;

public class EventRepository {
    private final EntityManagerFactory entityManagerFactory;
    public EventRepository(){
        entityManagerFactory= Persistence.createEntityManagerFactory("my-persistence-unit");
    }

    public List<Event> getAllEvents() {
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.createQuery("SELECT e FROM Event e", Event.class).getResultList();
    }

    public Event save(Event event){
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(event);
        entityManager.getTransaction().commit();
        entityManager.close();
        return event;
    }


    public Event findEvent(Long eventID) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();
        Event event = em.find(Event.class, eventID);
        if (event != null) {
            em.remove(event);
        }
        em.getTransaction().commit();
        em.close();
        return event;
    }

    public Event deleteEvent(Long eventID) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();
        Event event = em.find(Event.class, eventID);
        if (event != null) {
            em.remove(event);
        }
        em.getTransaction().commit();
        em.close();
        return event;
    }
}

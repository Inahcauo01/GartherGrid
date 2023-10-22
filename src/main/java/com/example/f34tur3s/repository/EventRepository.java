package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.Event;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

import java.util.List;
import java.util.Map;

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

//    public List<Event> customQuery(String query, Map<String, Object> parameters) {
//        EntityManager em = entityManagerFactory.createEntityManager();
//        em.getTransaction().begin();
//        Query customQuery = em.createQuery(query, Event.class);
////        Query customQuery = em.createQuery("SELECT e FROM Event e WHERE 1=1 AND location = 'Tangier'", Event.class);
//        List<Event> resultList = customQuery.getResultList();
//        em.getTransaction().commit();
//        em.close();
//        return resultList;
//    }
    public List<Event> customQuery(String query, Map<String,Object> parameters) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();

        Query customQuery = em.createQuery(query, Event.class);
        if (parameters != null) {
            for (String parameterName : parameters.keySet()) {
                customQuery.setParameter(parameterName, parameters.get(parameterName));
            }
        }
        List<Event> resultList = customQuery.getResultList();
        em.getTransaction().commit();
        em.close();
        return resultList;
    }
}

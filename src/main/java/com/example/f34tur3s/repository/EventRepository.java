package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.Event;
import com.mysql.cj.ServerVersion;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;

import java.util.List;

public class EventRepository {
    private final EntityManager em;
    public EventRepository(EntityManager em){
        this.em = em;
    }

    public Event save(Event event){
        em.getTransaction().begin();
        em.persist(event);
        em.getTransaction().commit();
        return event;
    }

    public void update(Event event){
        em.getTransaction().begin();
        em.merge(event);
        em.getTransaction().commit();
    }

    public Event delete(Event event) {
        em.getTransaction().begin();

        if (event.getId() != null) {
            em.remove(event);
        }

        em.getTransaction().commit();

        return event;
    }

    public Event find(long id){
        return em.find(Event.class, id);
    }

    public List<Event> findAll(){
        String jpqlQuery = "SELECT e FROM Event e";
        TypedQuery<Event> query = em.createQuery(jpqlQuery, Event.class);
        return query.getResultList();
    }

}

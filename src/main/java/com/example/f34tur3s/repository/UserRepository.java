package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class UserRepository {
    private final EntityManagerFactory entityManagerFactory;

    public UserRepository() {
        entityManagerFactory = Persistence.createEntityManagerFactory("my-persistence-unit");
    }

    public User findUser(Long id) {
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.find(User.class, id);
    }
}

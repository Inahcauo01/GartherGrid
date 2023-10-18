package com.example.f34tur3s.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class EntityManagerUtil {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("my-persistence-unit");
    private static EntityManager entityManager;

    private EntityManagerUtil() {}

    public static EntityManager getEntityManager() {
        if (entityManager == null || !entityManager.isOpen()) {
            entityManager = emf.createEntityManager();
        }
        return entityManager;
    }

    public static void closeEntityManager() {
        if (entityManager != null && entityManager.isOpen()) {
            entityManager.close();
        }
    }
}

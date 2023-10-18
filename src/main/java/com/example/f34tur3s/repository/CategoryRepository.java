package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.Category;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.List;

public class CategoryRepository {
    private final EntityManager em;
    public CategoryRepository(EntityManager em){
        this.em = em;
    }

    public Category save(Category category){
        em.getTransaction().begin();
        em.persist(category);
        em.getTransaction().commit();
        return category;
    }

    public void update(Category category){
        em.getTransaction().begin();
        em.merge(category);
        em.getTransaction().commit();
    }

    public Category find(long id){
        return em.find(Category.class, id);
    }

    public List<Category> findAll(){
        String jpqlQuery = "SELECT c FROM Category c";
        TypedQuery<Category> query = em.createQuery(jpqlQuery, Category.class);
        return query.getResultList();
    }

    public static Category findByName(EntityManager em, String categoryName) {
        String jpqlQuery = "SELECT c FROM Category c WHERE c.name = :name";
        TypedQuery<Category> query = em.createQuery(jpqlQuery, Category.class);
        query.setParameter("name", categoryName);
        return query.getSingleResult();
    }
}

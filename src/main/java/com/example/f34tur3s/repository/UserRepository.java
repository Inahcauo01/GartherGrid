package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.utils.EntityManagerUtil;
import jakarta.persistence.EntityManager;

import java.util.List;
import java.util.stream.Stream;

public class UserRepository {
    private final EntityManager entityManager;

    public UserRepository() {
        entityManager = EntityManagerUtil.getEntityManager();
    }

    public void save(User user) {
        entityManager.getTransaction().begin();
        entityManager.persist(user);
        entityManager.getTransaction().commit();
    }

    public Stream<User> findByEmail(String email) {
        Stream<User> userStream= entityManager.createQuery("SELECT u FROM User u WHERE u.email = :email")
                .setParameter("email", email).getResultStream();
        return userStream;
    }

    public User findById(Long id) {
        /*EntityManager entityManager = entityManagerFactory.createEntityManager();*/
        User user = entityManager.find(User.class, id);
       /* entityManager.close();*/
        return user;
    }


    public List<User> getAllUsers() {
        List<User> users = entityManager.createQuery("SELECT u FROM User u", User.class).getResultList();
        return users;
    }

}

package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

class UserServiceTest {

    private UserRepository userRepository;
    private UserService userService;

    @BeforeEach
    public void setUp() {
        userRepository = mock(UserRepository.class);
        userService = new UserService(userRepository);
    }

    @Test
    public void testRegisterWithValidUser() {
        User user = new User("john", "John", "Doe", "john@example.com", "password");

        when(userRepository.findByEmail(user.getEmail())).thenReturn(Stream.empty());

        assertDoesNotThrow(() -> userService.register(user));

    }

    @Test
    public void testRegisterWithExistingUser() {
        User user = new User("john", "John", "Doe", "john@example.com", "password");

        when(userRepository.findByEmail(user.getEmail())).thenReturn(Stream.of(user));

        UserAlreadyExistsException exception = assertThrows(UserAlreadyExistsException.class,
                () -> userService.register(user));

        assertEquals("this user already exists", exception.getMessage());
        ;
    }

    @Test
    public void testRegisterWithInvalidUser() {
        User user = new User("", "", "", "", "");

        IllegalArgumentException exception = assertThrows(IllegalArgumentException.class,
                () -> userService.register(user));

        assertEquals("Invalid data", exception.getMessage());

    }

}
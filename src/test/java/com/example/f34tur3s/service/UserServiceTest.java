package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Role;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

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
        Role role=new Role(1,"user");
        User user = new User("john", "John", "Doe", "john@example.com", "password",role);
        User insertedUser = new User("john", "John", "Doe", "john@example.com", "password",role);

        insertedUser.setId(1L);
        when(userRepository.findByEmail(user.getEmail())).thenReturn(Stream.empty());
        doNothing().when(userRepository).save(user);
        assertDoesNotThrow(()->userService.register(user));
    }

    @Test
    public void testRegisterWithExistingUser() {
        Role role=new Role(1,"user");
        User user = new User("john", "John", "Doe", "john@example.com", "password",role);

        when(userRepository.findByEmail(user.getEmail())).thenReturn(Stream.of(user));

        UserAlreadyExistsException exception = assertThrows(UserAlreadyExistsException.class,
                () -> userService.register(user));

        assertEquals("this user already exists", exception.getMessage());
    }

    @Test
    public void testRegisterWithInvalidUser() {
        Role role=new Role(1,"user");
        User user = new User("", "", "", "", "",role);

        IllegalArgumentException exception = assertThrows(IllegalArgumentException.class,
                () -> userService.register(user));

        assertEquals("Invalid data", exception.getMessage());

    }

}
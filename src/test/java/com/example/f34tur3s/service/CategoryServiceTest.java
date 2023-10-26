package com.example.f34tur3s.service;

import com.example.f34tur3s.repository.CategoryRepository;
import com.example.f34tur3s.repository.EventRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.*;

class CategoryServiceTest {
    CategoryService categoryService;
    CategoryRepository categoryRepository;

    @BeforeEach
    void setup(){
        categoryRepository = Mockito.mock(CategoryRepository.class);
        categoryService = new CategoryService(categoryRepository);
    }


}
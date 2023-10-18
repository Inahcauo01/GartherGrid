package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.UserRepository;
import com.example.f34tur3s.service.CategoryService;
import com.example.f34tur3s.service.CommentService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.*;
import java.util.List;
import java.util.UUID;

@WebServlet(urlPatterns = {"/categories", "/deleteCategory", "/editCategory"})
public class CategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        if (action.equalsIgnoreCase("/deleteCategory")){
            doDelete(req, resp);
        }else {
            CategoryService categoryService = new CategoryService();
            List<Category> categories = categoryService.getAllCategories();
            req.setAttribute("categories", categories);
            req.getRequestDispatcher("/WEB-INF/categories.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
    }
}

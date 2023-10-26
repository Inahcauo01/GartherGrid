package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.CommentRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.*;

class CommentServiceTest {

    CommentService commentService;
    CommentRepository commentRepository;


    @BeforeEach
    void setup(){
        commentRepository = Mockito.mock(CommentRepository.class);
        commentService = new CommentService(commentRepository);
    }

    @Test
    void testCreateComment(){
        Comment comment = new Comment();
        comment.setText("text comment ");
        comment.setReview(4);
//        comment.setUser(new User());

        Comment comment2 = new Comment();
        comment.setText("text comment ");
        comment.setReview(4);
        comment2.setId(1L);

        Mockito.when(commentRepository.createComment(comment)).thenReturn(comment2);

        assertThrows(IllegalArgumentException.class,() -> commentService.createComment(comment), "Event does not exist");

    }
}
package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.Role;
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
    void testCreateCommentNull() {
        Comment comment = null;
        assertThrows(IllegalArgumentException.class, () -> commentService.createComment(comment), "Comment cannot be null.");
    }

    @Test
    void testCreateCommentUserNull() {
        Comment comment = new Comment();
        comment.setText("text comment ");
        comment.setReview(4);
        comment.setUser(null);

        assertThrows(IllegalArgumentException.class, () -> commentService.createComment(comment), "User must not be null.");
    }

    @Test
    void testCreateCommentTextNull() {
        Comment comment = new Comment();
        comment.setText(null);
        comment.setReview(4);
        comment.setUser(new User("username","firstname","lastname","user@gmail.com","password", "image", new Role(1,"user")));

        assertThrows(IllegalArgumentException.class, () -> commentService.createComment(comment), "Comment content cannot be null.");
    }

    @Test
    void testCreateCommentTextEmpty() {
        Comment comment = new Comment();
        comment.setText("");
        comment.setReview(4);
        comment.setUser(new User("username","firstname","lastname","user@gmail.com","password", "image", new Role(1,"user")));

        assertThrows(IllegalArgumentException.class, () -> commentService.createComment(comment), "Comment content cannot be empty.");
    }

    @Test
    void testCreateCommentTextLengthExceeds() {
        Comment comment = new Comment();
        comment.setText("A".repeat(251));
        comment.setReview(4);
        comment.setUser(new User("username","firstname","lastname","user@gmail.com","password", "image", new Role(1,"user")));

        assertThrows(IllegalArgumentException.class, () -> commentService.createComment(comment), "Comment content exceeds the maximum allowed length.");
    }

    @Test
    void testCreateCommentReviewNotInRange() {
        Comment comment = new Comment();
        comment.setText("text comment ");
        comment.setReview(6);
        comment.setUser(new User("username","firstname","lastname","user@gmail.com","password", "image", new Role(1,"user")));

        assertThrows(IllegalArgumentException.class, () -> commentService.createComment(comment), "Review must be between 1 and 5.");
    }



//    @Test
//    void testCreateComment1(){
//        Comment comment = new Comment();
//        comment.setText("text comment ");
//        comment.setReview(4);
////        comment.setUser(new User());
//
//        Comment comment2 = new Comment();
//        comment.setText("text comment ");
//        comment.setReview(4);
//        comment2.setId(1L);
//
//        Mockito.when(commentRepository.createComment(comment)).thenReturn(comment2);
//        assertThrows(IllegalArgumentException.class,() -> commentService.createComment(comment), "User does not exist");
//    }
//
}
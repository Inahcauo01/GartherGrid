package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.CommentRepository;

import java.util.List;

public class CommentService {
    CommentRepository commentRepository;

    public CommentService() {
        commentRepository = new CommentRepository();
    }

    public CommentService(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }

    public List<Comment> getAllComments() {
        return commentRepository.getAllComments();
    }

    public Comment getCommentById(Long id) {
        return commentRepository.getCommentById(id);
    }

    public Comment createComment(Comment comment) {
        validateComment(comment);
        return commentRepository.createComment(comment);
    }

    public void updateComment(Comment comment) {
        validateComment(comment);
        commentRepository.updateComment(comment);
    }

    public void deleteComment(Long id) {
        commentRepository.deleteComment(id);
    }

    private void validateComment(Comment comment) {
        if (comment == null) {
            throw new IllegalArgumentException("Comment cannot be null.");
        }
        // testCreateCommentNull
        if (comment.getUser() == null) {
            throw new IllegalArgumentException("User must not be null.");
        }

        // testCreateCommentUserEmpty
        if (comment.getUser().equals(new User())){
            throw new IllegalArgumentException("User must not be empty.");
        }

        // testCreateCommentTextNull
        if (comment.getText() == null) {
            throw new IllegalArgumentException("Comment content cannot be null.");
        }

        // testCreateCommentTextEmpty
        if (comment.getText().trim().isEmpty()) {
            throw new IllegalArgumentException("Comment content cannot be empty.");
        }

        // testCreateCommentTextLengthExceeds
        if (comment.getText().length() > 250) {
            throw new IllegalArgumentException("Comment content exceeds the maximum allowed length.");
        }

        // testCreateCommentReviewNotInRange
        if (comment.getReview() > 5 || comment.getReview() < 1){
            throw new IllegalArgumentException("Review must be between 1 and 5 !");
        }
    }
}

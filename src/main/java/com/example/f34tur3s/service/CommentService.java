package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.repository.CommentRepository;

import java.util.List;

public class CommentService {
    CommentRepository commentRepository;

    public CommentService() {
        commentRepository = new CommentRepository();
    }

    public List<Comment> getAllComments() {
        return commentRepository.getAllComments();
    }

    public Comment getCommentById(Long id) {
        return commentRepository.getCommentById(id);
    }

    public Comment createComment(Comment comment) {
        return commentRepository.createComment(comment);
    }

    public void updateComment(Comment comment) {
        commentRepository.updateComment(comment);
    }

    public void deleteComment(Long id) {
        commentRepository.deleteComment(id);
    }
}

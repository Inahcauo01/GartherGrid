<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Comment Section</title>
</head>
<body>
<h1>Comment Section</h1>

<!-- Afficher la liste des commentaires -->
<table>
    <tr>
        <th>ID</th>
        <th>Comment Text</th>
        <th>Review</th>
        <th>Event</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${comments}" var="comment">
        <tr>
            <td>${comment.id}</td>
            <td>${comment.text}</td>
            <td>${comment.review}</td>
            <td>${comment.event.name}</td>
            <td><a href="deleteComment?id=${comment.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>


<!-- Formulaire pour ajouter un commentaire -->
<form action="comments" method="post">
    <label for="commentText">Comment:</label>
    <input type="text" name="commentText" id="commentText" required>
    <br>
    <label for="review">Review:</label>
    <input type="number" name="review" id="review" required>
    <br>
    <input type="submit" value="Add Comment">
</form>

<br>
<h6>edit</h6>
<form action="editComment" method="post">
    <input type="text" name="idComment" placeholder="id" required><br>
    <input type="text" name="newCommentText" placeholder="text" required><br>
    <input type="number" name="newReview" placeholder="rate" required><br>
    <input type="submit" value="Update Comment">
</form>
</body>
</html>

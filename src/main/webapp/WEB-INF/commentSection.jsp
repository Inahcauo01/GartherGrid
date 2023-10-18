<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comments</title>
</head>
<body>

<form action="comments" method="post">
    <div>
        <label for="comment">Comment : </label><br>
        <textarea name="commentText" id="comment" cols="30" rows="10"></textarea>
    </div>
    <button type="submit">Submit</button>
</form>
<h2>Listes commentaires</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Review</th>
        <th>Comment</th>
        <th>Username</th>
        <th>Action</th>
    </tr>

    <c:choose>
        <c:when test="${empty comments}">
            <tr>
                <td colspan="3">No comment</td>
            </tr>
        </c:when>
        <c:otherwise>
            <c:forEach items="${comments}" var="comment">
                <tr>
                    <td>${comment.id}</td>
                    <td>${comment.review}</td>
                    <td>${comment.text}</td>
                    <td>${comment.user.username}</td>
                    <td>
                        <a href="editComment?id=${comment.id}">Edit</a>
                        <a href="deleteComment?id=${comment.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>

</table>
</body>
</html>

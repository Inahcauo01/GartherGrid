<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Categories</title>
</head>
<body>

<form action="categories" method="post">
    <div>
        <label>Nom de categorie</label><br>
        <input type="text" name="name">

        <label>Description</label><br>
        <input type="text" name="description"><br>

<%--        <label>Image</label>--%>
<%--        <input type="file" name="image">--%>
    </div>
    <button type="submit">Submit</button>
</form>
<h2>Liste categories</h2>
<table>
    <tr>
        <th>ID</th>
        <th>name</th>
        <th>Description</th>
<%--        <th>Image</th>--%>
        <th>Action</th>
    </tr>

    <c:choose>
        <c:when test="${empty categories}">
            <tr>
                <td colspan="3">No category</td>
            </tr>
        </c:when>
        <c:otherwise>
            <c:forEach items="${categories}" var="category">
                <tr>
                    <td>${category.id}</td>
                    <td>${category.name}</td>
                    <td>${category.description}</td>
<%--                    <td>${category.image}</td>--%>
                    <td>
                        <a href="editCategory?id=${category.id}">Edit</a>
                        <a href="deleteCategory?id=${category.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>

</table>
</body>
</html>

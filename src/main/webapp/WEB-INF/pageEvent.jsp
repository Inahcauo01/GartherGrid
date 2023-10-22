<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page Event</title>
</head>
<body>
    <h1>Event</h1>
    <form action="events" method="post">
        <div>
            <label>name</label>
            <input type="text" name="name"><br>
            <label>date</label>
            <input type="datetime-local" name="date"><br>
            <label>location</label>
            <input type="text" name="location"><br>
            <label>description</label>
            <input type="text" name="description"><br>
            <label>name</label>
            <select name="category_id">
                <option>-- choisissez la categorie --</option>
                <c:forEach items="${categories}" var="category">
                    <option value="${category.id}">
                        ${category.name}
                    </option>
                </c:forEach>
            </select>
        </div>
        <button type="submit">Submit</button>
    </form>

<%--<h2>${msg}</h2>--%>
    <hr>
    <h1>Event Search</h1>
    <form action="events" method="get">
        <label for="searchName">Event's name :</label>
        <input type="text" id="searchName" name="searchName">

        <label for="searchDate">Date:</label>
        <input type="date" id="searchDate" name="searchDate">

        <label for="searchCategory">Category:</label>
        <select id="searchCategory" name="searchCategory">
            <option value="">Select a category</option>
            <c:forEach items="${categories}" var="category">
                <option value="${category.id}">
                        ${category.name}
                </option>
            </c:forEach>
        </select>

        <label for="searchLocation">Location:</label>
        <input type="text" id="searchLocation" name="searchLocation">

        <input type="submit" value="Search">
    </form>
    <hr>
    <h2>Listes des evenements</h2>
    <table style="width: 50vw">
        <tr>
            <th>ID</th>
            <th>name</th>
            <th>date</th>
            <th>location</th>
            <th>description</th>
            <th>category</th>
            <th>Action</th>
        </tr>

        <c:choose>
            <c:when test="${empty events}">
                <tr>
                    <td colspan="5">No event</td>
                </tr>
            </c:when>
            <c:otherwise>
                <c:forEach items="${events}" var="event">
                    <tr>
                        <td>${event.id}</td>
                        <td>${event.name}</td>
                        <td>${event.date}</td>
                        <td>${event.location}</td>
                        <td>${event.description}</td>
                        <td>${event.category.name}</td>
                        <td>
<%--                            <a href="editEvent?id=${event.id}">Edit</a>--%>
                            <a href="deleteEvent?id=${event.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>

    </table>
</body>
</html>

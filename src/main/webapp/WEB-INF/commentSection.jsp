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
</body>
</html>

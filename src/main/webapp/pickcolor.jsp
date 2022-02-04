<%--
  Created by IntelliJ IDEA.
  User: andrawesbatshoun
  Date: 2/4/22
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick a Color</title>
</head>
<body>
<form method="POST" action="/pickcolor">
    <label for="color">Choose your favorite color:</label>
    <input type="text" name="color" id="color">
    <input type="submit" value="Submit">
</form>
</body>
</html>

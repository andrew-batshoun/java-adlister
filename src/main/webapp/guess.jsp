<%--
  Created by IntelliJ IDEA.
  User: andrawesbatshoun
  Date: 2/4/22
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess the number</title>
</head>
<body>
<form method="POST" action="/guess">
  <label for="number">Pick a Number from 1-3</label>
  <input type="text" id="number" name="number">
  <input type="submit" value="Submit">
</form>
</body>
</html>

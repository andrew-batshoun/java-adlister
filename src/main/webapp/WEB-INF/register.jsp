<%--
  Created by IntelliJ IDEA.
  User: andrawesbatshoun
  Date: 2/10/22
  Time: 2:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a New User"/>
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Register with us!</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div>
            <label for="email">E-mail</label>
            <input id="email" name="email" class="form-control" type="email">
        </div>
        <div>
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" value="Submit">
    </form>
</div>
</body>
</html>

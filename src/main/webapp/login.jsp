<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrawesbatshoun
  Date: 2/3/22
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@ include file="partials/head.jsp" %>
    <style>
        body{
            background: lightblue;
        }

    </style>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>



<form class="form-inline" method="post" action="/login.jsp" style="display: flex; justify-content: center; margin-top: 2em"  >
    <div class="form-group mx-sm-3 mb-2">
        <label for="user" class="sr-only">Username</label>
        <input type="text" class="form-control" id="user" name="user" placeholder="Username">
    </div>
    <div class="form-group mx-sm-3 mb-2">
        <label for="pass" class="sr-only">Password</label>
        <input type="password" class="form-control" id="pass" name="pass" placeholder="Password">
    </div>
    <button type="submit" class="btn btn-warning mb-2">Login</button>
</form>

<c:choose>
    <c:when test="${param.user.equals('admin') && param.pass.equals('adminpass')}">
        <c:redirect url="profile.jsp"/>
    </c:when>
    <c:otherwise>
        <h4 style="text-decoration: underline">Submitted Values</h4>
        <p> Username: ${param.user} </p>
        <p> Password: ${param.pass}</p>
    </c:otherwise>
</c:choose>


<%@ include file="partials/jsScript.jsp" %>

</body>
</html>

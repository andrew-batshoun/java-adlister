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
</head>
<body>
<c:choose>
    <c:when test="${param.user.equals('admin') && param.pass.equals('adminpass')}">
        <c:redirect url="profile.jsp"/>
    </c:when>
    <c:otherwise>
        <p> Username: ${param.user} </p>
        <p> Password: ${param.pass}</p>
    </c:otherwise>
</c:choose>

<form method="post" action="/login.jsp">
    Username: <input type="text" id="user" name="user"><br>
    Password: <input type="password" id="pass" name="pass"><br>
    <input type="submit" value="Submit">
</form>

</body>
</html>

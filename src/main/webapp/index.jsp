<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<%@ include file="partials/head.jsp" %>
<style>
    body{
        background: lightblue;
    }
    h1{
        text-align: center;
        margin-top: 3em;
    }
</style>
<body>
<%@ include file="partials/navbar.jsp" %>

    <c:if test="true">
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test="false">
        <h1>single letter variable names are good</h1>
    </c:if>

<%@ include file="partials/jsScript.jsp" %>

</body>
</html>

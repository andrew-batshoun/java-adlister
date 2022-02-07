<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrawesbatshoun
  Date: 2/7/22
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of ads</title>
</head>
<body>
<c:forEach var="ad" items="${ads}">
    <div class="ads">
        <h2>${ad.title}</h2>
        <h4>${ad.description}</h4>
    </div>

</c:forEach>
</body>
</html>

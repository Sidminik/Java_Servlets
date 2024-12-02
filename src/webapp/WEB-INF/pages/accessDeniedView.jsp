<%@ page pageEncoding="UTF-8" contentType="text/html" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <style><%@ include file="../../style.css"%></style>
        <title>Доступ запрещен</title>
    </head>
    <body>
        <jsp:include page="../elements/_menu.jsp"></jsp:include>
        <br/><br/>
        <h3 style="color:red;"><%= request.getAttribute("errorMessage") %></h3>
    </body>
</html>

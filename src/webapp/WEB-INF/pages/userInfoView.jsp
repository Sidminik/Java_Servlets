<%@ page import="sidminik.data.Data" %>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <style><%@ include file="../../style.css"%></style>
        <title>Информация о пользователе</title>
    </head>
    <body>
        <jsp:include page="../elements/_menu.jsp"></jsp:include>
        <h3>Информация о пользователе:</h3>
        <table>
            <tr>
                <th>Имя</th>
                <td><%= session.getAttribute("name") %></td>
            </tr>
            <tr>
                <th>Пароль</th>
                <td><%= Data.getLoginInfo().get(session.getAttribute("name")) %></td>
            </tr>
            <tr>
                <th>Роль</th>
                <td><%= Data.getRoleInfo().get(session.getAttribute("name")) %></td>
            </tr>
        </table>
    </body>
</html>

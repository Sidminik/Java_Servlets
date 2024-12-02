<%@ page import="sidminik.data.Data" %>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <style><%@ include file="../../style.css"%></style>
        <title>Администратор</title>
    </head>

    <body>
        <jsp:include page="../elements/_menu.jsp"></jsp:include>
        <h3>Информационная страница администратора сайта</h3>
        <table>
            <tr>
                <th>Имя</th>
                <th>Пароль</th>
                <th>Роль</th>
            </tr>
            <tr>
                <td>guest</td>
                <td><%= Data.getLoginInfo().get("guest") %></td>
                <td><%= Data.getRoleInfo().get("guest") %></td>
            </tr>
            <tr>
                <td>user_1</td>
                <td><%= Data.getLoginInfo().get("user_1") %></td>
                <td><%= Data.getRoleInfo().get("user_1") %></td>
            </tr>
            <tr>
                <td>admin_1</td>
                <td><%= Data.getLoginInfo().get("admin_1") %></td>
                <td><%= Data.getRoleInfo().get("admin_1") %></td>
            </tr>
        </table>
    </body>
</html>

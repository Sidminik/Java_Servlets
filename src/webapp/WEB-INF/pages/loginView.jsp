<%@ page pageEncoding="UTF-8" contentType="text/html" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <style><%@ include file="../../style.css"%></style>
        <title>Вход на сайт</title>
    </head>
    <body>
        <jsp:include page="../elements/_menu.jsp"></jsp:include>
        <h3>Страница входа</h3>
        <p style="color: red;">${errorString}</p>
        <form method="POST" action="${pageContext.request.contextPath}/login">
            <input type="hidden" name="redirectId" value="${param.redirectId}" />
            <table>
                <tr>
                    <td>Имя пользователя</td>
                    <td><input type="text" name="userName" value= "${userName}" /> </td>
                </tr>
                <tr>
                    <td>Пароль</td>
                    <td><input type="password" name="password" value= "${password}" /> </td>
                </tr>
                <tr>
                    <td colspan ="2">
                        <input style="float: right" type="submit" value= "Войти" />
                    </td>
                </tr>
            </table>
        </form>
        <p style="color:red;">Возможен вход под следующими учетными записями:</p>
        <p>Имя пользователя: user_1/ Пароль: 123</p>
        <p>Имя пользователя: admin_1/ Пароль: 789</p>
    </body>
</html>

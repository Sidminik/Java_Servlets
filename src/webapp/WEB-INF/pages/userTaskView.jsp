<%@ page pageEncoding="UTF-8" contentType="text/html" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <style><%@ include file="../../style.css"%></style>
        <title>Пользователь</title>
    </head>
    <body>
        <jsp:include page="../elements/_menu.jsp"></jsp:include>
        <h3>Добрый день! Это защищенная страница пользователя!</h3>
        <table class="site">
            <tr>
                <td class="col_1">
                    <a href="${pageContext.servletContext.contextPath}/books/2005_Swing.pdf">
                        <img src="${pageContext.servletContext.contextPath}/img/swing.jpg" alt="" />
                    </a>
                </td>
                <td class="col_2">
                    <p> Портянкин И. Swing: Эффектные пользовательские интерфейсы, 2011. </p>
                </td>
            </tr>
            <tr>
                <td class="col_1">
                    <a href="${pageContext.servletContext.contextPath}/books/2020_Java_Concurrency_на_практике.pdf">
                        <img src="${pageContext.servletContext.contextPath}/img/concurrency.png" alt="" />
                    </a>
                </td>
                <td class="col_2">
                    <p>Гетц Б. и соавт. Java Concurrency на практике, 2020</p>
                </td>
            </tr>
            <tr>
                <td class="col_1">
                    <a href="${pageContext.servletContext.contextPath}/books/2022_Классические_задачи_на_Java.pdf">
                        <img src="${pageContext.servletContext.contextPath}/img/tasks.png" alt="" />
                    </a>
                </td>
                <td class="col_2">
                    <p>Копец Д. Классические задачи Computer Science на языке Java, 2022.</p>
                </td>
            </tr>
            <tr>
                <td class="col_1">
                    <a href="${pageContext.servletContext.contextPath}/books/2023_Прогрммируем_на_Java.pdf">
                        <img src="${pageContext.servletContext.contextPath}/img/java_2023.png" alt="" />
                    </a>
                </td>
                <td class="col_2">
                    <p>Лой М., Нимайер П., Лук Д. Программируем на Java, 2023.</p>
                </td>
            </tr>
        </table>
    </body>
</html>

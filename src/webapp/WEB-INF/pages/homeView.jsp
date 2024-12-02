<%@ page pageEncoding="UTF-8" contentType="text/html" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <style><%@ include file="../../style.css"%></style>
    <title>Образовательный сайт по IT-программированию</title>
  </head>

  <body>
    <jsp:include page="../elements/_menu.jsp"></jsp:include>
    <main>
      <h3>Представляем подборку образовательных ресурсов для программирования на языке Java</h3>
      <table class="site">
        <tr>
          <td class="col_1">
            <a href="https://docs.oracle.com/javase/tutorial/">
              <img src="${pageContext.servletContext.contextPath}/img/java.jpg" alt="" />
            </a>
          </td>
          <td class="col_2">
            <p>
              <a href="https://docs.oracle.com/javase/tutorial/"> docs.oracle.com/javase/tutorial </a> - это подборка
              практических руководств для программистов, которые хотят использовать язык программирования Java
              для создания приложений. Они включают сотни полных рабочих примеров и десятки уроков. Группы связанных
              уроков организованы в "маршруты".
            </p>
          </td>
        </tr>
        <tr>
          <td class="col_1">
            <a href="https://javarush.com">
              <img src="${pageContext.servletContext.contextPath}/img/javarush.png" alt="" />
            </a>
          </td>
          <td class="col_2">
            <p>
              <a href="https://javarush.com"> javarush.com </a> - это онлайн-курс по изучению Java-программирования
              c нуля с возможностью обучаться самостоятельно или с ментором. В нем — 1200 задач с проверкой решения
              в один клик, теория по основам Java и практика работы с современными технологиями и инструментами,
              а также мотивационные фичи: игры, опросы, мини-проекты и статьи об эффективном обучении и карьере Java‑девелопера.
            </p>
          </td>
        </tr>
        <tr>
          <td class="col_1">
            <a href="https://hyperskill.org">
              <img src="${pageContext.servletContext.contextPath}/img/hyperskill.webp" alt="" />
            </a>
          </td>
          <td class="col_2">
            <p>
              <a href="https://hyperskill.org"> hyperskill.org </a> - это совместный продукт JetBrains и Stepik.
              Представляет из себя англоязычную платформу, с помощью которой любой желающий может изучать программирование
              (в том числе - на языке Java)
              и получить необходимые знания для позиции junior-разработчика. Принцип обучения построен на практике:
              студентам предлагается самостоятельно создать приложение или игру из списка проектов,
              параллельно изучая необходимые для этого теоретические разделы.
            </p>
          </td>
        </tr>
        <tr>
          <td class="col_1">
            <a href="https://www.codewars.com">
              <img src="${pageContext.servletContext.contextPath}/img/codewars.svg" alt="" />
            </a>
          </td>
          <td class="col_2">
            <p>
              <a href="https://www.codewars.com"> codewars.com </a> - образовательное сообщество по компьютерному программированию.
              На платформе разработчики программного обеспечения обучаются задачам программирования,
              известным как ката. Эти дискретные упражнения по программированию тренируют ряд навыков
              на различных языках программирования (в том числе - на языке Java) и выполняются в онлайн-интегрированной среде разработки.
              На Codewars сообщество и продвижение задач геймифицировано, пользователи получают звания и почести
              за выполнение ката, внесение вклада в ката и качественные решения.
            </p>
          </td>
        </tr>
      </table>
    </main>
  </body>
</html>

<%@ page import="sidminik.data.Data" %>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>


<ul class="menu">
    <li class="<%=("home".equals(Data.getSelector()) ? "selected":"none")%>">
        <a href="${pageContext.request.contextPath}/index">Главная</a>
    </li>
    <li class="<%=("user".equals(Data.getSelector()) ? "selected":"none")%>">
        <a href="${pageContext.request.contextPath}/userTask">Раздел пользователя</a>
    </li>
    <li class="<%=("admin".equals(Data.getSelector()) ? "selected":"none")%>">
        <a href="${pageContext.request.contextPath}/adminTask">Раздел администратора</a>
    </li>
    <li class="none" style="float:right">
        <a href="${pageContext.request.contextPath}/logout">Выход</a>
    </li>
    <li class="<%=("login".equals(Data.getSelector()) ? "selected":"none")%>" style="float:right">
        <a href="${pageContext.request.contextPath}/login">Вход</a>
    </li>
    <li class="<%=("info".equals(Data.getSelector()) ? "selected":"none")%>" style="float:right">
        <a href="${pageContext.request.contextPath}/userInfo">[ <span><%= session.getAttribute("name") %></span> ]</a>
    </li>
</ul>

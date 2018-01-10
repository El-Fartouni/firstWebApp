<%-- 
    Document   : book-list
    Created on : 27 oct. 2017, 15:07:43
    Author     : DAMAR ALI El-Fartouni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="partials/_header.jspf" %>
<body>
    <h1>Liste des livres</h1>

    <!-- déclaration et affectation d'un variable -->
    <c:set var="name" value="El-Fartouni" scope="page" />

    <!-- afficher et recupere après la variable -->
    Bonjour <c:out value="${name}" default="abruti" />

    <%--Afficher des livres --%>
    <table class="table table-bordered">
        <tr>
            <th>id</th>
            <th>titre</th>
            <th>auteur</th>
        </tr>

        <%-- Boucle sur la liste des livres --%>
        <c:forEach var="book" items="${bookList}">
            <tr>
                <td> <c:out value="${book.getId()}"/> </td>
                <td> <c:out value="${book.getTitle()}"/> </td>
                <td> <c:out value="${book.getAuthor().getFirstName()}"/> 
                    <c:out value="${book.getAuthor().getName()}"/> 
                </td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>

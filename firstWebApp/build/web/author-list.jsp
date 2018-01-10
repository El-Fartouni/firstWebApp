

<%@page import="fr.el_fartouni.webapp.entity.Author"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="partials/_header.jspf" %>
<body>
    <h1>Liste des auteurs</h1>

    <%-- Affichage d'un message flash --%>
    <%
        String flash = String.valueOf(request.getAttribute("flash"));
            if ( !flash.equals("null")) {%>
                <div class="alert alert-danger">
                <%= request.getAttribute("flash")%>
                
    </div>
    <% } //fin de condition %>

    <%--Recupération des variables, liste des auteurs --%>
    <% List<Author> authorList = (List<Author>) request.getAttribute("authorList");%>

    <table class="table table-bordered table-striped">
        <tr>
            <th>id</th>
            <th>prénom</th>
            <th>nom</th>
        </tr>

        <%-- Boucle sur la liste des auteurs --%>
        
         <%-- Eliminer ligne rouge auteur --%>
        <%! Author author; %>
        <% for (Author author : authorList) {%>
        <tr>
            <td> <%=author.getId()%> </td>
            <td> <%=author.getFirstName()%> </td>
            <td> <%=author.getName()%> </td>

            <td>
                <form method="post">
                    <a href="/firstWebApp/author-form?id=<%=author.getId()%>" class="btn btn-primary btn-sm">
                        Modifier
                    </a>

                    <%-- Affichage de l'identifiant qui correspond à la ligne à laquelle je suis, ici id --%>
                    <input type="hidden" name="id" value="<%=author.getId()%>">
                    <button type="submit" class="btn btn-danger btn-sm">Supprimer</button>
                </form>
            </td>
        </tr>


        <% } //fin de la boucle %>
    </table>

</body>
</html>

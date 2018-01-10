<%-- 
    Document   : author-form
    Created on : 25 oct. 2017, 16:30:22
    Author     : DAMAR ALI El-Fartouni
--%>

<%@page import="fr.el_fartouni.webapp.entity.Author"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="partials/_header.jspf" %>
<body>
    
    <% Author author = (Author) request.getAttribute("author"); %>
    
    <form method="post">
        <div>
            <label>Nom</label>
            <input type="text" name="authorName" value="<%=author.getName()%>">
        </div>
        <div>
            <label>Prénom</label>
            <input type="text" name="authorFirstName" value="<%=author.getFirstName()%>">
        </div>
        <div>
            <button type = "submit">Valider</button>
        </div>
    </form>

</body>
</html>

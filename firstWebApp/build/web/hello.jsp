<%-- 
    Document   : hello
    Created on : 23 oct. 2017, 10:13:46
    Author     : formation
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="partials/_header.jspf" %>

    <body>
        <%! 
            String name;
            Date now;
            SimpleDateFormat sf;
            Integer age;
            String inputAge;
            String message;
            String color;
            Map<String,String> colorMap;
        %>
        
        <%
            //Remplissage du tableau des couleurs
            colorMap = new HashMap<String,String>();
            colorMap.put("Rouge", "red");
            colorMap.put("Vert", "palegreen");
            colorMap.put("Bleu", "blue");
            colorMap.put("Gris", "#CCCCCC");
            colorMap.put("Brun", "brown");
                   

            //Récupération d'un paramètre
            name=request.getParameter("who");
            //Valeur par défaut si le paramètre n'existe pas
            if(name == null){
                name = "inconnu";
            }
            //Récupération du paramètre age

            inputAge = request.getParameter("age");
            //Gestion de la valeur par défaut
            if(inputAge == null){
                age = 5;
            } else {
                age = Integer.valueOf(inputAge);
            }
            
            //Définition du message en fonction de l'age
            if(age <18){
                message = "vous êtes mineur";
            } else {
                message = "vous êtes majeur";
            }
            
            //Récupération de la couleur sélectionnée
            color = request.getParameter("color");
            if(color == null){
                color = "white";
            }
            
            now = new Date();
            sf = new SimpleDateFormat("YYYY");   
        %>
        
        <style>
            body{
                background-color: <%= color %>;
            }
        </style>
        
        <h1>Hello <%= name %> vous avez <%=age%></h1>
        <p>Nous sommes en <%= sf.format(now) %> </p>
        
        <p>
            <%= session.getAttribute("userName") %>
        </p>
        
        <h3> <%=message%> </h3>
        
        <form method="post">
            <p>Choisissez la couleur du fond</p>
            
            
            <select name="color">
                
                <% 
                    String selected;
                    for (Map.Entry<String, String> en : colorMap.entrySet()) {
                        String key = en.getKey();
                        String val = en.getValue();
                        selected = color.equals(val)?"selected":"";
                %>
                
                <option value="<%=val%>" <%=selected%>><%=key%></option>
                
                <%
                }//fin de bloucle
                %>
                
                <%--
                <option value="red">Rouge</option>
                <option 
                    value="green" 
                    <%= color.equals("green") ? "selected": "" %> 
                >
                    Vert
                </option>
                <option value="blue">Bleu</option>
                <option value="#CCCCCC">Gris</option>
                --%>
            </select><br>
            
            <button type="submit">Valider</button>
        </form>
    </body>
</html>

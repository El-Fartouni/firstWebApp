<%-- 
    Document   : login
    Created on : 23 oct. 2017, 15:34:50
    Author     : formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="partials/_header.jspf" %>

<body class="container-fluid">

    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <p>
                <%= request.getAttribute("error")%>
            </p>
            <form method="post">
                
                <div class="form-group">
                    <label for="login">Login</label>
                    <input type="text" name="login" id="login" 
                           class="form-control">
                </div>
                
                <div class="form-group">
                <label for="pass">Pass</label>
                <input type="password" name="pass" id="pass"
                       class="form-control">
                </div>
                
                <div class="form-group">
                <button type="submit" class="btn btn-primary">Valider</button>
                </div>
            </form>

        </div>

    </div>


</body>
</html>

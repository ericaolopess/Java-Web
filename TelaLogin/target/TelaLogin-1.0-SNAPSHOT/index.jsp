<%-- 
    Document   : index
    Created on : 19/05/2020, 10:32:09
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Regisa Vendas</title>
        
        <link rel="Stylesheet" type="text/css" href="css/estilo.css">
    </head>
        <div id="pag">
            <a href="index.jsp">
                <div id="logo"><img src="img/images.png" width=100px height=80px></div>
            </a>
            <div id="banner" style="text-align: center;"> 
                <h1>**** REGISA VENDAS ****</h1>
            </div>
            <div id="login">
                <%@include file="login.jsp"%>                
            </div>
        </div> 
    </body>
</html>

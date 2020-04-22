<%-- 
    Document   : telaErro
    Created on : 15 de abr. de 2020, 10:56:01
    Author     : erica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERROR Page</title>
        
        <style type="text/css">
            #erro 
            {
                color: red
            }
            
            #voltar {background-color: #00FF00}
            
            span {background-color: #FF0000; color: #FFFFFF; font-weight: bold}
            
            body {text-align: center}
            
            
        </style>
    
    </head>
    <body>
        <h2>* * *  PROBLEMAS ENCONTRADOS  * * *</h2>
        <hr>
        
        <div id="erro">
            <br><br>Ocorreu um erro inesperado no sistema <br><br>
            Favor entrar em contato com o suporte e informar o seguinte erro:<br><br>
            
            <span><%=exception%></span>
            
            <br><br>
           
        </div>
        
        <hr>
        
        <form id="voltar">
           
            <input type ="button" onclick="history.go(-1)" value="Voltar"/>
            
        </form>
            
    </body>
</html>

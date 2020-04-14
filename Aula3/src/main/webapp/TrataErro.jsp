<%-- 
    Document   : TrataErro
    Created on : 14 de abr. de 2020, 09:21:33
    Author     : erica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trata Erro JSP</title>
        
        <style type="text/css">
            #erro 
            {
                color: red; 
            }
            
            #voltar
            {
                background-color: #00FF00      
            }
            span { background-color: #FF0000; color: black; font-weight: bold }
            body { text-align: center}
        </style>       
    </head>
    <body>
        <h2>Problemas Encontrados</h2>
        
        <hr>
        
        <div id="erro">
            Ocorreu um erro inespedado na execução do sistema. <br>
            <br>
            Favor entrar em contato com o suporte e informar o código de errro: <br><br>
            
            <span><%=exception%></span>
            
        </div>
        
            <form id="voltar">
                <input type="button" onclick="history.go(-1)" value="voltar" />  
            </form>
        
    </body>
</html>

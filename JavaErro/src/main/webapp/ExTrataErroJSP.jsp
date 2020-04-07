<%-- 
    Document   : ExTrataErroJSP
    Created on : 7 de abr. de 2020, 09:58:28
    Author     : erica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo Tratamento de Erro JSP</title>
    </head>
    <body>
        <h1>Cadastro de Itens com Tratamento de ERRO</h1>
        <%
          //Receber dados do parametro  
           int codigo = Integer.parseInt(request.getParameter("codigo"));
           String descricao = request.getParameter("descricao");
           String unidade = request.getParameter("unidade"); 
           float saldo = Float.parseFloat(request.getParameter("saldo")); 
           float vlUnitario = Float.parseFloat(request.getParameter("valorUnitario")); 
           
           String acao = request.getParameter("acao");
        %>
        
        <pre>
            -------------- DADOS OBTIDOS DO BROWSER -----------------
            AÇÃO............: <%=acao%>
            CODIGO..........: <%=codigo%>
            DESCRICAO.......: <%=descricao%>
            UNIDADE.........: <%=unidade%>
            SALDO...........: <%=saldo%>
            VALOR UNITARIO..: <%=vlUnitario%>
            ---------------------------------------------------------
            VALOR TOTAL.....: <%=(saldo * vlUnitario)%>

        </pre>
    </body>
</html>

<%-- 
    Document   : ExTrataErroJSP
    Created on : 7 de abr. de 2020, 09:58:28
    Author     : erica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="TrataErro.jsp" %>

<jsp:useBean id="item" class="Suporte.Estoque"/>

<jsp:setProperty  name="item" property="*" />



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo Tratamento de Erro JSP</title>
    </head>
    <body>
        <h1>Cadastro de Itens com Tratamento de ERRO</h1>
       
        <pre>
            -------------- DADOS OBTIDOS DO BROWSER -----------------
            AÇÃO............: <%=item.getAcao()%>
            CODIGO..........: <%=item.getCodigo()%>
            DESCRICAO.......: <%=item.getDescricao()%>
            UNIDADE.........: <%=item.getUnidade()%>
            SALDO...........: <%=item.getSaldo()%>
            VALOR UNITARIO..: <%=item.getValorUnitario()%>
            ---------------------------------------------------------
            VALOR TOTAL.....: <%=(item.getSaldo() * item.getValorUnitario())%>

        </pre>
    </body>
</html>

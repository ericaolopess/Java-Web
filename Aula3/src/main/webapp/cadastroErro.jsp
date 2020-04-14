

<%@page import="Suporte.Unidades"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="TrataErro.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <title> Teste de Dados e Erro JSP</title>
    </head>
    <body>
        <div id="frm">
            <form name="frmItens" action="ExTrataErroJSP_Form.jsp" method="post"> 
            <pre>
            ===========================
            *** CADASTRO DE ESTOQUE ***
            ===========================
            
            CÓDIGO.....: <input type="text" name="codigo" size="8" />
            DESCRIÇÃO..: <input type="text" name="descricao" size="40" />
            UNIDADE....: <%=new Unidades().getUnidades()%>
            SALDO......: <input type="text" name="saldo" size="10" />
            VALOR UNIT.: <input type="text" name="valorUnitario" size="10" />
            
            <input type="submit" value="incluir" name="acao">
            <input type="reset" value="limpar">
            </pre>
        </div>>
    </body>
</html>

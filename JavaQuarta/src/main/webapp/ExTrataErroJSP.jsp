

<%@page contentType="text/html" pageEncoding="UTF-8"  errorPage ="telaErro.jsp"%>

<jsp:useBean id="item" class="Suporte.Estoque"/>
<jsp:setProperty name="item" property="*"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste de Dados e Erro em JSP</title>
    </head>
    <body>
        
        <pre>
            --------------------- CONSULTA DE DADOS ------------------------------
            
            Ação.............: <%=item.getAcao()%>
            Código...........: <%=item.getCodigo()%>
            Descrição........: <%=item.getDescricao()%>
            Unidade..........: <%=item.getUnidade()%>
            Saldo............: <%=item.getSaldo()%>
            Valor Unitário...: <%=item.getValorUnitario()%>

            ----------------------------------------------------------------------
            
            Valor Total......: <%=(item.getSaldo() * item.getValorUnitario())%>
            
            ----------------------------------------------------------------------
            
        </pre>      
    </body>
</html>

<%-- 
    Document   : login
    Created on : 19/05/2020, 11:07:58
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("login") == null)
            {
        %>
        
        <form name="frmLogin" method="post" action="LoginServlet">
            <table border=0>

                <tr>
                    <td>Usuário:</td>
                    <td><input type="text" name="login" size="10" placeholder="Login"></td>
                </tr>
                <tr>
                    <td>Senha:</td>
                    <td><input type="password" name="senha" size="10" placeholder="Senha"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Entrar">
                    </td>
                </tr>
            </table>
            <input type="hidden" name="acao" value="login" />
        </form>
        <% 
            } 
            if (request.getParameter("erro") != null)
            {

        %>

            <div>
                <font color="red">Login Inválido!!! Tente novamente.</font>
            </div>

        <% 
            } 
            if (session.getAttribute("login") != null)
            {

        %>      
        <div>
            <br><br>
            
            <form name="frmLogout" method="post" action="LoginServlet">
                <input type="hidden" name="acao" value="logout" />
                
                Usuário Atual:
                <% out.print(session.getAttribute("login")); %>
                
                <br><br>
                
                <input type="submit" value="Logout" />
                
            </form>
            <% } %>
        </div>
        
        
        
    </body>
</html>

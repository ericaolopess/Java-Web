<%-- 
    Document   : ExibirCookie
    Created on : 13 de mai. de 2020, 10:05:27
    Author     : erica
--%>

<%@page language = "java"%>
<%
    String cooNome = "nomeDoUsuario";
    int qtdeCookie = 0;
    
    Cookie cookies[] = request.getCookies();
    Cookie exemploCookieNome = null;
    
    qtdeCookie = cookies.length;
    
    if (cookies != null)
    {
        for(int i = 0; i < cookies.length; i++)
        {
            if (cookies[i].getName().equals(cooNome))
            {
                exemploCookieNome = cookies[i];
                break;
            }
        }
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(exemploCookieNome == null)
            {
                out.println("Foram encontrados: <b>" + qtdeCookie + " Cookies </b> <br>");
                out.println("Não foi encontrado o cookie: <b>" + cooNome + "</b>");
            }
            else
            {
                out.println("Foram encontrados: <b>" + qtdeCookie + " Cookies </b> <br>");
                out.println("Seja bem vindo: " + exemploCookieNome.getValue());
            }      
        %>
    </body>
</html>

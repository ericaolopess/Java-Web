
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
    <body style="background-color: azure">
        <%
            String pes, alt;
            float Peso = 0F;
            float Altura = 0F;
            
            pes = request.getParameter("peso");
            alt = request.getParameter("altura");
            
            if(!pes.equals(""))
            {
                Peso = Float.parseFloat(pes);
            }
            
            if(!alt.equals(""))
            {
                Altura = Float.parseFloat(alt);
            }
            
            if (Peso == 0 || Altura == 0)
            {
                out.println("Peso/Altura Inválido!!!! <br>");
            }
            else
            {
                float imc = Peso / (Altura * Altura);
                out.println("IMC.....: " + imc + "<br>");
            }


        %>
    </body>
</html>

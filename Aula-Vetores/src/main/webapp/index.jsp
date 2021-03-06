<%-- 
    Document   : index
    Created on : 28 de abr. de 2020, 09:57:12
    Author     : erica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%!
    
    private String DiaDaSemana(int nDiaDaSemana)
    {
        String diasDaSemana[] = {"Domingo","Segunda","Terça",
                                 "Quarta","Quinta","Sexta","Sábado"};
    
        return diasDaSemana[nDiaDaSemana - 1];                            
    }
    

%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exemplo de Vetor - Dia da Semana</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <hr>
        
        <h4>Exemplo de uso de Vetor</h4>
        
        <hr>Exibindo o elemento de um vetor simples:
        
        <%
            int meuVetor[] = {1,2,3,4,5,6,7};
            
            for (int i = 0; i < meuVetor.length; i++)
                out.print(meuVetor[i]);
        
        %>
        
         <hr>Exibindo o elemento de um vetor DiasDaSemana:
         
         <%
            out.print(DiaDaSemana(1));
         %>
        
          <hr>Exibindo os elementos do vetor DiasDaSemana:
          
          <%
            
            for (int i = 1; i <= 7; i++)
            {
                out.print(DiaDaSemana(i));
                switch (i)
                {
                 case 6:
                    out.print(" e ");
                    break;
                 case 7:
                    out.print(".");
                    break;
                 default:   
                    out.print(", ");
                 }
            }
          
          %>
          
          <hr>
    </body>
</html>





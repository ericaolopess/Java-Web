
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import= "java.util.List" %>
<%@page import= "java.util.ArrayList" %>
<%@page import= "Suporte.Contato" %>

<%! 
    private List<Contato> getContatos()
    {
        List<Contato> contatos = new ArrayList<Contato>();

        //adicionar instancias
        contatos.add(new Contato("Lara","2222-2222",32));
        contatos.add(new Contato("Carlos","2222-2222",12));
        contatos.add(new Contato("Lais","2222-2222",30));
        contatos.add(new Contato("Isabela","2222-2222",42));
        contatos.add(new Contato("Gustavo","2222-2222",50));

        return contatos;
    }
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXEMPLO DE MATRIZ</title>
    </head>
    <body>
       
        <hr>
        <h4>Exemplo de Matriz</h4>
        
        <pre>
            
            <% out.print("<hr> Exibindo um elemento simples: ");
            
            List<Contato> teste = getContatos();
            
            for(Contato ct : teste)
            {
             
                out.print("<br>----------------------------");
                out.print("<br>Nome     :" + ct.getNome());
                out.print("<br>Telefone :" + ct.getTelefone());
                out.print("<br>Idade    :" + ct.getIdade());
               
            }
            
            out.print("<br>----------------------------");

            %>

        </pre>  
    </body>
</html>























<%-- 
    Document   : index
    Created on : 19/05/2020, 10:32:09
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
    public class DAO
    {
        private String url;
        private Connection cnn;
        private Statement cmd;

        public DAO()
        {
            url = "jdbc:derby://localhost:1527/mural";
        }
        
        private String getConexao()
        {
            return this.url;
        }

        private Connection Abrir()
        {
            Connection oCon;
            //abrir conexão com o banco de dados
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                oCon = DriverManager.getConnection(getConexao(),"alunos","alunos");
                return oCon;
            }
            catch(ClassNotFoundException E)
            {
                System.out.println("Classe Driver não encontrada!");
                System.out.println(E.getMessage());
                return null;
            }
            catch(SQLException E)
            {
                System.out.println("Erro na conexao com o Banco de Dados.");
                System.out.println(E.getMessage());
                return null;
            }
            catch(Exception e)
            {
                System.out.println(e.getMessage());
                return null;
            }
        }

        public ResultSet ExecutarSQL(String strSQL)
        {
            cnn = Abrir();
            try
            {
                cmd = cnn.createStatement();
                System.out.println("*********************SQL - " + strSQL);

                //executar query
                ResultSet objRS = cmd.executeQuery(strSQL);
                //retornar o resultado da query
                System.out.println("*********************objRS - " + objRS);
                return objRS;

            }
            catch(Exception e)
            {
                System.out.println(e.getMessage());
                return null;
            }
        }

        public void Fechar()
        {
           try
           {
             cmd.close();
             cnn.close();
           }
           catch(Exception e)
           {
                System.out.println("Não fopi possível fechar a conexão com o BD." +
                                    e.getMessage());
           }
        }        
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Regisa Vendas</title>
        
        <link rel="Stylesheet" type="text/css" href="css/estilo.css">
    </head>
    
    <body>
        <div id="pag">
            <a href="index.jsp">
                <div id="logo"><img src="img/images.png" width=100px height=80px></div>
            </a>
            <div id="banner" style="text-align: center;"> 
                <h1>**** REGISA VENDAS ****</h1>
            </div>
            <div id="login">
                <%@include file="login.jsp"%>                
            </div>
            <div id="menu"> Inserir menu.jsp </div>
            <div id="conteudo">
                <div id="frame-conteudo">
                        

                  <%
                        //Exemplo de exibição da tabela tabMural
                        String nome, texto, email;
                        int qtReg = 0;
                        
                        DAO dao = new DAO();
                        ResultSet rs = dao.ExecutarSQL("select * from tabMural");
                        
                        if(rs != null)
                        {
                            while(rs.next())
                            {
                                nome = rs.getString("nome");
                                texto = rs.getString("mensagem");
                                email = rs.getString("email");
                                

                                    out.println("Nome: " + nome + "<br>" + texto + "<br>");
                                    out.println("E-mail: " + email + "<br><br>");
                                    qtReg ++;
                            }                            
                            rs.close();
                        
                        }
                        else
                        {    
                            out.println("RS Nulo");
                        }
                        
                        dao.Fechar();
                       
                    %>
                

                    </div>
            

            </div>
            <div id="propaganda"></div>
            <div id="rodape"></div>
        </div> 
    </body>
</html>

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.meusite.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author erica
 */
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //por default chama a página index e passarei o codigo de erro=1
        String pagina= "index.jsp?erro=1";
        
        //verificar se login e senha são iguais a admin
        
        String oAcao = request.getParameter("acao");
        
        if(oAcao.equals("login"))
        {
            if(request.getParameter("login").equals("admin"))
            {
                if(request.getParameter("senha").equals("admin"))
                {
                    HttpSession sessao = request.getSession();
                    
                    sessao.setAttribute("login", request.getParameter("login"));
                    
                    pagina = "index.jsp";
                }
            }
        }
        else if(oAcao.equals("logout"))
        {
            HttpSession sessao = request.getSession();
            sessao.invalidate();
            pagina = "index.jsp";
        }    
        response.sendRedirect(pagina);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Suporte;


public class Unidades {
    
    String html = "";
    
    public Unidades()
    {
        html += "<select name=\"unidade\">";
        html += "<option value=\"PC\" selected>PC</option>";
        html += "<option value=\"KG\" selected>KG</option>";
        html += "<option value=\"UN\" selected>UN</option>";
        html += "</select>";
    }
    
    public String getUnidades()
    {
        return html;
    }
    
    
}

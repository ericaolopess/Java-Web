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
        html += "<option value=\"UN\">Unidade</option>";
        html += "<option value=\"KG\">Kilograma</option>";
        html += "<option value=\"PC\">Peça</option>";
        html += "</select>";
    }
    
    public String getUnidades()
    {
        return html;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serie3p1;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class conectar {

    Connection conectar = null;

    public Connection conexion() {
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            conectar = DriverManager.getConnection("jdbc:mysql://localhost/parcial1serie3", "root", "");


        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error de conexion de la base de datos");
        } catch (ClassNotFoundException ex) {
        }
        return conectar;
    }

    public static void main(String[] args){
        datos Persona = new datos();
        Persona.setVisible(true);
        Persona.setLocationRelativeTo(null);
    }

    Statement createStatement() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
}

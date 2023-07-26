/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.infox.dal;

import java.sql.*;


/**
 *
 * @author erick
 */
public class ModuloConexao {

    public static Connection connector() {
        Connection conexao = null;
        //a liha abaixo "chama" o driver
        String driver = "com.mysql.cj.jdbc.Driver";
        //Armazendo informações referentes ao banco
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "quintao2006";
        //Estabelecendo a conexao com o banco
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
//            System.out.println(e);
             return null;
         
        }
        
    }
}

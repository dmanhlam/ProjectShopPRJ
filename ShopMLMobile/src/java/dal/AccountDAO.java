/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author admin
 */
public class AccountDAO  extends DBContext{
    public Account login(String user , String pass) {
        String sql="select * from Account where username = ? and password = ?";
        try {
             PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);
          ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
               return new Account(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getString(4),
                       rs.getString(5),
                       rs.getString(6),
                       rs.getInt(7),
                       rs.getInt(8));
            }
        } catch (Exception e) {
         
        }
       
       return null;
    }
    
     public Account checkAccountExist(String user) {
        String sql="select * from Account where username = ?";
        try {
             PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, user);
          ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
               return new Account(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getString(4),
                       rs.getString(5),
                       rs.getString(6),
                       rs.getInt(7),
                       rs.getInt(8));
            }
        } catch (Exception e) {
         
        }
       
       return null;
    }
}

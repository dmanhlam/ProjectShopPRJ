/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author admin
 */
public class SignUpDAO extends DBContext {

    public void createAccount(String username, String password,
            String name, String address, String email, int phone) {
         String sql = "INSERT INTO [dbo].[Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[displayName]\n"
                    + "           ,[address]\n"
                    + "           ,[email]\n"
                    + "           ,[phone]\n"
                    + "           ,[role])\n"
                    + "     VALUES(?,?,?,?,?,?,0)";
        try {             
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, address);
            ps.setString(5, email);
            ps.setInt(6, phone);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SignUpDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}

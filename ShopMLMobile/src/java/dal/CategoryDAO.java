/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author admin
 */
public class CategoryDAO extends DBContext{
  public List<Category> getAllCategories(){
      List<Category> list = new  ArrayList<>();
      try {
          String sql = "select * from Category";
          
          PreparedStatement ps = connection.prepareStatement(sql);
          ResultSet rs = ps.executeQuery();
          while (rs.next()) {              
//              Category category = new Category(rs.getInt(1), rs.getString(2));
                Category category = Category.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .build();
              list.add(category);
          }
      } catch (SQLException e) {
          System.out.println(e);
      }
      
      return list;
      
  }
}

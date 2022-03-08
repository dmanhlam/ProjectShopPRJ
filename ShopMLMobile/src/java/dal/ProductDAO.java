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
import model.Product;

/**
 *
 * @author admin
 */
public class ProductDAO extends DBContext {

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product";

            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .oldprice(rs.getInt(4))
                        .price(rs.getInt(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .categoryId(rs.getInt(9))
                        .build();
                list.add(product);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getProductsByCategoryId(int categoryId) {

        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product where Product.category_id = ?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .oldprice(rs.getInt(4))
                        .price(rs.getInt(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .categoryId(rs.getInt(9))
                        .build();
                list.add(product);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> search(String keyword) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product where name like ?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .oldprice(rs.getInt(4))
                        .price(rs.getInt(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .categoryId(rs.getInt(9))
                        .build();
                list.add(product);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public int getTotalProducts() {

        try {
            String sql = "select count(id) from Product ";

            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return 0;
    }

    public Product getProductById(int productId) {

        try {
            String sql = "select * from Product where id = ?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .oldprice(rs.getInt(4))
                        .price(rs.getInt(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .categoryId(rs.getInt(9))
                        .build();
                return product;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public List<Product> getProductsWithPagging(int page, int PAGE_SIZE) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product ORDER BY id\n"
                    + "OFFSET(?-1)*? ROW FETCH NEXT ? ROWS ONLY";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, page);
            ps.setInt(2, PAGE_SIZE);
            ps.setInt(3, PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .oldprice(rs.getInt(4))
                        .price(rs.getInt(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .categoryId(rs.getInt(9))
                        .build();
                list.add(product);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void deleteProduct(int id) {

        try {
            String sql = "delete  from Product where id = ? ";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void addNewProduct(String name, int quantity, int oldprice, int price,
            String description, String image, String createdDate, String categoryId) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([name]\n"
                + "           ,[quantity]\n"
                + "           ,[oldprice]\n"
                + "           ,[price]\n"
                + "           ,[description]\n"
                + "           ,[image_url]\n"
                + "           ,[created_date]\n"
                + "           ,[category_id])\n"
                + "     VALUES(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, quantity);
            ps.setInt(3, oldprice);
            ps.setInt(4, price);
            ps.setString(5, description);
            ps.setString(6, image);
            ps.setString(7, createdDate);
            ps.setString(8, categoryId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Product checkProductExist(String name) {
        String sql = "select * from Product where name = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {

        }

        return null;
    }

    public void editProduct(String name, int quantity, int oldprice, int price,
            String description, String image, String createdDate, String categoryId,int id) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [name] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[oldprice] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[description] =?\n"
                + "      ,[image_url] = ?\n"
                + "      ,[created_date] = ?\n"
                + "      ,[category_id] = ?\n"
                + " WHERE id= ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, quantity);
            ps.setInt(3, oldprice);
            ps.setInt(4, price);
            ps.setString(5, description);
            ps.setString(6, image);
            ps.setString(7, createdDate);
            ps.setString(8, categoryId);
            ps.setInt(9, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}

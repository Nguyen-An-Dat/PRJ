/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modal.Product;

/**
 *
 * @author User
 */
public class ProductDAO extends DBContext {

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("productID"),
                        rs.getString("productName"),
                        rs.getString("description"),
                        rs.getString("quantily"),
                        rs.getString("price"),
                        rs.getInt("categoryID"),
                        rs.getString("image"));

                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByNameAndPrice(String categoryId,String search) {

        List<Product> list = new ArrayList<>();
        String sql = "select * from products where categoryId like ? and productName like ? or price like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + categoryId + "%");
            st.setString(2, "%" + search + "%");
            st.setString(3, "%" + search + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("productID"),
                        rs.getString("productName"),
                        rs.getString("description"),
                        rs.getString("quantily"),
                        rs.getString("price"),
                        rs.getInt("categoryID"),
                        rs.getString("image")
                );
                
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public Product getProductByName(String search) {

        
        String sql = "select * from products where productName like ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + search + "%");
            
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("productID"),
                        rs.getString("productName"),
                        rs.getString("description"),
                        rs.getString("quantily"),
                        rs.getString("price"),
                        rs.getInt("categoryID"),
                        rs.getString("image")
                );
            return c;    
                
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null ;
    }
    

    public void delete(int id) {
        String sql = "delete from products where productID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> getProductByCategoryID(int id) {
        List<Product> list = new ArrayList<>();
        String sql = "select p.* from category c join  products p on c.categoryID = p.categoryID where p.categoryID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("productID"),
                        rs.getString("productName"),
                        rs.getString("description"),
                        rs.getString("quantily"),
                        rs.getString("price"),
                        rs.getInt("categoryID"),
                        rs.getString("image"));

                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
//    tim 1 Product khi co id
    public Product getProductById(int id) {
        String sql = "select * from products where productID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product c = new Product(rs.getInt("productID"),
                        rs.getString("productName"),
                        rs.getString("description"),
                        rs.getString("quantily"),
                        rs.getString("price"),
                        rs.getInt("categoryID"),
                        rs.getString("image"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    //update
    public void update(Product c) {
        String sql = "update products set productName = ?, description=?,quantily=?,price=?,categoryID=?,image=? where productID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getProductName());
            st.setString(2, c.getDescription());
            st.setString(3, c.getQuantily());
            st.setString(4, c.getPrice());
            st.setInt(5, c.getCategoryID());
            st.setString(6, c.getImage());
            st.setInt(7, c.getProductID());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
//    public Category getCategoryById(int categoryID) {
//                List<Category> list = new ArrayList<>();
//
//        String sql = "select * from Category where categoryID=?";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, categoryID);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                Category c = new Category(rs.getInt("categoryID"),
//                                          rs.getString("categoryName"));
//                return c;
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return null;
//        
//    }
    
//    public List<Product> getProductByCid(int productID){
//     List<Product> list = new ArrayList<>();
//     String sql ="select * from products where productID=?";
//     if(productID != 0){
//         sql +=" and productID =" + productID;
//     }
//        try {
//           PreparedStatement st = connection.prepareStatement(sql);
//          st.setInt(1, productID);
//           ResultSet rs = st.executeQuery();
//           while(rs.next()){
//               Product p = new Product();
//               p.setProductID(rs.getInt("productID"));
//               p.setProductName(rs.getString("productName"));
//               p.setDescription(rs.getString("description"));
//               p.setQuantily(rs.getString("quantily"));
//               p.setPrice(rs.getString("price"));
//               p.setCategoryID(rs.getInt("categoryID"));
//               p.setImage(rs.getString("image"));
//               Category c = getCategoryById(rs.getInt("categoryID"));
//               p.setCategory(c);
//               list.add(p);
//           }
//        } catch (SQLException e) {
//        }
//     return list;
//    }

    //insert into
    public void insert(Product c) {
        String sql = "insert into products values(?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
           
            st.setString(1, c.getProductName());
            st.setString(2, c.getDescription());
            st.setString(3, c.getQuantily());
            st.setString(4, c.getPrice());
            st.setInt(5, c.getCategoryID());
            st.setString(6, c.getImage());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}

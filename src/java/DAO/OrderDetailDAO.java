/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import modal.OrderDetail;

/**
 *
 * @author User
 */
public class OrderDetailDAO  extends DAO{
    public int insert(OrderDetail d) {
        String sql = "insert into orderdetail values(?,?,?,?)";
        int orderId = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, d.getOrderID());
            st.setInt(2, d.getProductID());
            st.setInt(3, d.getQuantily());
            st.setInt(4, d.getTotalPrice());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return orderId;
    }
}

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
import modal.Account;

/**
 *
 * @author User
 */
public class AccountDAO extends DBContext{
    public List<Account> getAll() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from Account";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account c = new Account(rs.getString(1),
                                        rs.getString(2),
                                        rs.getString(3),
                                        rs.getString(4),
                                        rs.getString(5),
                                        rs.getString(6),
                                        rs.getInt(7),
                                        rs.getInt(8),
                                        rs.getInt(9));
                        
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Account getAccountById (String username, String password){
        String sql = "select * from account where idAccount = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(username, password, rs.getInt("roleId"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    //change password
    public void change(String username, String password) {
        String sql = "update account set password=? where username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setString(2, username);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public Account checkAccount(String username, String password) {
        String sql = "select * from account where username = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(username, password, rs.getInt("roleId"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public void update(Account c) {
        String sql = "update account set roleID where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getRoleID());
            st.setString(2, c.getUsername());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}

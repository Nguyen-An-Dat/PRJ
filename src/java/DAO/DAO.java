
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import modal.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class DAO extends DBContext {

    //check co tai khoan chua
    public Account check(String username, String password) {
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
    
    //get account by username
    public Account getAccountByUserName(String username) {
        String sql = "select * from account where username = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(username, rs.getString("password"), rs.getString("email"), rs.getString("address"), 
                        rs.getString("name"), rs.getString("dob"), rs.getInt("idAccount"), rs.getInt("roleID"), rs.getInt("phone"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean existed(String username) {
        String sql = "select * from Account where username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    //register
    public void insert(Account a) {
        String sql = "insert into Account(username,password,roleID,dob,email,phone,address)  values(?,?,2,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUsername());
            st.setString(2, a.getPassword());
            st.setString(3, a.getDate());
            st.setString(4, a.getEmail());
            st.setInt(5, a.getPhone());
            st.setString(6, a.getAddress());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //change pass
    

    //update profile
    public void update(Account a){
        String sql="update account set roleID where username=?";
        try {
           PreparedStatement st=connection.prepareStatement(sql);
           st.setInt(1, a.getRoleID());
           st.setString(2, a.getUsername());
           st.executeUpdate();
           
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}

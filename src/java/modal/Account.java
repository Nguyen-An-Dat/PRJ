/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modal;

/**
 *
 * @author User
 */
public class Account {
    private String username, password,email,address,name,date;
    private int idAccount,roleID,phone;

    public Account() {
    }

    public Account(String username, String password, String email, String address, String name, String date, int idAccount, int roleID, int phone) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.address = address;
        this.name = name;
        this.date = date;
        this.idAccount = idAccount;
        this.roleID = roleID;
        this.phone = phone;
    }

    public Account(String username, String password, int roleID) {
        this.username = username;
        this.password = password;
        this.roleID = roleID;
    }

    public Account(String username, String password, int roleID, String email, String address, String date,  int phone) {
        this.username = username;
        this.password = password;
        this.roleID = roleID;
        this.email = email;
        this.address = address;
        this.date = date;
        this.phone = phone;
    }
    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }
    
    
    
    
}

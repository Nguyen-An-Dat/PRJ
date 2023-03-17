/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modal;

/**
 *
 * @author User
 */
public class OrderDetail {
    private int OrderDetailID,orderID,productID,totalPrice,quantily;

    public OrderDetail() {
    }

    public OrderDetail(int OrderDetailID, int orderID, int productID, int totalPrice, int quantily) {
        this.OrderDetailID = OrderDetailID;
        this.orderID = orderID;
        this.productID = productID;
        this.totalPrice = totalPrice;
        this.quantily = quantily;
    }
    
    public OrderDetail( int orderID, int productID, int totalPrice, int quantily) {
        this.orderID = orderID;
        this.productID = productID;
        this.totalPrice = totalPrice;
        this.quantily = quantily;
    }

    public int getOrderDetailID() {
        return OrderDetailID;
    }

    public void setOrderDetailID(int OrderDetailID) {
        this.OrderDetailID = OrderDetailID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getQuantily() {
        return quantily;
    }

    public void setQuantily(int quantily) {
        this.quantily = quantily;
    }
    
}

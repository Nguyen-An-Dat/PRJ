/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modal;

/**
 *
 * @author User
 */
public class Product {
    private int productID;
    private String productName,description, quantily,price;
    private int categoryID;
    private String image;
    private Category category;

    public Product() {
    }

    public Product(int productID, String productName, String description, String quantily, String price, int categoryID, String image, Category category) {
        this.productID = productID;
        this.productName = productName;
        this.description = description;
        this.quantily = quantily;
        this.price = price;
        this.categoryID = categoryID;
        this.image = image;
        this.category = category;
    }

    public Product(int productID, String productName, String description, String quantily, String price, int categoryID, String image) {
        this.productID = productID;
        this.productName = productName;
        this.description = description;
        this.quantily = quantily;
        this.price = price;
        this.categoryID = categoryID;
        this.image = image;
    }

    public Product(String productName, String description, String quantily, String price, int categoryID, String image) {
        this.productName = productName;
        this.description = description;
        this.quantily = quantily;
        this.price = price;
        this.categoryID = categoryID;
        this.image = image;
        
    }
    
    

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getQuantily() {
        return quantily;
    }

    public void setQuantily(String quantily) {
        this.quantily = quantily;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    

    
    
    
}

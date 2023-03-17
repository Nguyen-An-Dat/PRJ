/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modal;

/**
 *
 * @author User
 */
public class ProductCart {
    private int productId, productPrice, categoryId, quality;
    private String productName, productColor, productDescription, image,Price;
    public ProductCart() {
    }

    public int getProductId() {
        return productId;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String Price) {
        this.Price = Price;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getQuality() {
        return quality;
    }

    public ProductCart(int productId, int categoryId, int quality, String productName, String productDescription, String image, String Price) {
        this.productId = productId;
        this.categoryId = categoryId;
        this.quality = quality;
        this.productName = productName;
        this.productDescription = productDescription;
        this.image = image;
        this.Price = Price;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductColor() {
        return productColor;
    }

    public void setProductColor(String productColor) {
        this.productColor = productColor;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public ProductCart(int productId, int productPrice, int categoryId, int quality, String productName, String productColor, String productDescription, String image) {
        this.productId = productId;
        this.productPrice = productPrice;
        this.categoryId = categoryId;
        this.quality = quality;
        this.productName = productName;
        this.productColor = productColor;
        this.productDescription = productDescription;
        this.image = image;
    }
    
}

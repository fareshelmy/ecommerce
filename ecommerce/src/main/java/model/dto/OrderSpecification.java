/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dto;

/**
 *
 * @author Lamiaa Abdrabou
 */
public class OrderSpecification {
    private int productId;
    private int productQuantity;
    public OrderSpecification(int productId, int productQuantity){
        this.productId = productId;
        this.productQuantity = productQuantity;
    }
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }
    
    
    
}

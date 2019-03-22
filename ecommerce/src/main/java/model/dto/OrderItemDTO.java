/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dto;

import java.math.BigDecimal;
import model.entity.Order;
import model.entity.OrderItemId;
import model.entity.Product;

/**
 *
 * @author FARES-LAP
 */
public class OrderItemDTO {

    private OrderItemId id;
    private Order order;
    private Product product;
    private int quantity;
    private BigDecimal total;

    public OrderItemDTO() {
    }

    public OrderItemDTO(OrderItemId id, Order order, Product product, int quantity, BigDecimal total) {
        this.id = id;
        this.order = order;
        this.product = product;
        this.quantity = quantity;
        this.total = total;
    }

    public OrderItemId getId() {
        return id;
    }

    public void setId(OrderItemId id) {
        this.id = id;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }
    
    
}

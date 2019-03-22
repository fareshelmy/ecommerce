/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dto;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import model.entity.Category;
import model.entity.OrderItem;

/**
 *
 * @author FARES-LAP
 */
public class ProductDTO {

    private int id;
    private Category category;
    private String name;
    private BigDecimal price;
    private BigDecimal rating;
    private String image;
    private BigDecimal amount;
    private String unit;
    private int quantity;
    private String description;
    private int itemsSold;
    private Set<OrderItem> orderItems = new HashSet<OrderItem>(0);

    public ProductDTO() {
    }

    public ProductDTO(int id, String name, BigDecimal price, String image, int quantity, int itemsSold) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.image = image;
        this.quantity = quantity;
        this.itemsSold = itemsSold;
    }

    public ProductDTO(int id, Category category, String name, BigDecimal price, BigDecimal rating, String image, BigDecimal amount, String unit, int quantity, String description, int itemsSold, Set<OrderItem> orderItems) {
        this.id = id;
        this.category = category;
        this.name = name;
        this.price = price;
        this.rating = rating;
        this.image = image;
        this.amount = amount;
        this.unit = unit;
        this.quantity = quantity;
        this.description = description;
        this.itemsSold = itemsSold;
        this.orderItems = orderItems;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getRating() {
        return rating;
    }

    public void setRating(BigDecimal rating) {
        this.rating = rating;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getItemsSold() {
        return itemsSold;
    }

    public void setItemsSold(int itemsSold) {
        this.itemsSold = itemsSold;
    }

    public Set<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(Set<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }

}

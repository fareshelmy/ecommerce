/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dto;

import java.io.Serializable;
import java.util.Date;
import model.entity.Category;

/**
 *
 * @author FARES-LAP
 */
public class ProductDTO implements Serializable {

    private Integer id;
    private Category category;
    private String name;
    private double price;
    private Double rating;
    private String image;
    private Double amount;
    private String unit;
    private int quantity;
    private String description;
    private int itemsSold;
    private Date entranceDate;

    public ProductDTO() {
    }

    public ProductDTO(Integer id, Category category, String name, double price, Double rating, String image, Double amount, String unit, int quantity, String description, int itemsSold, Date entranceDate) {
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
        this.entranceDate = entranceDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
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

    public Date getEntranceDate() {
        return entranceDate;
    }

    public void setEntranceDate(Date entranceDate) {
        this.entranceDate = entranceDate;
    }

}

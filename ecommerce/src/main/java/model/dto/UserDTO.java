/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dto;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import model.entity.Category;
import model.entity.Order;

/**
 *
 * @author FARES-LAP
 */
public class UserDTO {

    private String email;
    private String username;
    private String password;
    private Date birthday;
    private String job;
    private String address;
    private int creditLimit;
    private Set<Order> orders = new HashSet<Order>(0);
    private Set<Category> categories = new HashSet<Category>(0);

    public UserDTO() {
    }

    public UserDTO(String email, String username, String password, int creditLimit) {
        this.email = email;
        this.username = username;
        this.password = password;
        this.creditLimit = creditLimit;
    }

    public UserDTO(String email, String username, String password, Date birthday, String job, String address, int creditLimit, Set<Order> orders, Set<Category> categories) {
        this.email = email;
        this.username = username;
        this.password = password;
        this.birthday = birthday;
        this.job = job;
        this.address = address;
        this.creditLimit = creditLimit;
        this.orders = orders;
        this.categories = categories;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCreditLimit() {
        return creditLimit;
    }

    public void setCreditLimit(int creditLimit) {
        this.creditLimit = creditLimit;
    }

    public Set<Order> getOrders() {
        return orders;
    }

    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }

    public Set<Category> getCategories() {
        return categories;
    }

    public void setCategories(Set<Category> categories) {
        this.categories = categories;
    }

}

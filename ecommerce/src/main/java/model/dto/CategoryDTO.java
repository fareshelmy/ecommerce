/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dto;

import java.util.HashSet;
import java.util.Set;
import model.entity.Product;
import model.entity.User;

/**
 *
 * @author FARES-LAP
 */
public class CategoryDTO {

    private Integer id;
    private String name;
    private Set<Product> products = new HashSet<Product>(0);
    private Set<User> users = new HashSet<User>(0);

    public CategoryDTO() {
    }

    public CategoryDTO(String name) {
        this.name = name;
    }

    public CategoryDTO(String name, Set<Product> products, Set<User> users) {
        this.name = name;
        this.products = products;
        this.users = users;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Product> getProducts() {
        return products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

}

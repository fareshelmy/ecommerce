/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dto;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import model.entity.OrderItem;
import model.entity.User;

/**
 *
 * @author FARES-LAP
 */
public class OrderDTO {

    private Integer id;
    private Date timestamp;
    private User user;
    private Set<OrderItem> orderItems = new HashSet<OrderItem>(0);

    public OrderDTO() {
    }

    public OrderDTO(Integer id, User user) {
        this.id = id;
        this.user = user;
    }

    public OrderDTO(Integer id, User user, Set<OrderItem> orderItems) {
        this.id = id;
        this.user = user;
        this.orderItems = orderItems;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(Set<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }

}

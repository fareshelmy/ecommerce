/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao.interfaces;

import java.math.BigDecimal;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import model.entity.Product;
import org.hibernate.criterion.Order;

/**
 *
 * @author Mayada Khaled
 */
public interface OrderItemDAO {

    void persist(OrderItem orderItem);

    void delete(OrderItem orderItem);

    void update(OrderItem orderItem);

    OrderItem retrieveOrderItem(OrderItemId id);

}

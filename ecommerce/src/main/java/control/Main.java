/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.List;
import model.dao.OrderDAO;
import model.dao.OrderItemDAO;
import model.entity.Order;
import model.entity.OrderItem;

/**
 *
 * @author Lamiaa Abdrabou
 */
public class Main {
    public static void main(String[] args){
        OrderDAO order = new OrderDAO();
        OrderItemDAO orderitem = new OrderItemDAO();
        List<Order> orders =  order.retrieveUserOrders("Hamada@gmail.com");
        for(Order o: orders){
            System.out.println("Order ID is: "+o.getId());
            List<OrderItem> orderItems = orderitem.retrieveOrderItems(o.getId());
            for(OrderItem oi:orderItems){
                System.out.println("Product Name: " + oi.getProduct().getName());
            }
        }
    }
}



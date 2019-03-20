/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao.implementations;

import java.math.BigDecimal;
import model.entity.MySessionFactory;
import model.entity.Order;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import model.entity.Product;
import model.entity.User;
import org.hibernate.Session;

/**
 *
 * @author Mayada Khaled
 */
public class OrderItemTestMain {

    public static void main(String[] args) {
         Session  session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        
        
        OrderItemDAOImpl orderItemDAOImpl = new OrderItemDAOImpl();
       
        User user = new User("mayada@gamil.com", "mayada", "98798787", 9808908);
        
        Product product = (Product) session.get(Product.class,1);
        
        Order order = (Order) session.get(Order.class,1 );
     
        OrderItemId orderItemId = new OrderItemId();
        System.out.println(order.getId());
        System.out.println(product.getId());
        orderItemId.setOrderId(order.getId());
        orderItemId.setProductId(product.getId());
        
        OrderItem orderItem = new OrderItem(orderItemId, order, product, 2, BigDecimal.valueOf(89.9));
        
       
        
        OrderItem retrieved=  orderItemDAOImpl.retrieveOrderItem(orderItemId);
        System.out.println("element :");
        
        System.out.println("order : " + retrieved.getOrder());
        System.out.println("product : " + retrieved.getProduct());
        System.out.println("quantity : " + retrieved.getQuantity());
        System.out.println("total price : " + retrieved.getTotal());
        
        
        session.getTransaction().commit();
        
        MySessionFactory.closeSession(session);
        
        orderItemDAOImpl.persist(orderItem);
        System.out.println("persist done");
        orderItem.setQuantity(4);
        orderItemDAOImpl.update(orderItem);
        System.out.println("update done");
//        OrderItem retrieved = orderItemDAOImpl.retrieveOrderItem(orderItemId);
//        System.out.println("element :");
//        System.out.println("order : " + retrieved.getOrder());
//        System.out.println("product : " + retrieved.getProduct());
//        System.out.println("quantity : " + retrieved.getQuantity());
//        System.out.println("total price : " + retrieved.getTotal());

        orderItemDAOImpl.delete(orderItem);
        System.out.println("element deleted .. ");
    }
}

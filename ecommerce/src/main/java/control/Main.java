/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.math.BigDecimal;
import model.dao.OrderItemDAO;
import model.dao.ProductDAO;
import model.dao.UserDAO;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import model.entity.Product;
import model.entity.User;


public class Main {

    public static void main(String[] args) {
//        UserDAO userDao = new UserDAO();
//        User user = userDao.retrieve("Kamal@gmail.com");
        Product product = new Product();
        product.setId(15);
        product.setName("zzzz");
        product.setPrice(0);
        product.setImage("dk");
        product.setQuantity(0);
        ProductDAO dAO= new ProductDAO();
        dAO.update(product);
                
//        OrderItem orderItem = new OrderItem();
//        orderItem.setId(new OrderItemId(2, 2));
//        orderItem.setQuantity(10);
////        orderItem.setTotal(BigDecimal.TEN);
//        OrderItemDAO dao = new OrderItemDAO();
//        dao.persist(orderItem);

    }
}

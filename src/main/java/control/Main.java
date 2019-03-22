/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import model.dao.OrderDAO;
import model.dao.UserDAO;
import model.entity.Order;
import model.entity.User;

public class Main {

    public static void main(String[] args) {
        UserDAO userDao = new UserDAO();
        User user = new User();
        user.setEmail("Faris@gmail.com.com");
        user.setJob("Spring Developer");
        user.setAddress("Mansora");
        user.setPassword("Password");
        user.setUsername("Faris");
        userDao.persist(user);

        OrderDAO orderDao = new OrderDAO();
        Order order = orderDao.retrieve(1);
        order.setUser(user);
        orderDao.update(order);
    }
}

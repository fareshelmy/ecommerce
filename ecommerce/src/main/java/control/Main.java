/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.dao.CategoryDAO;
import model.dao.OrderDAO;
import model.dao.OrderItemDAO;
import model.dao.ProductDAO;
import model.dao.UserDAO;
import model.entity.Category;
import model.entity.Order;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import model.entity.Product;
import model.entity.User;
import org.apache.commons.beanutils.BeanUtils;

public class Main {

    public static void main(String[] args) {
        UserDAO userDao = new UserDAO();
        CategoryDAO categoryDao = new CategoryDAO();
        ProductDAO productDao = new ProductDAO();     
        OrderDAO orderDao = new OrderDAO();
        OrderItemDAO orderItemDao = new OrderItemDAO();
        List<Product> productItems = orderItemDao.getOrderProducts(2);
        for(Product order:productItems){
            System.out.println(order.getId());
        }

     
    }
}

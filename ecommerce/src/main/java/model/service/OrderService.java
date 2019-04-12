/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.ArrayList;
import java.util.List;
import model.dao.ProductDAO;
import model.dao.UserDAO;
import model.dto.OrderSpecification;
import model.entity.Product;
import model.entity.User;

/**
 *
 * @author FARES-LAP
 */
public class OrderService {

    //Fares
    public boolean checkUserBalance(String userId, double totalPaymentAmount) {
        boolean isSufficient = false;
        User user = new UserDAO().retrieve(userId);
        if (user.getCreditLimit() > totalPaymentAmount) {
            isSufficient = true;
        }
        return isSufficient;
    }
    

    //Hamada
    public List<OrderSpecification> checkQuantity(List<OrderSpecification> userOrder){
        Product product = null;
        ProductDAO productDao = new ProductDAO();
        List<OrderSpecification> notAvailableProducts = new ArrayList<>();
        for(OrderSpecification instance: userOrder){
            product = productDao.retrieve(instance.getProductId());
            if(instance.getProductQuantity() > product.getQuantity() ){
                notAvailableProducts.add(new OrderSpecification(instance.getProductId(), product.getQuantity()));
            }
        }
        return notAvailableProducts;
    }
    public void decreaseUserBalance(String userId, double totalCash ){
        UserDAO userDao = new UserDAO();
        User user = userDao.retrieve(userId);
        double userBalance = user.getCreditLimit() - totalCash;
        user.setCreditLimit(userBalance);
        userDao.update(user);
    }
    
    
    //Jemmy
    
    
}

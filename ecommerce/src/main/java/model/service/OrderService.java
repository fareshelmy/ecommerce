/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import model.dao.UserDAO;
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
    
    
    //Jemmy
}

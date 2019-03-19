/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import model.dao.implementations.UserDAOImpl;
import model.dao.interfaces.UserDAO;
import model.entity.User;

/**
 *
 * @author FARES-LAP
 */
public class Main {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAOImpl();
        userDAO.persist(new User("uwhuiw", "fares", "wuye", 100));
    }
}

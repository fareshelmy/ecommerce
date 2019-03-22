/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao.interfaces;

import model.entity.User;

/**
 *
 * @author FARES-LAP
 */
public interface UserDAO {

    void persist(User user);

    User retrieve(String email);

    void update(User user);

    void delete(User user);
}

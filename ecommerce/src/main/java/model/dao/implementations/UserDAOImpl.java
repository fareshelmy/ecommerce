/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao.implementations;

import model.dao.interfaces.UserDAO;
import model.entity.MySessionFactory;
import model.entity.User;
import org.hibernate.Session;

/**
 *
 * @author FARES-LAP
 */
public class UserDAOImpl implements UserDAO {

    @Override
    public void persist(User user) {
        Session session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        session.persist(user);
        session.getTransaction().commit();
        MySessionFactory.closeSession(session);
    }

    @Override
    public User retrieve(String email) {
        Session session = MySessionFactory.getHibernateSession();
        User user = (User) session.get(User.class, email);
        MySessionFactory.closeSession(session);
        return user;
    }

    @Override
    public void update(User user) {
        Session session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
        MySessionFactory.closeSession(session);
    }

    @Override
    public void delete(User user) {
        Session session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        session.delete(user);
        session.getTransaction().commit();
        MySessionFactory.closeSession(session);
    }

}

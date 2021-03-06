/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.entity.Order;
import model.entity.User;
import model.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Lamiaa Abdrabou
 */
public class OrderDAO implements DAO<Order> {

    private Session session;

    public OrderDAO() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    private void getSession() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
    }

    @Override
    public void persist(Order order) {
        getSession();
        session.getTransaction().begin();
        session.persist(order);
        session.getTransaction().commit();
    }

    @Override
    public void update(Order order) {
        getSession();
        session.getTransaction().begin();
        session.saveOrUpdate(order);
        session.getTransaction().commit();
    }

    @Override
    public void delete(Order order) {
        getSession();
        session.getTransaction().begin();
        session.delete(order);
        session.getTransaction().commit();
    }

    @Override
    public Order retrieve(Object primaryKey) {
        getSession();
        int key = (int) primaryKey;
        session.getTransaction().begin();
        Order order = (Order) session.get(model.entity.Order.class, key);
        session.getTransaction().commit();
        return order;
    }

    @Override
    public List<Order> getAll(Object entity) {
        getSession();
//        User user = (User) session.get(model.entity.User.class, order.getUser().getEmail());
//        Another way of doing this
//        Criteria orderCriteria = session.createCriteria(model.entity.Order.class).createAlias("user", "u").add(Restrictions.eq("u.email", user.getEmail()));
        User user = (User) entity;
        Criteria orderCriteria = session.createCriteria(model.entity.Order.class, "o");
        Criteria userCriteria = orderCriteria.createCriteria("user", "u");
        userCriteria.add(Restrictions.eq("u.email", user.getEmail()));
        return userCriteria.list();
    }

    @Override
    public List<Order> getByColumnNames(String[] columnNames, Object[] columnValues) {
        getSession();
        session.getTransaction().begin();
        Criteria orderCriteria = session.createCriteria(model.entity.Order.class);
        for (int i = 0; i < columnNames.length; i++) {
            if(columnValues[i] instanceof String)
                orderCriteria = orderCriteria.add(Restrictions.ilike(columnNames[i], columnValues[i]));
            else
                orderCriteria = orderCriteria.add(Restrictions.eq(columnNames[i], columnValues[i]));
        }
        List subsetOrder = orderCriteria.list();
        session.getTransaction().commit();
        return subsetOrder;
    }

    @Override
    public List<Order> retrieveAll() {
        session.getTransaction().begin();
        List<Order> orderList = session.createCriteria(Order.class).list();
        session.getTransaction().commit();
        return orderList;
    }
    
    public List<Order> retrieveUserOrders(String userEmail){
        getSession();
        session.getTransaction().begin();
        Criteria orderCriteria = session.createCriteria(Order.class);
        orderCriteria = orderCriteria.createAlias("user", "u").add(Restrictions.eq("u.email", userEmail));
        List<Order> userOrders = orderCriteria.list();
        session.getTransaction().commit();
        return userOrders;
    }
    
}
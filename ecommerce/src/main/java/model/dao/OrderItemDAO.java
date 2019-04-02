/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.entity.Order;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import model.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Mayada Khaled
 */
public class OrderItemDAO implements DAO<OrderItem> {

    private Session session;

    public OrderItemDAO() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    private void getSession() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
    }

    @Override
    public void persist(OrderItem orderItem) {
        getSession();
        session.getTransaction().begin();
        session.persist(orderItem);
        session.getTransaction().commit();
    }

    @Override
    public void update(OrderItem orderItem) {
        getSession();
        session.getTransaction().begin();
        session.saveOrUpdate(orderItem);
        session.getTransaction().commit();
    }

    @Override
    public void delete(OrderItem orderItem) {
        getSession();
        session.getTransaction().begin();
        session.delete(orderItem);
        session.getTransaction().commit();
    }

    @Override
    public OrderItem retrieve(Object primaryKey) {
        getSession();
        OrderItemId orderItemId = (OrderItemId) primaryKey;
        session.getTransaction().begin();
        OrderItem orderItem = (OrderItem) session.get(OrderItem.class, orderItemId);
        session.getTransaction().commit();
        return orderItem;
    }

    @Override
    public List<OrderItem> getByColumnNames(String[] columnNames, String[] columnValues) {
        getSession();
        session.getTransaction().begin();
        Criteria orderItemCriteria = session.createCriteria(model.entity.OrderItem.class);
        for (int i = 0; i < columnNames.length; i++) {
            orderItemCriteria = orderItemCriteria.add(Restrictions.eq(columnNames[i], columnValues[i]));
        }
        List subsetOrderItem = orderItemCriteria.list();
        session.getTransaction().commit();
        return subsetOrderItem;
    }
    @Override
    public List<OrderItem> getAll(Object orderitem) {
        getSession();
        OrderItem orderItem = (OrderItem) orderitem;
        session.getTransaction().begin();
        Criteria orderItemCriteria = session.createCriteria(model.entity.OrderItem.class);
        orderItemCriteria = orderItemCriteria.add(Restrictions.idEq(orderItem.getId()));
        List<OrderItem> allUser = orderItemCriteria.list();
        session.getTransaction().commit();
        return allUser;
    }

    @Override
    public List<OrderItem> retrieveAll() {
        session.getTransaction().begin();
        List<OrderItem> orderItemList = session.createCriteria(OrderItem.class).list();
        session.getTransaction().commit();
        return orderItemList;
    }

}
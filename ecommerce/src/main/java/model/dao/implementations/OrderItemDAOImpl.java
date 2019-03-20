/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao.implementations;

import model.dao.interfaces.OrderItemDAO;
import model.entity.MySessionFactory;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import org.hibernate.Session;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Mayada Khaled
 */
public class OrderItemDAOImpl implements OrderItemDAO {

    Session session;

    public OrderItemDAOImpl() {
        
    }

    @Override
    public void persist(OrderItem orderItem) {
        System.out.println(orderItem.getId()+" the new object that is going to be persisted ");
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        session.persist(orderItem);
        System.out.println("persisted ");
        
        session.getTransaction().commit();
        
        MySessionFactory.closeSession(session);
    }

    @Override
    public void delete(OrderItem orderItem) {
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();

        Query query = session.createQuery("delete OrderItem where id = :ID");
        query.setParameter("ID", orderItem.getId());

        query.executeUpdate();

        session.getTransaction().commit();
         MySessionFactory.closeSession(session);

    }

    @Override
    public void update(OrderItem orderItem) {
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        OrderItem newOrderItem;
        System.out.println(orderItem.getQuantity() +" old value");
        Criteria query = session.createCriteria(OrderItem.class)
                .add(Restrictions.eq("id", orderItem.getId()));
        newOrderItem = (OrderItem) query.uniqueResult();

        newOrderItem.setOrder(orderItem.getOrder());
        newOrderItem.setProduct(orderItem.getProduct());
        newOrderItem.setQuantity(orderItem.getQuantity());
        newOrderItem.setTotal(orderItem.getTotal());

        session.saveOrUpdate(newOrderItem);
        
        session.getTransaction().commit();
        System.out.println(orderItem.getQuantity() +" new value");
         MySessionFactory.closeSession(session);
    }

    @Override
    public OrderItem retrieveOrderItem(OrderItemId id) {
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        OrderItem newOrderItem;
        Criteria query = session.createCriteria(OrderItem.class)
                    .add(Restrictions.eq("id", id));
        System.out.println("criteria");
        newOrderItem = (OrderItem) query.uniqueResult();
                System.out.println(newOrderItem.getTotal());

        session.getTransaction().commit();
        // MySessionFactory.closeSession(session);
        return newOrderItem;
    }

}

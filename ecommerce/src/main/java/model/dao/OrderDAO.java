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
public class OrderDAO implements DAO<Order>{
    private Session session;
    public OrderDAO(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
     private void getSession(){
        if(!session.isOpen())
            session = HibernateUtil.getSessionFactory().getCurrentSession();
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
        int key = (int)primaryKey;
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
        userCriteria.add(Restrictions.eq("u.email" ,user.getEmail()));
        return userCriteria.list();
    }

    @Override
    public List<Order> getByColumnNames(Object primaryKey, List<String> columnNames) {
        getSession();
        Criteria orderCriteria = session.createCriteria(model.entity.Order.class);
        ProjectionList selectedColumns = Projections.projectionList();
         for(int i = 0; i<columnNames.size(); i++){
            selectedColumns.add(Projections.property(columnNames.get(i)));
        }
        orderCriteria = orderCriteria.setProjection(selectedColumns);
        return orderCriteria.list();
    }
   
}



    /*
    Previous Back Up Implementation
    @Override
    public Object mapToEntity(Order dtoOrder){
        model.entity.Order entityOrder = new model.entity.Order();
        entityOrder.setId(dtoOrder.getId());
        entityOrder.setUser(dtoOrder.getUser());
        entityOrder.setTimestamp(dtoOrder.getTimestamp());
        Set<model.entity.OrderItem> orderContent = new HashSet<model.entity.OrderItem>(0);
        OrderItemDAO helper = new OrderItemDAO();
        dtoOrder.getOrderItems().forEach((dtoOrderItem)->{
            orderContent.add((model.entity.OrderItem)helper.mapToEntity(dtoOrderItem));
        });
        entityOrder.setOrderItems(orderContent);
        return entityOrder;
    }
    @Override
    public Order mapToDTO(Object obj) {
        model.entity.Order entityOrder = (model.entity.Order)obj;
        Order dtoOrder = new Order();
        dtoOrder.setId(entityOrder.getId());
        dtoOrder.setUser(entityOrder.getUser());
        dtoOrder.setTimestamp(entityOrder.getTimestamp());
        Set<OrderItem> orderContent = new HashSet<OrderItem>(0);
        OrderItemDAO helper = new OrderItemDAO();
        entityOrder.getOrderItems().forEach((entityOrderItem)->{
            orderContent.add(helper.mapToDTO(entityOrderItem));
        });
        dtoOrder.setOrderItems(orderContent);
        return dtoOrder;
    }
 //DTO projections using ResultTransformer and JPQL
    //transform the result set using the setResultTransformer method of the Hibernate-specific org.hibernate.query.Query interface which you can unwrap from the JPA Query.
    public List<CustomOrderDTO> getCustomOrderDTO(Object primaryKey, List<Object> columnNames){
        EntityManagerFactory entityManagerFactory = new EntityManagerFactoryImpl(persistenceUnitName, sessionFactory, settings, configurationValues, cfg);
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        StringBuilder orderQuery = new StringBuilder( "select");
        for(int i = 0; i<columnNames.size();i++){
            if(i==columnNames.size()-1)
                orderQuery.append("o." + columnNames.get(i));
            else
                orderQuery.append("o." + columnNames.get(i) + ",");
        }
        orderQuery.append("from model.entity.Order o");
        orderQuery.append("where o.id= :orderId");
        List<CustomOrderDTO> customOrderDTOs =  entityManager.createQuery(orderQuery.toString())
                .setParameter("orderId", (int)primaryKey)
//                .unwrap(org.hibernate.query.Query.class)
//                .setResultTransformer(Transformers.aliasToBean(CustomOrderDTO.class))
                .getResultList();
        return customOrderDTOs;
    }
    */
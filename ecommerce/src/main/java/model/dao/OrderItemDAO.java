/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import model.entity.Product;
import model.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
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
    public List<OrderItem> getByColumnNames(String[] columnNames, Object[] columnValues) {
        getSession();
        session.getTransaction().begin();
        Criteria orderItemCriteria = session.createCriteria(model.entity.OrderItem.class);
        for (int i = 0; i < columnNames.length; i++) {
            if(columnValues[i] instanceof String)
                orderItemCriteria = orderItemCriteria.add(Restrictions.ilike(columnNames[i], columnValues[i]));
            else
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
        getSession();
        session.getTransaction().begin();
        List<OrderItem> orderItemList = session.createCriteria(OrderItem.class).list();
        session.getTransaction().commit();
        return orderItemList;
    }
    public List<Product> getTopSelling(String categoryName, String customize){
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(OrderItem.class);
        productCriteria = productCriteria.setProjection(Projections.projectionList()
            .add(Projections.sum("quantity").as("total"))
            .add(Projections.groupProperty("product"))).setFetchMode("product", FetchMode.EAGER)
            .addOrder(org.hibernate.criterion.Order.desc("total"));
        List<Product> categorizedProducts = new ArrayList<>();
        if(categoryName.equals("All Categories")){
                Iterator results = productCriteria.list().iterator();
                while(results.hasNext()){
                    Object[] result = (Object[])results.next();
                    Product product = (Product)result[1];
                        categorizedProducts.add(product);
                }
        }else{
            Iterator results = productCriteria.list().iterator();
            while(results.hasNext()){
                Object[] result = (Object[])results.next();
                Product product = (Product)result[1];
                if(product.getCategory().getName().startsWith(categoryName)){
                    categorizedProducts.add(product);
                }
            }
        }
        for(Product product:categorizedProducts){
            product.getName();
            product.getCategory().getName();
        }
        session.getTransaction().commit();
        return categorizedProducts;
           
    }
    public double getCategorySales(String categoryName){
        getSession();
        session.getTransaction().begin();
        Criteria orderItemCriteria = session.createCriteria(OrderItem.class)
                .createAlias("product", "prod")
                .createAlias("prod.category", "cat")
                .add(Restrictions.ilike("cat.name", categoryName))
                .setProjection(Projections.sum("total"));  
        List temp = orderItemCriteria.list();
        double result = 0.0;
        if(temp == null || temp.get(0) == null){
            result = 0.0;
        }else{
            result = (double)temp.get(0);
        }
        session.getTransaction().commit();
        return result;
    }
    public List<OrderItem> retrieveOrderItems(Integer orderId){
        getSession();
        session.getTransaction().begin();
        Criteria orderCriteria = session.createCriteria(OrderItem.class);
        orderCriteria = orderCriteria.createAlias("order", "o").add(Restrictions.eq("o.id", orderId)).setFetchMode("order", FetchMode.EAGER).setFetchMode("product", FetchMode.EAGER);;
        List<OrderItem> orderItems = orderCriteria.list();
        session.getTransaction().commit();
        return orderItems;
    }
}
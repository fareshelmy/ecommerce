/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import model.entity.Product;
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
    public OrderItemDAO(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    private void getSession(){
        if(!session.isOpen())
            session = HibernateUtil.getSessionFactory().getCurrentSession();
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
    public List<OrderItem> getByColumnNames(Object primaryKey, List<String> columnNames) {
        getSession();
        OrderItemId key = (OrderItemId) primaryKey;
        session.getTransaction().begin();
        Criteria orderItemCriteria = session.createCriteria(model.entity.OrderItem.class);
        ProjectionList selectedColumns = Projections.projectionList();
         for(int i = 0; i<columnNames.size(); i++){
            selectedColumns.add(Projections.property(columnNames.get(i)));
        }
        orderItemCriteria = orderItemCriteria.setProjection(selectedColumns);
        orderItemCriteria = orderItemCriteria.add(Restrictions.idEq(key));
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
    public List<OrderItem> getByOrder(String[] columnNames, Object[] columnValues){
        getSession();
        session.getTransaction().begin();
        Criteria orderItemCriteria = session.createCriteria(OrderItem.class).createCriteria("order");
        List<OrderItem> orderItems = orderItemCriteria.list();
        session.getTransaction().commit();
        return orderItems;
    }
    //*Note: This function will return all the order Product_ids
    public List<Product> getOrderProducts(int orderId){
        session.getTransaction().begin();
        getSession();
        Criteria orderItemCriteria = session.createCriteria(OrderItem.class);
        Criteria orderCriteria = orderItemCriteria.createAlias("order", "o");
        orderCriteria = orderCriteria.add(Restrictions.eq("o.id", orderId));
        List<Product> orderProducts = orderItemCriteria.setProjection(Projections.property("product")).list();
//        Criteria productCriteria = orderItemCriteria.createCriteria("product");
        session.getTransaction().commit();
        return orderProducts;
    }
}






    /*implements DAO<OrderItem>
    Session session;
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
    public OrderItem retrieve(Object primaryKey) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<OrderItem> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<OrderItem> getByColumnNames(Object primaryKey, List<String> columnNames) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
    public void update(OrderItem orderItem) {
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        model.entity.OrderItem newOrderItem;
        System.out.println(orderItem.getQuantity() +" old value");
        Criteria query = session.createCriteria(model.entity.OrderItem.class)
                .add(Restrictions.eq("id", orderItem.getId()));
        newOrderItem = (model.entity.OrderItem) query.uniqueResult();

        newOrderItem.setOrder(orderItem.getOrder());
        newOrderItem.setProduct(orderItem.getProduct());
        newOrderItem.setQuantity(orderItem.getQuantity());
        newOrderItem.setTotal(orderItem.getTotal());

        session.saveOrUpdate(newOrderItem);
        
        session.getTransaction().commit();
        System.out.println(orderItem.getQuantity() +" new value");
        MySessionFactory.closeSession(session);
    }
*/

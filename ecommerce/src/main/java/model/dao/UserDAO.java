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
 * @author FARES-LAP
 */
public class UserDAO implements DAO<User>{
    private Session session;
    public UserDAO(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    private void getSession(){
        if(!session.isOpen())
            session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    @Override
    public void persist(User user) {
       getSession();
       session.getTransaction().begin();
       session.persist(user);
       session.getTransaction().commit();
       
    }

    @Override
    public void update(User user) {
        getSession();
        session.getTransaction().begin();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
    }

    @Override
    public void delete(User user) {
        getSession();
        session.getTransaction().begin();
        session.delete(user);
        session.getTransaction().commit();
    }

    @Override
    public User retrieve(Object primaryKey) {
        getSession();
        String key = (String) primaryKey;
        session.getTransaction().begin();
        User user = (User) session.get(model.entity.User.class, key);
        session.getTransaction().commit();
        return user;
    }

    @Override
    public List<User> getByColumnNames(Object primaryKey, List<String> columnNames) {
        getSession();
        String key = (String) primaryKey;
        session.getTransaction().begin();
        Criteria userCriteria = session.createCriteria(model.entity.User.class);
        ProjectionList selectedColumns = Projections.projectionList();
         for(int i = 0; i<columnNames.size(); i++){
            selectedColumns.add(Projections.property(columnNames.get(i)));
        }
        userCriteria = userCriteria.setProjection(selectedColumns);
        userCriteria = userCriteria.add(Restrictions.idEq(key));
        List subsetUser = userCriteria.list();
        session.getTransaction().commit();
        //here I return the list as a whole which represent a list of array of objects 
        //we should agree about the fields to be returned to constructor a user from these fields
        /*Object[] details = (Object[]) subsetUser.get(0);
        User user = new User();
        Map<String, String> properties;
        try {
            properties = BeanUtils.describe(user);
            for(int i = 0; i<columnNames.size();i++){
                BeanUtils.copyProperty(user, columnNames.get(i), details[i]);
                BeanUtils.populate(user, properties);
            }     
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchMethodException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(user.getEmail());
        System.out.println(user.getUsername());
        System.out.println(user.getPassword());
        */
        return subsetUser;
    }

    @Override
    public List<User> getAll(Object entity) {
        getSession();
        User user = (User) entity;
        session.getTransaction().begin();
        Criteria userCriteria = session.createCriteria(model.entity.User.class);
        userCriteria = userCriteria.add(Restrictions.eq("email", user.getEmail()));
        List<User> allUser = userCriteria.list();
        session.getTransaction().commit();
        return allUser;
    }
    public List<Order> getUserOrders(String userEmail){
        getSession();
        session.getTransaction().begin();
        Criteria orderCriteria = session.createCriteria(Order.class);
        Criteria userCriteria = orderCriteria.createAlias("user", "u");
        userCriteria.add(Restrictions.eq("u.email", userEmail));
        List<Order> userOrders = orderCriteria.list();
        session.getTransaction().commit();
        return userOrders;
    }
}

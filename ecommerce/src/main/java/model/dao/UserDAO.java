/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.lang.reflect.Field;
import java.util.List;
import javassist.expr.Instanceof;
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
public class UserDAO implements DAO<User> {

    private Session session;

    public UserDAO() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    private void getSession() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
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
        for (int i = 0; i < columnNames.size(); i++) {
            selectedColumns.add(Projections.property(columnNames.get(i)));
        }
        userCriteria = userCriteria.setProjection(selectedColumns);
        userCriteria = userCriteria.add(Restrictions.idEq(key));
        List subsetUser = userCriteria.list();
        session.getTransaction().commit();
        //here I return the list as a whole which represent a list of array of objects 
        //we should agree about the fields to be returned to constructor a user from these fields
//        Object[] details = (Object[]) subsetUser.get(0);
//        for(int i =0;i<details.length;i++){
//            System.out.println(details[i]);
//        }
//        System.out.println(subsetUser.get(0).getClass().getName());

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

    @Override
    public List<User> retrieveAll() {
        session.getTransaction().begin();
        List<User> userList = session.createCriteria(User.class).list();
        session.getTransaction().commit();
        return userList;
    }

}
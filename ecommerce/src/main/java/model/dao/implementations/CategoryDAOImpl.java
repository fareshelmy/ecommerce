/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao.implementations;

import java.util.List;
import model.dao.interfaces.CategoryDAO;
import model.entity.Category;
import model.entity.MySessionFactory;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author zainab
 */
public class CategoryDAOImpl implements CategoryDAO {

   // MySessionFactory factory;
    Session session;

    public CategoryDAOImpl() {
        //session = MySessionFactory.getHibernateSession();
    }

    @Override
    public void persist(Category category) {
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        session.persist(category);
        session.getTransaction().commit();
        MySessionFactory.closeSession(session);
    }

    @Override
    public List<Category> retrieveByName(String product_name) {
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        Criteria query = session.createCriteria(Category.class)
                .add(Restrictions.like("name", product_name));
        List categoryNames = query.list();

        if (null != categoryNames && categoryNames.size() > 0) {
            session.getTransaction().commit();
            MySessionFactory.closeSession(session);
            return categoryNames;
            
        }
        MySessionFactory.closeSession(session);
        return null;
    }

    @Override
    public void update(Category category) {
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        Category newCategory;
        Criteria query = session.createCriteria(Category.class).add(Restrictions.eq("id", category.getId()));
        newCategory = (Category) query.uniqueResult();
        newCategory.setName(category.getName());
        session.saveOrUpdate(newCategory);
        session.getTransaction().commit();
         MySessionFactory.closeSession(session);  
    }

    @Override
    public void delete(int id) {
        session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        Query query = session.createQuery("delete Category where id = :ID");
        query.setParameter("ID", id);
        query.executeUpdate();
         session.getTransaction().commit();
         MySessionFactory.closeSession(session); 
    }
}

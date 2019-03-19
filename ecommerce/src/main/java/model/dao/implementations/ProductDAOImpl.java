package model.dao.implementations;

import java.util.List;
import model.dao.interfaces.ProductDAO;
import model.entity.MySessionFactory;
import model.entity.Product;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Mohamed Jamal
 */
public class ProductDAOImpl implements ProductDAO {

    @Override
    public void persistProduct(Product product) {
        Session session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        session.persist(product);
        session.getTransaction().commit();
        MySessionFactory.closeSession(session);

    }

    @Override
    public void updateProduce(Product product) {
        Session session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        session.saveOrUpdate(product);
        session.getTransaction().commit();
        MySessionFactory.closeSession(session);
    }

    @Override
    public void deleteProduct(Product product) {
        Session session = MySessionFactory.getHibernateSession();
        session.beginTransaction();
        session.delete(product);
        session.getTransaction().commit();
        MySessionFactory.closeSession(session);
    }

    @Override
    public Product retrieveProductById(int id) {

        Session session = MySessionFactory.getHibernateSession();
        Criteria criteria = session.createCriteria(Product.class);
        criteria.add(Restrictions.eq("id", id));
        Product product = (Product) criteria.uniqueResult();
        MySessionFactory.closeSession(session);

        return product;
    }

    @Override
    public List<Product> retrieveProductsByCategory(String category) {
        Session session = MySessionFactory.getHibernateSession();
        Criteria criteria = session.createCriteria(Product.class);
        criteria.add(Restrictions.eq("category", category));
        List<Product> productsByCategory = criteria.list();
        MySessionFactory.closeSession(session);

        return productsByCategory;
    }

}

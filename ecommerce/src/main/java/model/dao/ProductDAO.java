package model.dao;

import java.util.List;
import model.entity.Product;
import model.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Mohamed Jamal
 */
public class ProductDAO implements DAO<Product> {

    private Session session;

    public ProductDAO() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    private void getSession() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
    }

    @Override
    public void persist(Product product) {
        getSession();
        session.getTransaction().begin();
        session.persist(product);
        session.getTransaction().commit();
    }

    @Override
    public void update(Product product) {
        getSession();
        session.getTransaction().begin();
        session.saveOrUpdate(product);
        session.getTransaction().commit();

    }

    @Override
    public void delete(Product product) {
        getSession();
        session.getTransaction().begin();
        session.delete(product);
        session.getTransaction().commit();

    }

    @Override
    public Product retrieve(Object primaryKey) {
        int key = (int) primaryKey;
        getSession();
        session.getTransaction().begin();
        Product product = (Product) session.get(Product.class, key);
        session.getTransaction().commit();
        return product;
    }

    @Override
    public List<Product> getByColumnNames(Object primaryKey, List<String> columnNames) {
        getSession();
        int key = (int) primaryKey;
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(model.entity.Product.class);
        ProjectionList selectedColumns = Projections.projectionList();
        for (int i = 0; i < columnNames.size(); i++) {
            selectedColumns.add(Projections.property(columnNames.get(i)));
        }
        productCriteria = productCriteria.setProjection(selectedColumns);
        productCriteria = productCriteria.add(Restrictions.idEq(key));
        List subsetProduct = productCriteria.list();
        session.getTransaction().commit();
        return subsetProduct;
    }

    @Override
    public List<Product> getAll(Object prod) {
        getSession();
        Product product = (Product) prod;
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(model.entity.Product.class);
        productCriteria = productCriteria.add(Restrictions.eq("id", product.getId()));
        List<Product> allUser = productCriteria.list();
        session.getTransaction().commit();
        return allUser;
    }

    @Override
    public List<Product> retrieveAll() {
        session.getTransaction().begin();
        List<Product> productList = session.createCriteria(Product.class).list();
        session.getTransaction().commit();
        return productList;
    }

}
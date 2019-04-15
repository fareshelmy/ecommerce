package model.dao;

import java.util.List;
import model.entity.Category;
import model.entity.Product;
import model.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Zainab
 */
public class CategoryDAO implements DAO<Category> {

    int numberOfPages;
    private Session session;

    public CategoryDAO() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    private void getSession() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
    }

    @Override
    public void persist(Category category) {
        getSession();
        session.getTransaction().begin();
        session.persist(category);
        session.getTransaction().commit();
    }

    @Override
    public void update(Category category) {
        getSession();
        session.beginTransaction();
        session.saveOrUpdate(category);
        session.getTransaction().commit();
    }

    @Override
    public void delete(Category category) {
        getSession();
        session.getTransaction().begin();
        session.delete(category);
        session.getTransaction().commit();
    }
//must be retrieved by name not id

    @Override
    public Category retrieve(Object primaryKey) {
        String key = (String) primaryKey;
        session.getTransaction().begin();
        Category category = (Category) session.createCriteria(Category.class)
                .add(Restrictions.ilike("name", key))
                .uniqueResult();
        session.getTransaction().commit();
        return category;
    }

    @Override
    public List<Category> getByColumnNames(String[] columnNames, Object[] columnValues) {
        getSession();
        session.getTransaction().begin();
        Criteria categoryCriteria = session.createCriteria(model.entity.Category.class);
        for (int i = 0; i < columnNames.length; i++) {
            categoryCriteria = categoryCriteria.add(Restrictions.eq(columnNames[i], columnValues[i]));
        }
        List subsetCategory = categoryCriteria.list();
        session.getTransaction().commit();
        return subsetCategory;
    }

    public List<Product> getCategoryProducts(String categoryName, String customize) {
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(Product.class);
        Criteria categoryCriteria = productCriteria.createAlias("category", "c");
        categoryCriteria = categoryCriteria.add(Restrictions.ilike("c.name", categoryName, MatchMode.ANYWHERE));
        categoryCriteria = categoryCriteria.addOrder(Order.desc("entranceDate"));
        if (customize != null) {
            if (customize.equals("rating")) {
                categoryCriteria = categoryCriteria.addOrder(Order.desc(customize));
            } else if (customize.equals("price")) {
                categoryCriteria = categoryCriteria.addOrder(Order.asc(customize));
            }
        }
        List<Product> categoryProducts = productCriteria.list();
        session.getTransaction().commit();
        return categoryProducts;
    }

    public List<Product> getCategoryProducts(String categoryName, String customize, int showNumber, int pageNumber) {
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(Product.class);
        Criteria categoryCriteria = productCriteria.createAlias("category", "c");
        categoryCriteria = categoryCriteria.add(Restrictions.ilike("c.name", categoryName, MatchMode.ANYWHERE));
        categoryCriteria = categoryCriteria.addOrder(Order.desc("entranceDate"));
        if (customize != null) {
            if (customize.equals("rating")) {
                categoryCriteria = categoryCriteria.addOrder(Order.desc(customize));
            } else if (customize.equals("price")) {
                categoryCriteria = categoryCriteria.addOrder(Order.asc(customize));
            }
        }
        setNumberOfPages(productCriteria.list().size(), showNumber);
        if (showNumber != -1 && pageNumber != -1) {
            productCriteria = productCriteria.setFirstResult((pageNumber - 1) * showNumber).setMaxResults(showNumber);
        }
        List<Product> categoryProducts = productCriteria.list();
        session.getTransaction().commit();
        return categoryProducts;
    }

    public List<Product> retrieveByProductAndCategory(String categoryName, String productName) {
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(Product.class);
        productCriteria = productCriteria.add(Restrictions.ilike("name", productName, MatchMode.ANYWHERE));
        Criteria categoryCriteria = productCriteria.createAlias("category", "c");
        categoryCriteria = categoryCriteria.add(Restrictions.ilike("c.name", categoryName, MatchMode.ANYWHERE));
        List<Product> categoryProducts = productCriteria.list();
        session.getTransaction().commit();
        return categoryProducts;
    }

    public List<Product> retrieveByProductAndCategory(String categoryName, String productName, int showNumber, int pageNumber) {
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(Product.class);
        productCriteria = productCriteria.add(Restrictions.ilike("name", productName, MatchMode.ANYWHERE));
        Criteria categoryCriteria = productCriteria.createAlias("category", "c");
        categoryCriteria = categoryCriteria.add(Restrictions.ilike("c.name", categoryName, MatchMode.ANYWHERE));
        setNumberOfPages(productCriteria.list().size(), showNumber);
        if (showNumber != -1 && pageNumber != -1) {
            productCriteria = productCriteria.setFirstResult((pageNumber - 1) * showNumber).setMaxResults(showNumber);
        }
        List<Product> categoryProducts = productCriteria.list();
        session.getTransaction().commit();
        return categoryProducts;
    }

    @Override
    public List<Category> getAll(Object cat) {
        getSession();
        Category category = (Category) cat;
        session.getTransaction().begin();
        Criteria categoryCriteria = session.createCriteria(model.entity.User.class);
        categoryCriteria = categoryCriteria.add(Restrictions.eq("id", category.getId()));
        List<Category> allUser = categoryCriteria.list();
        session.getTransaction().commit();
        return allUser;

    }

    @Override
    public List<Category> retrieveAll() {
        session.getTransaction().begin();
        List<Category> categoryList = session.createCriteria(Category.class).list();
        session.getTransaction().commit();
        return categoryList;
    }

    private void setNumberOfPages(int resultSize, int pageSize) {
        if ((resultSize * 1.0) / pageSize > 0) {
            numberOfPages = (int) (Math.ceil(resultSize / pageSize)) + 1;
        } else {
            numberOfPages = (int) (Math.ceil(resultSize / pageSize)) + 1;
        }
    }

    public int getNumberOfPages() {
        return numberOfPages;
    }
}

package model.dao;

import java.util.List;
import model.entity.Category;
import model.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Zainab
 */
public class CategoryDAO implements DAO<Category> {

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
        getSession();
        String key = (String) primaryKey;
        session.getTransaction().begin();
        Category category = (Category) session.createCriteria(Category.class)
                .add(Restrictions.ilike("name", key))
                .uniqueResult();
        session.getTransaction().commit();
        return category;
    }

    @Override
    public List<Category> getByColumnNames(Object primaryKey, List<String> columnNames) {
        getSession();
        int key = (int) primaryKey;
        session.getTransaction().begin();
        Criteria categoryCriteria = session.createCriteria(model.entity.Category.class);
        ProjectionList selectedColumns = Projections.projectionList();
        for (int i = 0; i < columnNames.size(); i++) {
            selectedColumns.add(Projections.property(columnNames.get(i)));
        }
        categoryCriteria = categoryCriteria.setProjection(selectedColumns);
        categoryCriteria = categoryCriteria.add(Restrictions.idEq(key));
        List subsetCategory = categoryCriteria.list();
        session.getTransaction().commit();
        return subsetCategory;
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

}

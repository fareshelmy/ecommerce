package model.dao;

import java.util.List;
import model.entity.Order;
import model.entity.Product;
import model.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Mohamed Jamal
 */
public class ProductDAO implements DAO<Product> {

    private Session session;
    private int numberOfPages;
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
    public List<Product> getByColumnNames(String[] columnNames, Object[] columnValues) {
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(model.entity.Product.class);
        for (int i = 0; i < columnNames.length; i++) {
            if (columnValues[i] instanceof String) {
                productCriteria = productCriteria.add(Restrictions.ilike(columnNames[i], columnValues[i].toString(), MatchMode.ANYWHERE));
            } else {
                productCriteria = productCriteria.add(Restrictions.eq(columnNames[i], columnValues[i]));
            }
        }
        List subsetProduct = productCriteria.list();
        session.getTransaction().commit();
        return subsetProduct;
    }
    
    public List<Product> getByColumnNames(String[] columnNames, Object[] columnValues, int showNumber, int pageNumber) {
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(model.entity.Product.class);
        for (int i = 0; i < columnNames.length; i++) {
            if (columnValues[i] instanceof String) {
                productCriteria = productCriteria.add(Restrictions.ilike(columnNames[i], columnValues[i].toString(), MatchMode.ANYWHERE));
            } else {
                productCriteria = productCriteria.add(Restrictions.eq(columnNames[i], columnValues[i]));
            }
        }
        setNumberOfPages(productCriteria.list().size(), showNumber);
        if(showNumber != -1 && pageNumber != -1){
            productCriteria = productCriteria.setFirstResult((pageNumber-1)*showNumber).setMaxResults(showNumber);
        }
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
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(Product.class).addOrder(org.hibernate.criterion.Order.desc("entranceDate")).setFetchMode("category", FetchMode.EAGER);
        List<Product> productList = productCriteria.list(); 
        session.getTransaction().commit();
        return productList;
    }
    public List<Product> retrieveAll(String customize, int showNumber, int pageNumber){
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(Product.class).setFetchMode("category", FetchMode.EAGER);
        if(customize != null){
            if(customize.equals("rating"))
                productCriteria.addOrder(org.hibernate.criterion.Order.desc(customize));
             if(customize.equals("price")){
                System.out.println("in RetrieveAll customize = "+customize);
                productCriteria.addOrder(org.hibernate.criterion.Order.asc(customize));
            }
        }else{
             productCriteria.addOrder(org.hibernate.criterion.Order.desc("entranceDate"));
        }
        setNumberOfPages(productCriteria.list().size(), showNumber);
        if(showNumber != -1 && pageNumber != -1){
            productCriteria = productCriteria.setFirstResult((pageNumber-1)*showNumber).setMaxResults(showNumber);
        }
        List<Product> productList = productCriteria.list(); 
        session.getTransaction().commit();
        return productList;
        
    }
    public List<Product> getByName(String name) {
       getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(model.entity.Product.class);
        productCriteria = productCriteria.add(Restrictions.ilike("name",  "%"+name+"%") );
        List subsetOrder = productCriteria.list();
        session.getTransaction().commit();
        return subsetOrder;
    }
     public List<Product> retrievePage(String customize,int pageNumber, int pageSize){
        getSession();
        session.getTransaction().begin();
        Criteria productCriteria = session.createCriteria(Product.class).setFetchMode("category", FetchMode.EAGER);
        if(customize != null){
            if(customize.equals("rating"))
                productCriteria.addOrder(org.hibernate.criterion.Order.desc(customize));
             if(customize.equals("price")){
                System.out.println("in RetrieveAll customize = "+customize);
                productCriteria.addOrder(org.hibernate.criterion.Order.asc(customize));
            }
        }else{
             productCriteria.addOrder(org.hibernate.criterion.Order.desc("entranceDate"));
        }
        
        productCriteria = productCriteria.setFirstResult((pageNumber-1)*pageSize).setMaxResults(pageSize);
        List<Product> productList = productCriteria.list(); 
        session.getTransaction().commit();
        return productList;
        
    }
    private void setNumberOfPages(int resultSize, int pageSize){
        if((resultSize*1.0)/pageSize > 0){
            numberOfPages = (int)(Math.ceil(resultSize/pageSize))+1;
        }else{
            numberOfPages = (int)(Math.ceil(resultSize/pageSize))+1;
        }
    }
    public int getNumberOfPages(){
        return numberOfPages;
    }

}

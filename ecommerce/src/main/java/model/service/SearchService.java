/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.List;
import model.dao.CategoryDAO;
import model.dao.OrderItemDAO;
import model.dao.ProductDAO;
import model.entity.Product;

/**
 *
 * @author Lamiaa Abdrabou
 */
public class SearchService {
    public List<Product> getNewProducts(String categoryName){
        if(categoryName.equals("All Categories")){
            ProductDAO productDao = new ProductDAO();
            return productDao.retrieveAll();
        }else {
            CategoryDAO categoryDao = new CategoryDAO();
            return categoryDao.getCategoryProducts(categoryName);
        }
    }
    public List<Product> getTopSelling(String categoryName){
        OrderItemDAO orderItemDao = new OrderItemDAO();
        return orderItemDao.getTopSelling(categoryName);  
 * @author FARES-LAP
 */
public class SearchService {
    public List<Product> getSearchResult(SearchCriteria searchCriteria){
        return null;
    }
}

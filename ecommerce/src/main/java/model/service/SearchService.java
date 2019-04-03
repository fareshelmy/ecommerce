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

    public List<Product> getNewProducts(String categoryName) {
        if (categoryName.equals("All Categories")) {
            ProductDAO productDao = new ProductDAO();
            return productDao.retrieveAll();
        } else {
            CategoryDAO categoryDao = new CategoryDAO();
            return categoryDao.getCategoryProducts(categoryName);
        }
    }

    public List<Product> getTopSelling(String categoryName) {
        OrderItemDAO orderItemDao = new OrderItemDAO();
        return orderItemDao.getTopSelling(categoryName);
    }

    public List<Product> getSearchResult(SearchCriteria searchCriteria) {
        CategoryDAO categoryDAO = new CategoryDAO();
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = null;
        String searchBarCategory = searchCriteria.getSearchBarCategory();
        String productSubString = searchCriteria.getProductSubString();
        List<String> selectedCategories = searchCriteria.getSelectedCategories();
        
        //customer entered a specific product
        if (productSubString != null && productSubString.length() > 0) {
            //customer specified a bar category
            if (!searchBarCategory.equalsIgnoreCase("All Products")) {
                products = categoryDAO.retrieveByProductAndCategory(searchBarCategory, productSubString);
            } // customer didn't specify a category
            else {
                products = productDAO.getByColumnNames(new String[]{"name"}, new String[]{productSubString});
            }
        }   //Customer didnt specify a product name, only category 
        else{
            //customer specified a bar category
            if (!searchBarCategory.equalsIgnoreCase("All Products")) {
                products = categoryDAO.getCategoryProducts(searchBarCategory);
            } // customer didn't specify a category
            else {
                products = productDAO.retrieveAll();
            }
            
        }
        return products;
    }
}

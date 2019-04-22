/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.ArrayList;
import model.dto.SearchCriteria;
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

    private int numberOfPages;

    public List<Product> getNewProducts(String categoryName, String customize) {

        if (categoryName.equals("All Categories")) {
            ProductDAO productDao = new ProductDAO();
            return productDao.retrieveAll(customize, -1, -1);
        } else {
            CategoryDAO categoryDao = new CategoryDAO();
            return categoryDao.getCategoryProducts(categoryName, customize);
        }
    }

    public List<Product> getTopSelling(String categoryName, String customize) {
        OrderItemDAO orderItemDao = new OrderItemDAO();
        return orderItemDao.getTopSelling(categoryName, customize);
    }

    public List<Product> getSearchResult(SearchCriteria searchCriteria, int showNumber, int pageNumber) {
        CategoryDAO categoryDAO = new CategoryDAO();
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = null;
        String searchBarCategory = searchCriteria.getSearchBarCategory();
        String productSubString = searchCriteria.getProductSubString();
        List<String> SelectedCategoriesList = searchCriteria.getSelectedCategories();

        //customer entered a specific product
        if (productSubString != null) {
            String productStringTrimmed = productSubString.trim();
            List<String> selectedCategories = searchCriteria.getSelectedCategories();

            //customer specified a bar category
            if (!searchBarCategory.equalsIgnoreCase("All Categories")) {
                products = categoryDAO.retrieveByProductAndCategory(searchBarCategory, productSubString, showNumber, pageNumber);
                setNumberOfPages(categoryDAO.getNumberOfPages());
            } // customer didn't specify a category
            else {
                products = productDAO.getByColumnNames(new String[]{"name"}, new String[]{productSubString}, showNumber, pageNumber);
                setNumberOfPages(productDAO.getNumberOfPages());

            }
        } //Customer didnt specify a product name, only category 
        else {
            //customer specified a bar category
            if (!searchBarCategory.equalsIgnoreCase("All Categories")) {
                products = categoryDAO.getCategoryProducts(searchBarCategory, null, showNumber, pageNumber);
                setNumberOfPages(categoryDAO.getNumberOfPages());
            } // customer didn't specify a category
            else {
                System.out.println("User doesnt specify neither a cat");
                products = productDAO.retrieveAll(null, showNumber, pageNumber);
                setNumberOfPages(productDAO.getNumberOfPages());
            }

        }
        return products;
    }

    public List<Product> getSearchResult(List<String> selectedCategoriesList,int showNumber) {
        List<Product> retrievedProductsList = new ArrayList<>();
        CategoryDAO categoryDAO = new CategoryDAO();

        if (selectedCategoriesList.isEmpty()) {
            retrievedProductsList = new ProductDAO().retrieveAll(null,showNumber,1);
        } else {
            for (String category : selectedCategoriesList) {
                
                retrievedProductsList.addAll(categoryDAO.getCategoryProducts(category, null,showNumber,1));
            }
        }

        return retrievedProductsList;
    }

    private void setNumberOfPages(int numberOfPages) {
        this.numberOfPages = numberOfPages;
    }

    public int getNumberOfPages() {
        return numberOfPages;
    }
}

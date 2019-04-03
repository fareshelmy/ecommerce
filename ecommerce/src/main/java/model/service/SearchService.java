/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.List;
import model.dao.CategoryDAO;
import model.entity.Product;

/**
 *
 * @author FARES-LAP
 */
public class SearchService {

    public List<Product> getSearchResult(SearchCriteria searchCriteria) {
        CategoryDAO categoryDAO = new CategoryDAO();
        String searchBarCategory = searchCriteria.getSearchBarCategory();
        String productSubString = searchCriteria.getProductSubString();
        List<String> selectedCategories = searchCriteria.getSelectedCategories();
        //customer entered a specific product
        if (productSubString.length() > 0) {
            //customer didn't specify a bar category
            if (searchBarCategory.equalsIgnoreCase("All Products")) {
                categoryDAO.retrieveByProductAndCategory(searchBarCategory, productSubString);
            }
            // customer didn't specify a category
            else{
                
            }
        }
        return null;
    }
}

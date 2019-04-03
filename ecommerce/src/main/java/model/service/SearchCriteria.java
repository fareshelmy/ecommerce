/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import java.util.List;

/**
 *
 * @author FARES-LAP
 */
public class SearchCriteria {

    private String searchBarCategory;
    private List<String> categories;
    private String productSubString;

    public SearchCriteria() {
    }

    public SearchCriteria(String searchBarCategory, List<String> categories, String productSubString) {
        this.searchBarCategory = searchBarCategory;
        this.categories = categories;
        this.productSubString = productSubString;
    }

    public String getSearchBarCategory() {
        return searchBarCategory;
    }

    public void setSearchBarCategory(String searchBarCategory) {
        this.searchBarCategory = searchBarCategory;
    }

    public List<String> getSelectedCategories() {
        return categories;
    }

    public void setSelectedCategories(List<String> categories) {
        this.categories = categories;
    }

    public String getProductSubString() {
        return productSubString;
    }

    public void setProductSubString(String productSubString) {
        this.productSubString = productSubString;
    }

}

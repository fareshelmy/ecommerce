/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao.implementations;

import java.util.List;
import model.entity.Category;

/**
 *
 * @author zainab
 */
public class NewClass {

    public static void main(String[] args) {
        Category category = new Category();
        category.setId(7);
        category.setName("Fresh_Food");

        CategoryDAOImpl categoryDAOImpl = new CategoryDAOImpl();
        categoryDAOImpl.persist(category);
        System.out.println("presist Done");

        List<Category> list = categoryDAOImpl.retrieveByName("Fresh_Food");
        for (Category category1 : list) {
            category1.getName();
        }
        System.out.println("retrieveByName Done");
        categoryDAOImpl.update(category);
        System.out.println("update Done");
        categoryDAOImpl.delete(2);
        System.out.println("deleted");
    }

}

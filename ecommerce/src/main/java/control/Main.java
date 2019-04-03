/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.math.BigDecimal;
import java.util.List;
import model.dao.CategoryDAO;
import model.dao.OrderItemDAO;
import model.dao.ProductDAO;
import model.dao.UserDAO;
import model.entity.OrderItem;
import model.entity.OrderItemId;
import model.entity.Product;
import model.entity.User;
import model.service.SearchService;


public class Main {

    public static void main(String[] args) {
        SearchService search = new SearchService();
        List<Product> products = search.getTopSelling("All Categories");
        for(Product product:products){
            System.out.println(product.getName());
        }
      
    }
}

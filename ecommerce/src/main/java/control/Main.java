/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.List;
import model.dao.OrderItemDAO;
import model.dao.ProductDAO;
import model.entity.Product;

/**
 *
 * @author Lamiaa Abdrabou
 */
public class Main {
    public static void main(String[] args){
        ProductDAO order = new ProductDAO();
        for(int i=1;i<6;i++){
        List<Product> first = order.retrievePage(null, i, 9);
        System.out.println(first.size());
        for(Product p:first){
            System.out.println(p.getName());
        }
        }
    }
}



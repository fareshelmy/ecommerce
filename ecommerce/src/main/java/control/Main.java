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
     OrderItemDAO order = new OrderItemDAO();
     double d = order.getCategorySales("Meat & Poultry");
     System.out.println("The Sales are: "+d);
    }
}



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.CategoryDAO;
import model.dao.OrderItemDAO;
import model.entity.Product;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/HomeServlet"})
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         OrderItemDAO salesCategoryPrecentage = new OrderItemDAO();
         
        double listOfMeatAndPoultry = salesCategoryPrecentage.getCategorySales("Meat & Poultry");
        double listOfSeafood = salesCategoryPrecentage.getCategorySales("Seafood" );
        double listOfFruitsAndVegetables = salesCategoryPrecentage.getCategorySales("Fruits & Vegetables");
        double listOfBakeryAndPastry = salesCategoryPrecentage.getCategorySales("Bakery & Pastry");
        double listOfCheeseAndDairyAndDeli = salesCategoryPrecentage.getCategorySales("Cheese, Dairy & Deli" );
        double listOfDessertsAndSweets = salesCategoryPrecentage.getCategorySales("Desserts & Sweets");
        
  
        request.setAttribute("Meat_oultrySize",listOfMeatAndPoultry);
        System.out.println("---------------------"+listOfMeatAndPoultry);
        request.setAttribute("SeafoodSize", listOfSeafood);
        request.setAttribute("FreshFruitsVegetablesHerbsSize",listOfFruitsAndVegetables );
        request.setAttribute("BakeryPastrySize",listOfBakeryAndPastry);
        request.setAttribute("CheeseDairyDeliSize", listOfCheeseAndDairyAndDeli);
        request.setAttribute("DessertsSweetsSize",listOfDessertsAndSweets);
        
        
         request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
    
    }
}
    


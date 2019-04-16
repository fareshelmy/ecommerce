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
         CategoryDAO categoryDAO = new CategoryDAO();
        List<Product> listOfMeatAndPoultry = categoryDAO.getCategoryProducts("Meat & Poultry", null);
        List<Product> listOfSeafood = categoryDAO.getCategoryProducts("Seafood" , null);
        List<Product> listOfFruitsAndVegetables = categoryDAO.getCategoryProducts("Fruits & Vegetables", null);
        List<Product> listOfBakeryAndPastry = categoryDAO.getCategoryProducts("Bakery & Pastry", null);
        List<Product> listOfCheeseAndDairyAndDeli = categoryDAO.getCategoryProducts("Cheese, Dairy & Deli", null );
        List<Product> listOfDessertsAndSweets = categoryDAO.getCategoryProducts("Desserts & Sweets", null);
        
//        int meatAndPoultry = 0,
//            seaFood =0, 
//            fruitsAndVegetables = 0,
//            bakeryAndPastry =0 ,
//            cheeseAndDairyAndDeli =0  , 
//            dessertsAndSweets =0;
//        
//        for (int i = 0; i < listOfMeatAndPoultry.size(); i++) 
//        {
//            if(listOfMeatAndPoultry.get(i).getQuantity() > meatAndPoultry)
//            {
//                meatAndPoultry = listOfMeatAndPoultry.get(i).getQuantity();
//            }
//            
//        }
//        
//        for (int i = 0; i < listOfSeafood.size(); i++) 
//        {
//            if(listOfSeafood.get(i).getQuantity() > seaFood)
//            {
//                seaFood=listOfSeafood.get(i).getQuantity();
//            }
//        }
//        
//        for (int i = 0; i < listOfFruitsAndVegetables.size(); i++) 
//        {
//             if(listOfFruitsAndVegetables.get(i).getQuantity() > fruitsAndVegetables)
//            {
//                fruitsAndVegetables = listOfFruitsAndVegetables.get(i).getQuantity();
//            }
//        }
//        
//        for (int i = 0; i < listOfBakeryAndPastry.size(); i++) 
//        {
//             if(listOfBakeryAndPastry.get(i).getQuantity() > bakeryAndPastry)
//            {
//                bakeryAndPastry = listOfBakeryAndPastry.get(i).getQuantity();
//            }
//        }
//        
//        for (int i = 0; i < listOfCheeseAndDairyAndDeli.size(); i++) 
//        {
//            if(listOfCheeseAndDairyAndDeli.get(i).getQuantity() > cheeseAndDairyAndDeli)
//            {
//                cheeseAndDairyAndDeli = listOfCheeseAndDairyAndDeli.get(i).getQuantity();
//            }
//        }
//        
//        for (int i = 0; i < listOfDessertsAndSweets.size(); i++) 
//        {
//             if(listOfDessertsAndSweets.get(i).getQuantity() > dessertsAndSweets)
//            {
//                dessertsAndSweets = listOfDessertsAndSweets.get(i).getQuantity();
//            }
//        }
//        
//        
//        
//        
//        request.setAttribute("Meat_oultry", meatAndPoultry);
//        request.setAttribute("Seafood", seaFood);
//        request.setAttribute("FreshFruitsVegetablesHerbs",fruitsAndVegetables );
//        request.setAttribute("BakeryPastry", bakeryAndPastry);
//        request.setAttribute("CheeseDairyDeli", cheeseAndDairyAndDeli);
//        request.setAttribute("DessertsSweets",dessertsAndSweets );
        
        
        request.setAttribute("Meat_oultrySize",45);
        System.out.println("---------------------"+listOfMeatAndPoultry.size());
        request.setAttribute("SeafoodSize", 55);
        request.setAttribute("FreshFruitsVegetablesHerbsSize",878 );
        request.setAttribute("BakeryPastrySize",76);
        request.setAttribute("CheeseDairyDeliSize", 98);
        request.setAttribute("DessertsSweetsSize",34);
        
        
         request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
    
    }
}
    


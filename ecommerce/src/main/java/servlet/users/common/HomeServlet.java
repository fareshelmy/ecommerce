/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.common;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dao.ProductDAO;
import model.entity.Product;
import model.service.SearchService;

/**
 *
 * @author Lamiaa Abdrabou
 */
//@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String newCategoryName = request.getParameter("newCategoryName");
        String topCategoryName = request.getParameter("topCategoryName");
        String customize = request.getParameter("customize");
        System.out.println("The search custom is "+customize);
        
        
        if(newCategoryName == null){
            newCategoryName = "All Categories";
        }
        if(topCategoryName == null){
            topCategoryName = "All Categories";
        }
        HttpSession httpSession = request.getSession(true);
        httpSession.setAttribute("newCategoryName", newCategoryName);
        httpSession.setAttribute("topCategoryName", topCategoryName);
        
        if(customize != null){
            if(customize.equals("rating"))
                httpSession.setAttribute("customize", "Top Rated"); 
            else if(customize.equals("price"))
                httpSession.setAttribute("customize", "Lowest Price");
            else{
                httpSession.setAttribute("customize", "Home");
                customize = null;
            }
        }else{
            httpSession.setAttribute("customize", "Home");
            customize = null;

        }
        SearchService searchService = new SearchService();
        
        List<Product> newProducts = searchService.getNewProducts(newCategoryName, customize);
        httpSession.setAttribute("newProducts", newProducts);
        System.out.println("The size of new Products "+newProducts.size());
       
        List<Product> topSellingProducts = searchService.getTopSelling(topCategoryName, customize);
        httpSession.setAttribute("topSellingProducts", topSellingProducts);
        System.out.println("The size of Top Selling Products "+topSellingProducts.size());        
         
        response.sendRedirect("/ecommerce/customer/pages/index.jsp");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String newCategoryName = request.getParameter("newCategoryName");
        String topCategoryName = request.getParameter("topCategoryName");
        String customize = request.getParameter("customize");
        System.out.println("The value of newCategoryName" + newCategoryName);
        System.out.println("The valu of top CategoName" + topCategoryName);
        if (newCategoryName == null) {
            newCategoryName = "All Categories";
        }
        if (topCategoryName == null) {
            topCategoryName = "All Categories";
        }
        HttpSession httpSession = request.getSession(true);
        SearchService searchService = new SearchService();

        List<Product> topSellingProducts = searchService.getTopSelling(newCategoryName, customize);
        httpSession.setAttribute("topSellingProducts", topSellingProducts);
        System.out.println("The size of Top Selling Products " + topSellingProducts.size());

        System.out.println(topCategoryName);
        List<Product> newProducts = searchService.getNewProducts(topCategoryName, customize);
        httpSession.setAttribute("newProducts", newProducts);
        System.out.println("The size of new Products " + newProducts.size());

        response.sendRedirect("/ecommerce/customer/pages/index.jsp");
    }

}
/*

*/

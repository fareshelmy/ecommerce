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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession httpSession = request.getSession(true);
        ProductDAO productDao = new ProductDAO();
        List<Product> products = productDao.retrieveAll();
        System.out.println(products.size());
        httpSession.setAttribute("products", products);
        httpSession.setAttribute("searchCategories", new ArrayList<String>());
        response.sendRedirect("/ecommerce/customer/pages/index.jsp");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String newCategoryName = request.getParameter("newCategoryName");
        String topCategoryName = request.getParameter("topCategoryName");
        System.out.println("The value of newCategoryName"+newCategoryName);
        System.out.println("The valu of top CategoName"+topCategoryName);
        if(newCategoryName == null){
            newCategoryName = "All Categories";
        }
        if(topCategoryName == null){
            topCategoryName = "All Categories";
        }
        HttpSession httpSession = request.getSession(true);
        SearchService searchService = new SearchService();
        
       
        List<Product> topSellingProducts = searchService.getTopSelling(newCategoryName);
        httpSession.setAttribute("topSellingProducts", topSellingProducts);
        System.out.println("The size of Top Selling Products "+topSellingProducts.size());        
        
        System.out.println(topCategoryName);
        List<Product> newProducts = searchService.getNewProducts(topCategoryName);
        httpSession.setAttribute("newProducts", newProducts);
        System.out.println("The size of new Products "+newProducts.size());
        
        response.sendRedirect("pages/index.jsp");
     }
    

}
/*

*/
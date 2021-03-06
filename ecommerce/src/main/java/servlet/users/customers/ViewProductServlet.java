/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.customers;

import servlet.users.admin.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dao.CategoryDAO;
import model.dao.ProductDAO;
import model.entity.Product;

/**
 *
 * @author FARES-LAP
 */
//@WebServlet(urlPatterns = {"customer/viewProductServlet"}, name = "viewProductServlet")
public class ViewProductServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet of viewProductServlet");
        String productId = request.getParameter("productId");
        Product product = new ProductDAO().retrieve(Integer.parseInt(productId));
        if (product != null) {
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("product", product);
            List<Product> relatedProducts = new CategoryDAO().getCategoryProducts(product.getCategory().getName(), null);
            System.out.println("relatedProductSize"+relatedProducts.size());
            relatedProducts.remove(product);
            System.out.println("relatedProductSize"+relatedProducts.size());
            httpSession.setAttribute("relatedProducts", relatedProducts);
            response.sendRedirect("http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/customer/pages/product.jsp");
        }

    }
    @Override 
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        System.out.println("Already in the doPost Method");
    }       

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.customers;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dao.ProductDAO;

/**
 *
 * @author lapshop
 */
@WebServlet(name = "AllProductsListServlet", urlPatterns = {"/customer/AllProductsListServlet"})
public class ProductsListServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String productName = (String) session.getAttribute("productName");
        if(productName!=null){
        ProductDAO productDAO = new ProductDAO();
        //i want to retrve by product name but no exist methd in productDAO
        List<model.entity.Product> products = (List<model.entity.Product>) productDAO.retrieve(productName);
        if(products.size()>0){
        request.setAttribute("products", products);
        }else{
            // set no such product found
        }
        request.getRequestDispatcher("/customer/pages/store.jsp").include(request, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        List<model.entity.Product> products = productDAO.retrieveAll();
        request.setAttribute("products", products);
        request.getRequestDispatcher("/customer/pages/store.jsp").include(request, resp);
    }
}

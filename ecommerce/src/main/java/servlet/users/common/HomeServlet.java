/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.common;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dao.ProductDAO;
import model.entity.Product;

/**
 *
 * @author Lamiaa Abdrabou
 */
@WebServlet(name="HomeServlet", urlPatterns = {"/customer/homeAction"})
public class HomeServlet extends HttpServlet{
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        response.setContentType("text/html;charset=UTF-8");
        HttpSession httpSession = request.getSession();
        ProductDAO productDao = new ProductDAO();
        List<Product> products = productDao.retrieveAll();
        System.out.println(products.size());
        httpSession.setAttribute("products", products);
        for(Product product:products){
            System.out.println(product.getCategory().getName());
        }
//        request.getRequestDispatcher("pages/index.jsp").forward(request, response);
        response.sendRedirect("pages/index.jsp");
     }
    @Override 
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        response.setContentType("text/html;charset=UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        ProductDAO productDao = new ProductDAO();
        List<Product> products = productDao.retrieveAll();
        request.setAttribute("products", products);
        request.getRequestDispatcher("pages/store.jsp").forward(request, response);
    }
    
}

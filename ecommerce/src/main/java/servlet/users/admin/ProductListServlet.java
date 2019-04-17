/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.ProductDAO;
import model.entity.Product;

/**
 *
 * @author FARES-LAP
 */
@WebServlet(urlPatterns = {"/ProductListServlet"}, name = "ProductListServlet")
public class ProductListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = new ProductDAO().retrieveAll();
        req.setAttribute("products", products);
        req.getRequestDispatcher("/admin/product-list.jsp").include(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = new ProductDAO().retrieveAll();
        req.setAttribute("products", products);
        req.getRequestDispatcher("/admin/product-list.jsp").include(req, resp);
    }

}

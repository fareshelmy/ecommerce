/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.ProductDAO;
import model.entity.Product;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(name = "ProductSearchServlet", urlPatterns = {"/ProductSearchServlet"})
public class ProductSearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductDAO productDAO = new ProductDAO();
        String name = request.getParameter("searchProduct");
        List<Product> productList = productDAO.getByName(name);
        if (productList != null) {
            request.setAttribute("products", productList);
        } else {
            request.setAttribute("products", "no products found");
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/admin/product-list.jsp");
        requestDispatcher.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}

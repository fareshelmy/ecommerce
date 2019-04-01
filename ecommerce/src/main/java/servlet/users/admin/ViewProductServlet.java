/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
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
@WebServlet(urlPatterns = {"/admin/viewProductServlet"}, name = "viewProductServlet")
public class ViewProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("productId");
        Product product = new ProductDAO().retrieve(Integer.parseInt(productId));
        if (product != null) {
            req.setAttribute("product", product);
            req.getRequestDispatcher("/admin/product-detail.jsp").include(req, resp);
        }

    }

}

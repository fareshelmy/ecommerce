/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
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
 * @author lapshop
 */
@WebServlet(name = "EditProductServlet", urlPatterns = {"/EditProductServlet"})
public class EditProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String productId = req.getParameter("productId");
        String productIdDeleted = req.getParameter("productIdDeleted");
        ServletContext context = getServletContext();
        context.log(productId);
        context.log(productIdDeleted);
        HttpSession session = req.getSession(true);
        session.setAttribute("productIdSession", productId);
        ProductDAO productDAO = new ProductDAO();

        if (productIdDeleted != null) {
            Product productDeleted = productDAO.retrieve(Integer.parseInt(productIdDeleted));
            if (productDeleted != null) {
                productDAO.delete(productDeleted);
                req.getRequestDispatcher("ProductListServlet").include(req, resp);
            }
        }
        if (productId != null) {
            Product product = productDAO.retrieve(Integer.parseInt(productId));
            if (product != null) {
                req.setAttribute("productDetails", product);
              //  System.out.println(product.getCategory().getName());
                req.getRequestDispatcher("/admin/product-edit.jsp").forward(req, resp);
            }
        }

    }

}

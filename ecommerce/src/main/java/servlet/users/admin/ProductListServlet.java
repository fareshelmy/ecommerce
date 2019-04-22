/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletContext;
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
        int pageNumb,pageCount ;
        ProductDAO pdao=new ProductDAO();
        ServletContext context = getServletContext();
        //---------------- set pageCount--------------
        List<Product> productList = pdao.retrieveAll();
        int lisSize = productList.size();
        pdao.setNumberOfPages(lisSize, 10);
        pageCount =pdao.getNumberOfPages();
        req.setAttribute("pageCount", pageCount);
        //-----------------pageCount--------------
        context.log("pageNumb: " +req.getParameter("pagNumb") );
        if (req.getParameter("pagNumb") == null) {
            pageNumb = 1;
        } else {
            pageNumb = Integer.parseInt(req.getParameter("pagNumb"));
        }
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.retrieveAll(null, 10, pageNumb);   
        //  List<Product> products = new ProductDAO().retrieveAll();
        req.setAttribute("products", products);
        context.log("ProductListServlet  ... doGet");
        req.getRequestDispatcher("/admin/product-list.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Accessed Dopost productListSrevletyy");
        List<Product> products = new ProductDAO().retrieveAll();
        req.setAttribute("products", products);
        ServletContext context = getServletContext();
        context.log("ProductListServlet  ... doPost");
        //  resp.sendRedirect("/admin/product-list.jsp");
        req.getRequestDispatcher("/admin/product-list.jsp").include(req, resp);
    }

}

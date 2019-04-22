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
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.CategoryDAO;
import model.dao.ProductDAO;
import model.entity.Product;
import model.service.SearchService;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(name = "ProductSearchServlet", urlPatterns = {"/ProductSearchServlet"})
public class ProductSearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext context = getServletContext();
        ProductDAO productDAO = new ProductDAO();
        String name = request.getParameter("searchProduct");
        context.log(name);
        List<Product> productList = productDAO.getByName(name);
        /*     //-------------------make pagination in Search --------
       productDAO.setNumberOfPages(productList.size(), 10);
        int pageCount1 = productDAO.getNumberOfPages();
        int pageNumb;
        if (request.getParameter("pagNumb") == null) {
            pageNumb = 1;
        } else {
            pageNumb = Integer.parseInt(request.getParameter("pagNumb"));
        }
        SearchService searchService= new  SearchService();  
        List productList = searchService.getSearchResult(null,2, pageNumb);
        int pageCount = searchService.getNumberOfPages();
        request.setAttribute("pageCount1", pageCount1);
        //--------------------------- */
        if (!name.isEmpty()) {
            if (productList != null) {
                request.setAttribute("products", productList);
            } else {
                request.setAttribute("products", "no products found");
            }
        } else {
            ProductDAO productDAO2 = new ProductDAO();
            List<Product> products = productDAO2.retrieveAll(null, 10, 1);
            request.setAttribute("products", products);
            //---------------- set pageCount--------------
            ProductDAO pdao = new ProductDAO();
            List<Product> allproductList = pdao.retrieveAll();
            int lisSize = allproductList.size();
            pdao.setNumberOfPages(lisSize, 10);
            int pageCount = pdao.getNumberOfPages();
            request.setAttribute("pageCount", pageCount);
            //-----------------pageCount--------------
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/admin/product-list.jsp");
        requestDispatcher.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}

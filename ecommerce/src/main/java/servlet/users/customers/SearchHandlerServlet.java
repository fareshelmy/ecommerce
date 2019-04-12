/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.customers;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.entity.Product;
import model.service.SearchCriteria;
import model.service.SearchService;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author FARES-LAP
 */
@WebServlet(value = "/customer/searchHandler", name = "searchHandler")
public class SearchHandlerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String selectedCategory = req.getParameter("category");
        //System.out.println(" printing the selected category"+selectedCategory);
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.setAttribute("selectedCategory", "select");
            List<String> categoryList = (List<String>) session.getAttribute("searchCategories");
            int i = 0;
            boolean exists = false;
            while (!exists && i < categoryList.size()) {
                String categoryName = categoryList.get(i);
                if (categoryName.equalsIgnoreCase(selectedCategory)) {
                    categoryList.remove(categoryName);
                    exists = true;
                }
                i++;
            }
            if (!exists) {
                categoryList.add(selectedCategory);
            }
            categoryList.forEach(category -> {
                System.out.println(category);
            });
            System.out.println("________");
            session.setAttribute("searchCategories", categoryList);
            System.out.println(session.getAttribute("selectedCategory"));
            populateBean(req);

            resp.sendRedirect("/ecommerce/customer/pages/store.jsp");
//            req.getRequestDispatcher("ecommerce/customer/pages/store.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        populateBean(req);
//        req.getRequestDispatcher("/customer/pages/store.jsp").forward(req, resp);
        resp.sendRedirect("/ecommerce/customer/pages/store.jsp");
    }

    private void populateBean(HttpServletRequest req) {
        try {
            SearchCriteria searchCriteria = new SearchCriteria();
            BeanUtils.populate(searchCriteria, req.getParameterMap());
            doSearch(req, searchCriteria);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(SearchHandlerServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(SearchHandlerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void doSearch(HttpServletRequest req, SearchCriteria searchCriteria) {
        HttpSession session = req.getSession(false);
        if (session != null) {
            System.out.println("Inside do search mertohs");
            List<String> categoryList = (List<String>) session.getAttribute("searchCategories");
            searchCriteria.setSelectedCategories(categoryList);
            List<Product> searchResult = new SearchService().getSearchResult(searchCriteria);
            session.setAttribute("searchedResults", searchResult);
            List<Product> test = (List<Product>) session.getAttribute("searchedResults");
            test.forEach((t) -> {
                
                System.out.println(t.getName() + "inside do search foreach");
            });
        }
    }

}

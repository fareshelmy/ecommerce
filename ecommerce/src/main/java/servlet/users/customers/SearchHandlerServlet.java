/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.customers;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.service.SearchCriteria;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author FARES-LAP
 */
@WebServlet(value = "/customer/searchHandler", name = "searchHandler")
public class SearchHandlerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            SearchCriteria searchCriteria = new SearchCriteria();
            BeanUtils.populate(searchCriteria, req.getParameterMap());
            System.out.println(searchCriteria.getProductSubString());
            System.out.println(searchCriteria.getSearchBarCategory());
            System.out.println(searchCriteria.getSelectedCategories());
        } catch (IllegalAccessException ex) {
            Logger.getLogger(SearchHandlerServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(SearchHandlerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

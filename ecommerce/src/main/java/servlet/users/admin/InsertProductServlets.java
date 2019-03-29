/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.users.admin;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.CategoryDAO;
import model.dao.ProductDAO;
import model.entity.Category;
import model.entity.Product;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(urlPatterns = ("product-edit"))
public class InsertProductServlets extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        CategoryDAO categoryDAO = new CategoryDAO();
        
         Category category = categoryDAO.retrieve(req.getParameter("selected_category"));
         
         int numberOfProduct  = Integer.parseInt(req.getParameter("selected_quantity"));
         
         
         
         Product product = new Product();
        try 
        {
            BeanUtils.populate(product, req.getParameterMap());
            
        } catch (IllegalAccessException ex) {
            ex.printStackTrace();
        } catch (InvocationTargetException ex) {
            ex.printStackTrace();
        }
         product.setCategory(category);
         product.setQuantity(numberOfProduct);
         product.setImage("     ");
         
         ProductDAO productDAO = new ProductDAO();
         productDAO.persist(product);
         
         
    }
    
    
                     
    
    
}

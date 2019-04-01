/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.customers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lamiaa Abdrabou
 */
@WebServlet(value="/productAction")
public class Product extends HttpServlet{
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        response.setContentType("text/html;charset=UTF-8");
        response.sendRedirect("customer/pages/product.jsp");
    }
    @Override 
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.CategoryDAO;
import model.entity.Category;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(name = "PiChartServlet", urlPatterns = {"/PiChartServlet"})
public class PiChartServlet extends HttpServlet {   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDAO categoryDAO = new CategoryDAO();
        List<Category> listOfCategories = categoryDAO.retrieveAll();
        request.setAttribute("listOfCategories", listOfCategories);
        request.getRequestDispatcher("/admin/index.jsp").forward(request, response);  

        
    }

}

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
import model.dao.OrderDAO;
import model.dao.UserDAO;
import model.entity.Order;
import model.entity.User;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(name = "ViewUserServlet", urlPatterns = {"/ViewUserServlet"})
public class ViewUserdetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String userId = request.getParameter("userId");
        OrderDAO  userOrders = new OrderDAO();
        List<Order> listOfUserOrders = userOrders.retrieveUserOrders(userId);
        
        UserDAO userDao = new UserDAO();
        User user = userDao.retrieve(userId);
        if (user != null && listOfUserOrders != null) {
            request.setAttribute("currentUser", user);
            request.setAttribute("UserOrders", listOfUserOrders);
            request.getRequestDispatcher("admin/user-detail.jsp").include(request, response);
        }

    }

}


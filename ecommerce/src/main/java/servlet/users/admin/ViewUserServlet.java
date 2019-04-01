/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.UserDAO;
import model.entity.User;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(name = "ViewUserServlet", urlPatterns = {"/ViewUserServlet"})
public class ViewUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String userId = request.getParameter("userId");
        UserDAO userDao = new UserDAO();
        User user = userDao.retrieve(Integer.parseInt(userId));
        if (user != null) {
            request.setAttribute("currentUser", user);
            request.getRequestDispatcher("admin/user-detail.jsp").include(request, response);
        }

    }

}

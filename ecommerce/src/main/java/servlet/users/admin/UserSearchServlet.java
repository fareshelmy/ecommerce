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
@WebServlet(name = "UserSearchServlet", urlPatterns = {"/UserSearchServlet"})
public class UserSearchServlet extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        UserDAO userDAO = new UserDAO();
        String name = request.getParameter("searchedUser");
        List<User> listOfUsers = userDAO.getByName(name);
        if(listOfUsers != null)
        {
            request.setAttribute("users", listOfUsers);
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/admin/user-list.jsp");
        requestDispatcher.include(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

}

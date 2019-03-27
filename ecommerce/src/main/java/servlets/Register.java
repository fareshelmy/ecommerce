package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import model.dao.UserDAO;
import model.entity.User;

public class Register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String job = request.getParameter("job");
        String credit = request.getParameter("credit");
        HttpSession session = request.getSession(true);        
        try {
            UserDAO userDao = new UserDAO();
            User user = new User();
            user.setUsername(username);
            user.setEmail(email);
            user.setBirthday(new java.util.Date(dob));
            user.setJob(job);
            user.setCreditLimit(Integer.parseInt(credit));
            userDao.persist(user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.html");
            request.setAttribute("userRegisterDetails", user);
            dispatcher.forward(request, response);
        } catch (Exception se) {
            out.println(se.getMessage());
        }

    }

}

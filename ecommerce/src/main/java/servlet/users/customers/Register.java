package servlet.users.customers;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
import model.dao.UserDAO;
import model.entity.User;
@WebServlet(value = "/registerAction") 
public class Register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String dob = request.getParameter("birthday");
        String job = request.getParameter("job");
        String credit = request.getParameter("creditLimit");
        String password = request.getParameter("password");
        try {
            UserDAO userDao = new UserDAO();
            User user = new User();
            user.setUsername(username);
            user.setEmail(email);
            user.setBirthday(new java.util.Date(dob));
            user.setJob(job);
            user.setCreditLimit(Integer.parseInt(credit));
            user.setPassword(password);
            user.setAddress(address);
            userDao.persist(user);
            if (isUniqueEmail(email)) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("login.html");
                request.setAttribute("userRegisterDetails", user);
                dispatcher.forward(request, response);
            }else{
                 out.println("<br><br><p id=\\\"erro\\\" style=\\\"color:#ef0000;\\\"> Password incorrect</p>\"");
                 RequestDispatcher rd = request.getRequestDispatcher("register.html");
                 rd.forward(request, response);
            }

        } catch (Exception se) {
            out.println(se.getMessage());
        }
        
    }

    private boolean isUniqueEmail(String email) {
        UserDAO userDao = new UserDAO();
        if (userDao.retrieve(email) == null) {
            return false;
        } else {
            return true;
        }
    }
}

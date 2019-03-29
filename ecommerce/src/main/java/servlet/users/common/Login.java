package servlets.users.common;

/**
 *
 * @author Zainab
 */
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.dao.UserDAO;
import model.entity.User;

public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String retrivedEmail = null;
        String retrivedPass = null;
        PrintWriter out = response.getWriter();

        try {
            response.setContentType("text/html;charset=UTF-8");
            String email = request.getParameter("signinEmail");
            String password = request.getParameter("signinPassword");
            UserDAO userDao = new UserDAO();
            User user = new User();
            user = userDao.retrieve(email);
            if (user != null) {
                if (password.equals(user.getPassword())) {
                    HttpSession session = request.getSession(true);
                    RequestDispatcher rd = request.getRequestDispatcher("product.html");
                    rd.forward(request, response);
                } else {
                    out.println("<br><br><p id=\\\"erro\\\" style=\\\"color:#ef0000;\\\"> Password incorrect</p>\"");
                    RequestDispatcher rd = request.getRequestDispatcher("login.html");
                    rd.forward(request, response);
                }
            } else {
                out.println("<br><br><p id=\\\"erro\\\" style=\\\"color:#ef0000;\\\"> No Such Email Exist </p>\"");
                RequestDispatcher rd = request.getRequestDispatcher("login.html");
                rd.forward(request, response);
            }
            
        } catch (Exception ex) {
            out.println(ex.getMessage());
        }

    }
}

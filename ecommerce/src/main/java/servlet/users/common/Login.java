package servlet.users.common;

/**
 *
 * @author Zainab
 */
import java.io.*;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import model.dao.ProductDAO;
import model.dao.UserDAO;
import model.entity.Product;
import model.entity.User;
import org.apache.commons.beanutils.BeanUtils;

@WebServlet(value = "/loginrAction")
public class Login extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.sendRedirect("customer/pages/login.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            System.out.println("Here");
            User user = new User();
            BeanUtils.populate(user, request.getParameterMap());
            UserDAO userDao = new UserDAO();
            User persistentUser = userDao.retrieve(user.getEmail());
            if (persistentUser != null) {
                //The user exists in the database
                if (persistentUser.getPassword().equals(user.getPassword())) {
                    request.setAttribute("invalidData", "");
                    HttpSession session = request.getSession(true);
                    session.setAttribute("loggedIn", "true");
                    session.setAttribute("username", user.getUsername());
                    session.setAttribute("email", user.getEmail());
                    response.sendRedirect("customer/homeAction");
                    session.setAttribute("userId", persistentUser.getEmail());
                    session.setAttribute("userRole", persistentUser.getRole());
                    if (persistentUser.getRole().equalsIgnoreCase("user")) {
                        //The user is a customer
                        RequestDispatcher rd = request.getRequestDispatcher("customer/pages/product.jsp");
                        rd.forward(request, response);
                    } else {
                        //The user is an admin
                        System.out.println("Loggedin");
                        response.sendRedirect("/ecommerce/admin/index.jsp");
                    }
                } else {
                    //The user is not authenticated
                    request.setAttribute("invalidData", "Inavlid Email Or Password");
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/pages/login.jsp");
                    requestDispatcher.forward(request, response);
                }
            } else {
                //The user doesn't exist in the database
                request.setAttribute("invalidData", "Inavlid Email Or Password");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/pages/login.jsp");
                requestDispatcher.forward(request, response);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
}

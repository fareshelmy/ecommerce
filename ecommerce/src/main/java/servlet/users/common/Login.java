package servlet.users.common;

/**
 *
 * @author Zainab
 */
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import model.dao.UserDAO;
import model.entity.User;
import org.apache.commons.beanutils.BeanUtils;

@WebServlet(value = "/loginrAction") 
public class Login extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        response.sendRedirect("customer/pages/login.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            User user = new User();
            BeanUtils.populate(user, request.getParameterMap());
            UserDAO userDao = new UserDAO();
            User persistentUser = userDao.retrieve(user.getEmail());
            if (persistentUser != null) {
                
                if (persistentUser.getPassword().equals(user.getPassword())) {
//                    System.out.println("Logged In Successfully");
                    request.removeAttribute("password");
                    request.setAttribute("invalidData", "");
                    HttpSession session = request.getSession(true);
                    session.setAttribute("loggedIn", "true");
                    System.out.println("I'm Here??????????????????????????");
                    RequestDispatcher rd = request.getRequestDispatcher("customer/pages/product.jsp");
                    rd.forward(request, response);
                } else {
//                    System.out.println("Wrong Password");
                    request.setAttribute("invalidData", "Inavlid Email Or Password");
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/pages/login.jsp");
                    requestDispatcher.forward(request, response);
                }
            } else {
//                System.out.println("Account Doesn't Exist");
                request.setAttribute("invalidData", "Inavlid Email Or Password");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/pages/login.jsp");
                requestDispatcher.forward(request, response);
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
}

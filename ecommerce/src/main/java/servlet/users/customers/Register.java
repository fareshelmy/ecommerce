package servlet.users.customers;

import java.io.*;
import java.lang.reflect.InvocationTargetException;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import model.dao.UserDAO;
import model.entity.User;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;
//import org.apache.metamodel.convert.StringToDateConverter;
@WebServlet(urlPatterns = {"/registerAction"}) 
public class Register extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.sendRedirect("customer/pages/register.jsp");
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        UserDAO userDao = new UserDAO();
        User user = new User();
        try{
            //Because the Date is String in the request we must use DateTimeConverter to tell the 
            //BeanUtils How to convert the date
            DateTimeConverter dateConverter = new DateConverter(null);
            dateConverter.setPattern("yyyy-MM-dd");
            ConvertUtils.register(dateConverter, java.util.Date.class);
            BeanUtils.populate(user, request.getParameterMap());
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
        boolean exists = (userDao.retrieve(user.getEmail()) == null) ? false : true;
        if(exists){
            //send Error Duplicate Email
            request.setAttribute("invalidEmail", "Duplicate Email");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/pages/register.jsp");
            requestDispatcher.forward(request, response);
        }else{
            userDao.persist(user);
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("email", user.getEmail());
            httpSession.setAttribute("username", user.getUsername());
            //redirect to registered successfully page
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/pages/login.jsp");
            requestDispatcher.forward(request, response);
//            response.sendRedirect("customer/pages/login.jsp");
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

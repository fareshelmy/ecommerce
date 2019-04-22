/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.admin;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.UserDAO;
import model.entity.User;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

/**
 *
 * @author Mayada Khaled
 */
@WebServlet(name = "AddAdminServlet", urlPatterns = {"/AddAdminServlet"})
public class AddAdminServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        User retrievedUser = new UserDAO().retrieve(request.getParameter("email"));

        if (retrievedUser == null) {

            User user = new User();
            UserDAO userDAO = new UserDAO();
            user.setRole("admin");

            try {
                DateTimeConverter dateConverter = new DateConverter(null);
                dateConverter.setPattern("yyyy-MM-dd");
                ConvertUtils.register(dateConverter, java.util.Date.class);
                BeanUtils.populate(user, request.getParameterMap());
            } catch (IllegalAccessException ex) {
                ex.printStackTrace();
            } catch (InvocationTargetException ex) {
                ex.printStackTrace();
            }
            userDAO.persist(user);
            response.sendRedirect("/ecommerce/HomeServlet");
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/admin/Add-Admin.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/Add-Admin.jsp").forward(req, resp);
    }

}

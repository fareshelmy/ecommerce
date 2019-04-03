/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.customers;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dao.UserDAO;
import model.entity.User;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

/**
 *
 * @author Mohamed
 */
@WebServlet(value = "/profile")
public class Profile extends HttpServlet {

    UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        String userId = (String) session.getAttribute("userId");
        User user = userDAO.retrieve(userId);
        req.setAttribute("user", user);

        if (user != null) {
            req.getRequestDispatcher("/customer/pages/profile.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            User user = new User();
            DateTimeConverter dateConverter = new DateConverter(null);
            dateConverter.setPattern("yyyy-MM-dd");
            ConvertUtils.register(dateConverter, java.util.Date.class);
            BeanUtils.populate(user, req.getParameterMap());
            userDAO.update(user);
            resp.sendRedirect("/ecommerce/profile?msg=saved");
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

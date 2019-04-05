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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.UserDAO;
import model.entity.User;
import org.apache.commons.beanutils.BeanUtils;

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
            String date = request.getParameter("adminBirthday");
        try {  
            Date newDate=new SimpleDateFormat("dd/MM/yyyy").parse(date);
            user.setBirthday(newDate);

        } catch (ParseException ex) {
            ex.printStackTrace();
        }

            try {
                BeanUtils.populate(user, request.getParameterMap());
            } catch (IllegalAccessException ex) {
               ex.printStackTrace();
            } catch (InvocationTargetException ex) {
                 ex.printStackTrace();
            }
            userDAO.persist(user);
            request.getRequestDispatcher("/admin/index.jsp").forward(request, response);  
        }
        else
        {
            
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.getRequestDispatcher("/admin/Add-Admin.jsp").forward(req, resp);   
    }
    

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.customers;

import com.google.gson.Gson;
import control.Facade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dto.OrderSpecification;

/**
 *
 * @author FARES-LAP
 */
@WebServlet(value = "/checkout")
public class CheckoutServlet extends HttpServlet {

    private ServletConfig config;

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.config = config;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderSpecificationsString = req.getParameter("orderSpecifications");
        double totalPayment = Double.parseDouble(req.getParameter("total"));
        HttpSession session = req.getSession(false);
        Gson gson = new Gson();

        if (session != null) {
            String userId = session.getAttribute("userId").toString();
            OrderSpecification[] orderSpecifications
                    = gson.fromJson(orderSpecificationsString, OrderSpecification[].class);

            List<OrderSpecification> orderSpecificationsList = Arrays.asList(orderSpecifications);
            Facade facade = new Facade();
            List<OrderSpecification> notAvailableProducts
                    = facade.placeOrder(userId,
                            orderSpecificationsList,
                            totalPayment);

            //everything is fine and all products are available
            PrintWriter out = resp.getWriter();
            if (notAvailableProducts.isEmpty()) {
                double updatedUserCredit = facade.updateUserCredit(userId, totalPayment);
                session.setAttribute("userCredit", updatedUserCredit);
                freeUserCart(session.getId());
                out.write("done");
            } else {
                out.write(gson.toJson(notAvailableProducts));
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    private void freeUserCart(String sessionId) {
        Map<String, Set<Integer>> carts = (Map<String, Set<Integer>>) config.getServletContext().getAttribute("carts");
        carts.get(sessionId).clear();
    }

}

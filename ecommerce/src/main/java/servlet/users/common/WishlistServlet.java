/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.common;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.dao.ProductDAO;
import model.entity.Product;
import model.util.ObjectMappingUtil;

/**
 *
 * @author FARES-LAP
 */
@WebServlet(value = "/wishlist")
public class WishlistServlet extends HttpServlet {

    private Map<String, Set<Integer>> wishlists = new HashMap<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null) {
            String sessionId = session.getId();
            try {
                Integer productId = Integer.parseInt(req.getParameter("productId"));
                String reason = req.getParameter("reason");
                if (reason.equals("add")) {
                    if (wishlists.containsKey(sessionId)) {
                        wishlists.get(sessionId).add(productId);
                    } else {
                        Set<Integer> productIdList = new HashSet<>();
                        productIdList.add(productId);
                        wishlists.put(sessionId, productIdList);
                    }
                } else {
                    wishlists.get(sessionId).remove(productId);
                    session.removeAttribute("passedWishlist");
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
            Set<Integer> productIdList = wishlists.get(sessionId);
            session.setAttribute("wishlist", productIdList);
            resp.getWriter().print(String.valueOf(wishlists.get(sessionId).size()));
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        List<Product> productList = new ArrayList<>();

        if (session != null) {
            session.setAttribute("passedWishlist", "true");
            String sessionId = session.getId();
            if (wishlists.containsKey(sessionId)) {
                System.out.println("here");
                Set<Integer> productIdList = wishlists.get(sessionId);
                ProductDAO productDAO = new ProductDAO();
                productIdList.stream()
                        .map((id) -> productDAO.retrieve((int) id))
                        .forEachOrdered((product) -> {
                            productList.add(product);
                        });
            }
            session.setAttribute("wishlist", productList);
            resp.sendRedirect("http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/customer/pages/wishlist.jsp");
        }
    }

}

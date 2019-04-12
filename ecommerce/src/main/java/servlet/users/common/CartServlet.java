/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users.common;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
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
import model.dao.ProductDAO;
import model.dto.ProductDTO;
import model.entity.Product;
import model.util.ObjectMappingUtil;

/**
 *
 * @author FARES-LAP
 */
@WebServlet(value = "/cartHandler")
public class CartServlet extends HttpServlet {

    private ServletConfig config;

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.config = config;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null) {
            String sessionId = session.getId();
            Map<String, Set<Integer>> carts = (Map) config.getServletContext().getAttribute("carts");
            Integer productId = Integer.parseInt(req.getParameter("productId"));
            if (productId != 0) {
                String reason = req.getParameter("reason");
                if (reason.equals("add")) {
                    if (carts.containsKey(sessionId)) {
                        carts.get(sessionId).add(productId);
                    } else {
                        Set<Integer> productIdList = new HashSet<>();
                        productIdList.add(productId);
                        carts.put(sessionId, productIdList);
                    }
                } else {
                    carts.get(sessionId).remove(productId);
                }
            }
            Set<Integer> productIdSet = carts.get(sessionId);
            if (productIdSet != null) {
                resp.getWriter().print(String.valueOf(productIdSet.size()));
            } else {
                resp.getWriter().print("0");
            }
            config.getServletContext().setAttribute("carts", carts);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        Set<Integer> productIdList;
        List<Product> productList = new ArrayList<>();
        List<ProductDTO> productDTOs = new ArrayList<>();
        Gson gson = new Gson();

        HttpSession session = req.getSession(false);
        if (session != null) {
            String sessionId = session.getId();
            Map<String, Set<Integer>> carts = (Map) config.getServletContext().getAttribute("carts");
            if (carts.containsKey(sessionId)) {
                productIdList = carts.get(sessionId);
                ProductDAO productDAO = new ProductDAO();
                productIdList.stream()
                        .map((id) -> productDAO.retrieve((int) id))
                        .forEachOrdered((product) -> {
                            productList.add(product);
                        });

                for (Product product : productList) {
                    productDTOs.add(ObjectMappingUtil.mapToDTO(product));
                }
            }
            session.setAttribute("cartProducts", productList);
            String productListJson = gson.toJson(productDTOs);
            resp.getWriter().print(productListJson);
        }
    }

}

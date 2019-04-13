/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.List;
import model.dto.OrderSpecification;
import model.service.OrderService;

public class Facade {

    public List<OrderSpecification> placeOrder(String userId, List<OrderSpecification> orderSpecificationsList, double totalPayment) {
        OrderService orderService = new OrderService(userId);
        List<OrderSpecification> notAvailableProducts = orderService.checkQuantity(orderSpecificationsList);
        if (notAvailableProducts.isEmpty()) {
            orderService.createNewOrder(orderSpecificationsList);
            orderService.decreaseUserBalance(userId, totalPayment);
            orderService.updateProducts(orderSpecificationsList);
        }

        return notAvailableProducts;
    }

}

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

    private OrderService orderService;

    public List<OrderSpecification> placeOrder(String userId, List<OrderSpecification> orderSpecificationsList, double totalPayment) {
        orderService = new OrderService(userId);
        List<OrderSpecification> notAvailableProducts = orderService.checkQuantity(orderSpecificationsList);
        if (notAvailableProducts.isEmpty()) {
            orderService.createNewOrder(orderSpecificationsList);
            orderService.updateProducts(orderSpecificationsList);
        }

        return notAvailableProducts;
    }

    public double updateUserCredit(String userId, double totalPayment) {
        return orderService.updateUserCredit(userId, totalPayment);
    }

}

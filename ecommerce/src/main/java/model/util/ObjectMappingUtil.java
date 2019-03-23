/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.util;

import java.math.BigDecimal;
//import model.dto.CategoryDTO;
//import model.dto.OrderDTO;
//import model.dto.OrderItemDTO;
//import model.dto.ProductDTO;
//import model.dto.UserDTO;
import model.entity.Category;
import model.entity.Order;
import model.entity.OrderItem;
import model.entity.Product;
import model.entity.User;

/**
 *
 * @author FARES-LAP
 */
public class ObjectMappingUtil {
/*
    old implementation
    public static User mapToEntity(UserDTO userDTO) {
        return new User(userDTO.getEmail(),
                userDTO.getUsername(),
                userDTO.getPassword(),
                userDTO.getBirthday(),
                userDTO.getJob(),
                userDTO.getAddress(),
                userDTO.getCreditLimit(),
                userDTO.getOrders(),
                userDTO.getCategories());
    }

    public static UserDTO mapToDTO(User userEntity) {
        return new UserDTO(userEntity.getEmail(),
                userEntity.getUsername(),
                null,
                userEntity.getBirthday(),
                null,
                null,
                userEntity.getCreditLimit(),
                userEntity.getOrders(),
                userEntity.getCategories());
    }

    public static Product mapToEntity(ProductDTO productDTO) {
        return new Product(productDTO.getCategory(),
                productDTO.getName(),
                productDTO.getPrice(),
                null,
                productDTO.getImage(),
                productDTO.getAmount(),
                productDTO.getUnit(),
                productDTO.getQuantity(),
                productDTO.getDescription(),
                0, null);
    }

    public static ProductDTO mapToDTO(Product productEntity, boolean light) {
        ProductDTO productDTO;
        if (light) {
            productDTO = new ProductDTO(productEntity.getId(),
                    productEntity.getCategory(),
                    productEntity.getName(),
                    productEntity.getPrice(),
                    productEntity.getRating(),
                    productEntity.getImage(),
                    productEntity.getAmount(),
                    productEntity.getUnit(),
                    productEntity.getQuantity(),
                    null,
                    0,
                    null);
        } else {
            productDTO = new ProductDTO(productEntity.getId(),
                    productEntity.getCategory(),
                    productEntity.getName(),
                    productEntity.getPrice(),
                    productEntity.getRating(),
                    productEntity.getImage(),
                    productEntity.getAmount(),
                    productEntity.getUnit(),
                    productEntity.getQuantity(),
                    productEntity.getDescription(),
                    0,
                    productEntity.getOrderItems());
        }
        return productDTO;
    }

    public static Category mapToEntity(CategoryDTO categoryDTO) {
        return new Category(categoryDTO.getName(), categoryDTO.getProducts(), categoryDTO.getUsers());
    }

    public static CategoryDTO mapToDTO(Category categoryEntity) {
        return new CategoryDTO(categoryEntity.getName(), categoryEntity.getProducts(), categoryEntity.getUsers());
    }

    public static Order mapToEntity(OrderDTO orderDTO) {
        return new Order(orderDTO.getUser(), orderDTO.getOrderItems());
    }

    public static OrderDTO mapToDTO(Order orderEntity) {
        return new OrderDTO(orderEntity.getId(), orderEntity.getUser(), orderEntity.getOrderItems());
    }

    public static OrderItem mapToEntity(OrderItemDTO orderItemDTO) {
        return new OrderItem(orderItemDTO.getId(),
                orderItemDTO.getOrder(),
                orderItemDTO.getProduct(),
                orderItemDTO.getQuantity(),
                orderItemDTO.getTotal());
    }

    public static OrderItemDTO mapToDTO(OrderItem orderItemEntity) {
        return new OrderItemDTO(orderItemEntity.getId(),
                orderItemEntity.getOrder(),
                orderItemEntity.getProduct(),
                orderItemEntity.getQuantity(),
                orderItemEntity.getTotal());
    }
*/
}

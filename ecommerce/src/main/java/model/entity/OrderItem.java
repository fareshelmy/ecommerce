package model.entity;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * OrderItem generated by hbm2java
 */
@Entity
@Table(name = "order_item",
         catalog = "ecommerce"
)
public class OrderItem implements java.io.Serializable, model.entity.Entity {

    private OrderItemId id;
    private Order order;
    private Product product;
    private int quantity;
    private double total;

    public OrderItem() {
    }

    public OrderItem(OrderItemId id, Order order, Product product, int quantity, double total) {
        this.id = id;
        this.order = order;
        this.product = product;
        this.quantity = quantity;
        this.total = total;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "orderId", column = @Column(name = "order_id", nullable = false))
        , 
        @AttributeOverride(name = "productId", column = @Column(name = "product_id", nullable = false))})
    public OrderItemId getId() {
        return this.id;
    }

    public void setId(OrderItemId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_id", nullable = false, insertable = false, updatable = false)
    public Order getOrder() {
        return this.order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id", nullable = false, insertable = false, updatable = false)
    public Product getProduct() {
        return this.product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Column(name = "quantity", nullable = false)
    public int getQuantity() {
        return this.quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Column(name = "total", nullable = false, precision = 22, scale = 0)
    public double getTotal() {
        return this.total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

}

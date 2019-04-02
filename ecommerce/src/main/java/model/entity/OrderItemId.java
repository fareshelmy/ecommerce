package model.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * OrderItemId generated by hbm2java
 */
@Embeddable
public class OrderItemId implements java.io.Serializable, model.entity.Entity {

    private int orderId;
    private int productId;

    public OrderItemId() {
    }

    public OrderItemId(int orderId, int productId) {
        this.orderId = orderId;
        this.productId = productId;
    }

    @Column(name = "order_id", nullable = false)
    public int getOrderId() {
        return this.orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    @Column(name = "product_id", nullable = false)
    public int getProductId() {
        return this.productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof OrderItemId)) {
            return false;
        }
        OrderItemId castOther = (OrderItemId) other;

        return (this.getOrderId() == castOther.getOrderId())
                && (this.getProductId() == castOther.getProductId());
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getOrderId();
        result = 37 * result + this.getProductId();
        return result;
    }

}

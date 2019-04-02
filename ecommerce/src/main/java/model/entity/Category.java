package model.entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Category generated by hbm2java
 */
@Entity
@Table(name = "category",
         catalog = "ecommerce"
)
public class Category implements java.io.Serializable, model.entity.Entity {

    private Integer id;
    private String name;
    private Set<Product> products = new HashSet<Product>(0);
    private Set<User> users = new HashSet<User>(0);

    public Category() {
    }

    public Category(String name) {
        this.name = name;
    }

    public Category(String name, Set<Product> products, Set<User> users) {
        this.name = name;
        this.products = products;
        this.users = users;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "id", unique = true, nullable = false)
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "name", nullable = false, length = 45)
    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
    public Set<Product> getProducts() {
        return this.products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_category", catalog = "ecommerce", joinColumns = {
        @JoinColumn(name = "category_id", nullable = false, updatable = false)}, inverseJoinColumns = {
        @JoinColumn(name = "user_id", nullable = false, updatable = false)})
    public Set<User> getUsers() {
        return this.users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

}

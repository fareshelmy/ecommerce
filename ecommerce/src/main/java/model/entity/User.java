package model.entity;
// Generated Apr 12, 2019 1:32:42 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * User generated by hbm2java
 */
@Entity
@Table(name="user"
    ,catalog="ebdb"
)
public class User  implements java.io.Serializable, model.entity.Entity {


     private String email;
     private String username;
     private String password;
     private Date birthday;
     private String job;
     private String address;
     private double creditLimit;
     private String role;
     private Set<Order> orders = new HashSet<Order>(0);
     private Set<Category> categories = new HashSet<Category>(0);

    public User() {
    }

	
    public User(String email, String username, String password, double creditLimit) {
        this.email = email;
        this.username = username;
        this.password = password;
        this.creditLimit = creditLimit;
    }
    public User(String email, String username, String password, Date birthday, String job, String address, double creditLimit, String role, Set<Order> orders, Set<Category> categories) {
       this.email = email;
       this.username = username;
       this.password = password;
       this.birthday = birthday;
       this.job = job;
       this.address = address;
       this.creditLimit = creditLimit;
       this.role = role;
       this.orders = orders;
       this.categories = categories;
    }
   
     @Id 

    
    @Column(name="email", unique=true, nullable=false, length=100)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    
    @Column(name="username", nullable=false, length=45)
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    
    @Column(name="password", nullable=false, length=45)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="birthday", length=26)
    public Date getBirthday() {
        return this.birthday;
    }
    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    
    @Column(name="job", length=45)
    public String getJob() {
        return this.job;
    }
    
    public void setJob(String job) {
        this.job = job;
    }

    
    @Column(name="address", length=300)
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    
    @Column(name="credit_limit", nullable=false, precision=22, scale=0)
    public double getCreditLimit() {
        return this.creditLimit;
    }
    
    public void setCreditLimit(double creditLimit) {
        this.creditLimit = creditLimit;
    }

    
    @Column(name="role", length=45)
    public String getRole() {
        return this.role;
    }
    
    public void setRole(String role) {
        this.role = role;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
    public Set<Order> getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }

@ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(name="user_category", catalog="ebdb", joinColumns = { 
        @JoinColumn(name="user_id", nullable=false, updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="category_id", nullable=false, updatable=false) })
    public Set<Category> getCategories() {
        return this.categories;
    }
    
    public void setCategories(Set<Category> categories) {
        this.categories = categories;
    }




}



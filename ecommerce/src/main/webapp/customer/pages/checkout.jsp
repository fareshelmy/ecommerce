<%-- 
    Document   : checkout
    Created on : Mar 29, 2019, 8:50:05 PM
    Author     : Mohamed
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <h3 class="breadcrumb-header">Checkout</h3>
                <ul class="breadcrumb-tree">
                    <li><a href="#">Home</a></li>
                    <li class="active">Checkout</li>
                </ul>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <div class="col-md-7">
                <c:choose>
                    <c:when test="${fn:length(sessionScope.cartProducts) > 0}">
                        <c:forEach items="${sessionScope.cartProducts}" var="product">
                            <!-- Product main img -->
                            <div id="${product.id}">
                                <div class="col-md-5 col-md-push-2">
                                    <div id="product-main-img">
                                        <div class="product-preview">
                                            <img src="${product.image}" alt="">
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product main img -->

                                <!-- Product thumb imgs -->
                                <div class="col-md-2  col-md-pull-5"></div>
                                <!-- /Product thumb imgs -->  

                                <!-- Product details -->
                                <div class="col-md-5">
                                    <div class="product-details">
                                        <h2 class="product-name">${product.name}</h2>
                                        <div>
                                            <div class="product-rating">
                                                <c:forEach var="i" begin="0" end="${product.rating}" step="1" >
                                                    <i class="fa fa-star"></i>    
                                                </c:forEach>
                                            </div>
                                            <a class="review-link" href="#">10 Review(s)</a>
                                        </div>
                                        <div>
                                            <h3 class="product-price">EGP${product.price} <p class="product-old-price">500g</p></h3>
                                            <span class="product-available">In Stock</span>
                                        </div>
                                        <p>${product.description}</p>

                                        <div class="add-to-cart">
                                            <div class="text-center" id='error${product.id}'></div>
                                            <div class="qty-label">
                                                Qty
                                                <div class="input-number">
                                                    <input type="number" value="1" name="inputQty" onchange="checkCreditWithQuantity('${sessionScope.userCredit}')">
                                                    <span class="qty-up">+</span>
                                                    <span class="qty-down">-</span>
                                                </div>
                                            </div>
                                            <ul class="product-links">
                                                <li>Category:</li>
                                                <li><a href="/ecommerce/customer/searchHandler?searchBarCategory=${product.category.name}">${product.category.name}</a></li>
                                            </ul><br/>

                                            <button class="add-to-cart-btn" onclick="removeFromCart('${product.id}'); updateView('${product.id}'); checkCreditWithQuantity('${sessionScope.userCredit}')"><i class="fa fa-shopping-cart"></i> remove from cart</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <!-- /Product details -->
                    </c:when>
                    <c:otherwise>
                        <div class="section-title text-center">
                            <h5 class="title">Your Cart is Empty!</h5>
                        </div>
                    </c:otherwise>
                </c:choose>

            </div>

            <!-- Order Details -->
            <div class="col-md-5 order-details" onload="checkUserCredit('${session.userCredit}')">
                <div class="section-title text-center">
                    <h3 class="title">Your Order</h3>
                </div>
                <div class="order-summary">
                    <div class="order-col">
                        <div><strong>PRODUCT</strong></div>
                        <div><strong>TOTAL</strong></div>
                    </div>

                    <div class="order-products">
                        <c:choose>
                            <c:when test="${fn:length(sessionScope.cartProducts) > 0}">
                                <c:forEach items="${sessionScope.cartProducts}" var="product">
                                    <div name='orderSpecification' id="${product.id}" class="order-col">
                                        <div> <span name="spanQty">1</span>x ${product.name}</div>
                                        <div>EGP<span name="spanPrice">${product.price}</span></div>
                                    </div>
                                </c:forEach>
                            </c:when>
                        </c:choose>
                    </div>

                    <div class="order-col">
                        <div><strong>TOTAL</strong></div>
                        <div><strong class="order-total">
                                EGP<span id="total">${sessionScope.cartProducts.stream()
                                                      .map(product -> product.price)
                                                      .sum()
                                    }</span>
                            </strong></div>
                    </div>
                </div>

                <button type="button" id="submitBtn" class="primary-btn order-submit" onclick="placeOrder('${sessionScope.cartProducts}')">
                    Place order
                </button>

            </div>
            <!-- /Order Details -->
        </div>

        <!-- /container -->
    </div>
    <!-- /SECTION -->
</div>
<script src="/ecommerce/customer/js/checkoutScript.js"></script>

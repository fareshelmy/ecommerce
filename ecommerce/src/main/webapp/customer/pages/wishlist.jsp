<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${empty sessionScope.passedWishlist}">
    <jsp:forward page="/wishlist"/>
</c:if>

<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <h3 class="breadcrumb-header">Wishlist</h3>
                <ul class="breadcrumb-tree">
                    <li><a href="/ecommerce/home">Home</a></li>
                    <li class="active">Wishlist</li>
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

            <!-- store products -->
            <div id="wishlistContainer" class="col-md-11">
                <c:choose>
                    <c:when test="${fn:length(sessionScope.wishlist) > 0}">
                        <c:forEach items="${sessionScope.wishlist}" var="product">
                            <div id="${product.id}" class="col-md-4 col-xs-6">
                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <img src="${product.image}" alt="Image" />
                                        <div class="product-label">
                                            <c:if test="${product.quantity < 4}">
                                                <span class="sale">Only ${product.quantity} Left</span>
                                            </c:if>
                                            <c:if test="${((now.time - product.entranceDate.time) / (1000*60*60*24)) le 6}">
                                                <span class="new">NEW</span>
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">${product.category.name}</p>
                                        <h3 class="product-name"><a href="/ecommerce/customer/viewProductServlet?productId=${product.id}">${product.name}</a></h3>
                                        <h4 class="product-price">EGP${product.price}</h4>
                                        <div class="product-rating">
                                            <c:forEach var="i" begin="0" end="${product.rating}" step="1">    
                                                <i class="fa fa-star"></i>
                                            </c:forEach>
                                        </div>
                                        <div class="product-btns">
                                            <button class="delete" onclick="removeFromWishlist('${product.id}',${fn:length(sessionScope.wishlist)})"><i class="fa fa-trash"></i><span class="tooltipp">Remove</span></button>
                                            <button class="quick-view" ><a href="/ecommerce/customer/viewProductServlet?productId=${product.id}"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></a></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <button id="cartButton" onclick="addToCart(this, '${product.id}')" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                    </div>
                                </div>
                                <!-- /product -->
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div class="section-title text-center">
                            <h5 class="title">Your Wishlist is Empty!</h5>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
            <!-- /store products -->

        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->
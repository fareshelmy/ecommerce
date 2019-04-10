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
                    <li><a href="#">Home</a></li>
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
                                        <img src="${product.image}" alt="">
                                        <div class="product-label">
                                            <span class="new">NEW</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">${product.category.name}</p>
                                        <h3 class="product-name"><a href="#">${product.name}</a></h3>
                                        <h4 class="product-price">EGP${product.price}</h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="delete" onclick="removeFromWishlist('${product.id}',${fn:length(sessionScope.wishlist)})"><i class="fa fa-trash"></i><span class="tooltipp">Remove</span></button>
                                            <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <button id="cartButton" onclick="addToCart(this, '${pageContext.session.id}', '${product.id}')" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                    </div>
                                </div>
                                <!-- /product -->
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <center><c:out value="Your Wishlist is Empty!"></c:out></center>
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
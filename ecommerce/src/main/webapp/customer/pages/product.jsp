<%-- 
    Document   : product
    Created on : Mar 29, 2019, 8:57:30 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page errorPage="errorPage.jsp" %>  

<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/customer/pages/index.jsp">Home</a></li>
                    <li><a href="#">All Categories</a></li>
                    <li><a href="#">Seafood</a></li>
                    <li class="active">${sessionScope.product.name}</li>
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
            <!-- Product main img -->
            <div class="col-md-5 col-md-push-2">
                <div id="product-main-img">
                    <div class="product-preview">
                        <img src="${sessionScope.product.image}" alt="">
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
                    <h2 class="product-name">${sessionScope.product.name}</h2>
                    <div>
                        <div class="product-rating">
                            <c:forEach var="i" begin="0" end="${sessionScope.product.rating}" step="1" >
                                <i class="fa fa-star"></i>    
                            </c:forEach>
                        </div>
                    </div>
                    <div>
                        <h3 class="product-price">EGP${sessionScope.product.price} <span class="product-old-price">500g</span></h3>
                        <span class="product-available">In Stock</span>
                    </div>

                    <div class="add-to-cart">
                        <button class="add-to-cart-btn" onclick="addToCart(this, '${product.id}')"><i class="fa fa-shopping-cart"></i> add to cart</button>
                    </div>


                    <ul class="product-links">
                        <li>Category:</li>
                        <li><a href="http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/customer/searchHandler?searchBarCategory=${sessionScope.product.category.name}">${sessionScope.product.category.name}</a></li>
                    </ul>

                </div>
            </div>
            <!-- /Product details -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- Section -->
<div class="section">
    <!-- container -->
    
    <div class="container">
        <!-- row -->
        <div class="row">
                        <!-- Product tab -->
            <div class="col-md-12">
                <div id="product-tab">
                    <!-- product tab nav -->
                    <ul class="tab-nav">
                        <li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>

                    </ul>
                    <!-- /product tab nav -->

                    <!-- product tab content -->
                    <div class="tab-content">
                        <!-- tab1  -->
                        <div id="tab1" class="tab-pane fade in active">
                            <div class="row">
                                <div class="col-md-12">
                                    <p>
                                        <c:choose>
                                            <c:when test="${sessionScope.product.description ne ''}"> <center><c:out value="${sessionScope.product.description}"></c:out></center></c:when>
                                            <c:otherwise>
                                                <center><c:out value="No Description Found"></c:out></center>
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- /tab1  -->

                      
                        <!-- /tab2  -->
                    </div>
                    <!-- /product tab content  -->
                </div>
            </div>
            <!-- /product tab -->
            <div class="col-md-12">
                <div class="section-title text-center">
                    <h3 class="title">Related Products</h3>
                </div>
            </div>

            <!-- product -->
            <c:forEach items="${sessionScope.relatedProducts}" var="product">
                <div class="col-md-3 col-xs-6">
                    <div class="product">
                        <div class="product-img">
                            <img src="${product.image}" alt="">
                            <div class="product-label">
                                <span class="sale">-30%</span>
                            </div>
                        </div>
                        <div class="product-body">
                            <p class="product-category">${product.category.name}</p>
                            <h3 class="product-name"><a href="#">${product.name}</a></h3>
                            <h4 class="product-price">EGP${product.price} <span class="product-old-price">500g</span></h4>
                            <div class="product-rating">
                               <c:forEach var="i" begin="0" end="${product.rating}" step="1" >
                                    <i class="fa fa-star"></i>    
                                </c:forEach>                        
                            </div>
                            <div class="product-btns">
                                <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                <button class="quick-view"><a href="http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/customer/viewProductServlet?productId=${product.id}"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></a></button>
                            </div>
                        </div>
                        <div class="add-to-cart">
                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <!-- /product -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /Section -->

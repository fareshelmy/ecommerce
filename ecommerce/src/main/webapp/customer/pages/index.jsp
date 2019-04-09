<%-- 
    Document   : index
    Created on : Mar 29, 2019, 8:53:47 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${empty sessionScope.newProducts}">
    <jsp:forward page="/home"/>
</c:if>
<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- shop -->
            <div class="col-md-4 col-xs-6">
                <div class="shop">
                    <div class="shop-img">
                        <img src="/ecommerce/img/products/shop01.png" alt="">
                    </div>
                    <div class="shop-body">
                        <h3>Seafood<br>Collection</h3>
                        <a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- /shop -->

            <!-- shop -->
            <div class="col-md-4 col-xs-6">
                <div class="shop">
                    <div class="shop-img">
                        <img src="/ecommerce/img/products/shop03.png" alt="">
                    </div>
                    <div class="shop-body">
                        <h3>Bakery<br>Collection</h3>
                        <a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- /shop -->

            <!-- shop -->
            <div class="col-md-4 col-xs-6">
                <div class="shop">
                    <div class="shop-img">
                        <img src="/ecommerce/img/products/shop02.png" alt="">
                    </div>
                    <div class="shop-body">
                        <h3>Desserts<br>Collection</h3>
                        <a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- /shop -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h3 class="title">New Products</h3>
                    <div class="section-nav">
                        <ul class="section-tab-nav tab-nav">
                            <li class="active"><a href="/ecommerce/home?newCategoryName=All%20Categories">All Categories</a></li>
                            <li><a  href="/ecommerce/home?newCategoryName=Meat%20%26%20Poultry">Meat</a></li>
                            <li><a  href="/ecommerce/home?newCategoryName=Seafood">Seafood</a></li>
                            <li><a  href="/ecommerce/home?newCategoryName=Fruits%20%26%20Vegetables">Fruits</a></li>
                            <li><a  href="/ecommerce/home?newCategoryName=Bakery%20%26%20Pastry">Bakery</a></li>
                            <li><a  href="/ecommerce/home?newCategoryName=Cheese,%20Dairy%20%26%20Deli">Cheese</a></li>
                            <li><a  href="/ecommerce/home?newCategoryName=Desserts%20%26%20Sweets">Desserts</a></li>
                            <li><a  href="/ecommerce/home?newCategoryName=Home%20%26%20Garden">Home</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /section title -->

            <!-- Products tab & slick -->
            <div class="col-md-12">
                <div class="row">
                    <div class="products-tabs">
                        <!-- tab -->
                        <div id="tab1" class="tab-pane active">
                            <div class="products-slick" data-nav="#slick-nav-1">
                                <!-- product -->
                                <c:forEach items="${sessionScope.newProducts}" var="product">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="${product.image}" alt="">
                                            <div class="product-label">
                                                <span class="sale">-30%</span>
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
                                                <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                            </div>
                                        </div>
                                        <div class="add-to-cart">
                                            <button id="cartButton" onclick="addToCart(this, '${pageContext.session.id}', '${product.id}')" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- /product -->


                            </div>
                            <div id="slick-nav-1" class="products-slick-nav"></div>
                        </div>
                        <!-- /tab -->
                    </div>
                </div>
            </div>
            <!-- Products tab & slick -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h3 class="title">Top selling</h3>
                    <div class="section-nav">
                        <ul class="section-tab-nav tab-nav">
                            <li class="active"><a href="/ecommerce/home?topCategoryName=All%20Categories">All Categories</a></li>
                            <li><a  href="/ecommerce/home?topCategoryName=Meat%20%26%20Poultry">Meat</a></li>
                            <li><a  href="/ecommerce/home?topCategoryName=Seafood">Seafood</a></li>
                            <li><a  href="/ecommerce/home?topCategoryName=Fruits%20%26%20Vegetables">Fruits</a></li>
                            <li><a  href="/ecommerce/home?topCategoryName=Bakery%20%26%20Pastry">Bakery</a></li>
                            <li><a  href="/ecommerce/home?topCategoryName=Cheese,%20Dairy%20%26%20Deli">Cheese</a></li>
                            <li><a  href="/ecommerce/home?topCategoryName=Desserts%20%26%20Sweets">Desserts</a></li>
                            <li><a  href="/ecommerce/home?topCategoryName=Home%20%26%20Garden">Home</a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <!-- /section title -->

            <!-- Products tab & slick -->
            <div class="col-md-12">
                <div class="row">
                    <div class="products-tabs">
                        <!-- tab -->
                        <div id="tab2" class="tab-pane fade in active">
                            <div class="products-slick" data-nav="#slick-nav-2">
                                <!-- product -->
                                <c:forEach items="${sessionScope.topSellingProducts}" var="product">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="${product.image}" alt="">
                                            <div class="product-label">
                                                <span class="sale">-30%</span>
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
                                                <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                            </div>
                                        </div>
                                        <div class="add-to-cart">
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- /product -->
                            </div>
                            <div id="slick-nav-2" class="products-slick-nav"></div>
                        </div>
                        <!-- /tab -->
                    </div>
                </div>
            </div>
            <!-- /Products tab & slick -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

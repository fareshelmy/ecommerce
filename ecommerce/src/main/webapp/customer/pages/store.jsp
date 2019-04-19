<%-- 
    Document   : store
    Created on : Mar 29, 2019, 8:43:29 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page errorPage="errorPage.jsp" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script src="/ecommerce/customer/js/search.js"></script>
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="/ecommerce/home">Home</a></li>
                    <li><a href="#">All Categories</a></li>
                    <li><a href="#">Seafood (227,490 Results)</a></li>
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
            <!-- ASIDE -->
            <div id="aside" class="col-md-3">
                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">Categories</h3>
                    <div class="checkbox-filter">

                        <div class="input-checkbox">
                            <input type="checkbox" name="categories" id="category-1" onclick='window.location.assign("/ecommerce/customer/searchHandler?searchBarCategory=Meat")' 
                                   <c:if test="${sessionScope.selectedCategory == 'select'}">
                                       checked
                                   </c:if>
                                   >
                            <label for="category-1">
                                <span></span>
                                Meat & Poultry
                                <small>(120)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" name="categories" id="category-2" onclick='window.location.assign("/ecommerce/customer/searchHandler?searchBarCategory=Seafood")'
                                   <c:if test="${sessionScope.Seafood != null}">
                                       checked="checked"
                                   </c:if>>
                            <label for="category-2">
                                <span></span>
                                Seafood
                                <small>(740)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" name="categories" id="category-3" onclick='window.location.assign("/ecommerce/customer/searchHandler?searchBarCategory=Fruits")'
                                   <c:if test="${sessionScope.Fruits} != null">
                                       checked="checked"
                                   </c:if>>
                            <label for="category-3">
                                <span></span>
                                Fruits & Vegetables
                                <small>(1450)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" name="categories" id="category-4" onclick='window.location.assign("/ecommerce/customer/searchHandler?searchBarCategory=Bakery")'
                                   <c:if test="${sessionScope.Bakery} != null">
                                       checked="checked"
                                   </c:if>>
                            <label for="category-4">
                                <span></span>
                                Bakery & Pastry
                                <small>(578)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" name="categories" id="category-5" onclick='window.location.assign("/ecommerce/customer/searchHandler?searchBarCategory=Cheese")'
                                   <c:if test="${sessionScope.Cheese} != null">
                                       checked="checked"
                                   </c:if>>
                            <label for="category-5">
                                <span></span>
                                Cheese & Dairy
                                <small>(120)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" name="categories" id="category-6" onclick='window.location.assign("/ecommerce/customer/searchHandler?searchBarCategory=Desserts")'
                                   <c:if test="${sessionScope.Desserts} != null">
                                       checked="checked"
                                   </c:if>>
                            <label for="category-6">
                                <span></span>
                                Desserts & Sweets
                                <small>(740)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" name="categories" id="category-7" onclick='window.location.assign("/ecommerce/customer/searchHandler?searchBarCategory=Home")'
                                   <c:if test="${sessionScope.Home} != null">
                                       checked="checked"
                                   </c:if>>
                            <label for="category-7">
                                <span></span>
                                Home & Garden
                                <small>(740)</small>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->

                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">Price</h3>
                    <div class="price-filter">
                        <div id="price-slider"></div>
                        <div class="input-number price-min">
                            <input id="price-min" type="number">
                            <span class="qty-up">+</span>
                            <span class="qty-down">-</span>
                        </div>
                        <span>-</span>
                        <div class="input-number price-max">
                            <input id="price-max" type="number">
                            <span class="qty-up">+</span>
                            <span class="qty-down">-</span>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->

            </div>
            <!-- /ASIDE -->

            <!-- STORE -->
            <div id="store" class="col-md-9">
                <!-- store top filter -->
                <div class="store-filter clearfix">
                    <div class="store-sort">
                        <label>
                            Sort By:
                            <select class="input-select" id="sortBy">
                                <option value="0">Top Rated</option>
                                <option value="1">Lowest Price</option>
                            </select>
                        </label>

                        <label>
                            Show:
                            <select class="input-select" id="show">
                                <option value="9">9</option>
                                <option value="15">15</option>
                            </select>
                        </label>
                    </div>

                </div>
                <!-- /store top filter -->

                <!-- store products -->
                <div class="row">
                    <!-- product -->
                    <c:choose>
                        <c:when test="${fn:length(sessionScope.searchedResults) > 0}">
                            <c:forEach items="${sessionScope.searchedResults}" var="product">
                                <c:if test="${product.quantity gt 0}">
                                    <div class="col-md-4 col-xs-6">
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
                                                <h3 class="product-name"><a href="customer/viewProductServlet?productId=${product.id}">${product.name}</a></h3>
                                                <h4 class="product-price">EGP${product.price}</h4>
                                                <div class="product-rating">
                                                    <c:forEach var="i" begin="0" end="${product.rating}" step="1">    
                                                        <i class="fa fa-star"></i>
                                                    </c:forEach>
                                                </div>
                                                <div class="product-btns">
                                                    <button class="add-to-wishlist" onclick="addToWishlist(this, '${product.id}')"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>                                                
                                                    <button class="quick-view" ><a href="/ecommerce/customer/viewProductServlet?productId=${product.id}"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></a></button>
                                                </div>
                                            </div>
                                            <div class="add-to-cart">
                                                <button id="cartButton" onclick="addToCart(this, '${product.id}')" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                            <!-- /product -->
                        </div>
                        <!-- store bottom filter -->
                        <div class="store-filter clearfix">
                            <span class="store-qty">Showing 20-100 products</span>
                            <ul class="store-pagination">
                                <c:forEach var="i" begin="1" end="${sessionScope.numberOfPages}" step="1"> 
                                    <li <c:if test="${sessionScope.pageNumber == i }">
                                        class="active"
                                    </c:if> onclick="${sessionScope.pageNumber = i};"><a href="/ecommerce/customer/searchHandler?showNumber=3&pageNumber=${i}&searchBarCategory=All%20Categories">${i}</a></li>
                                 </c:forEach>
                                <!--<li><a href="#"><i class="fa fa-angle-right"></i></a></li>-->
                            </ul>
                        </div>
                        <!-- /store bottom filter -->
                    </c:when>    
                    <c:otherwise>
                        <div class="section-title text-center">
                            <h5 class="title">No results found</h5>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
            <!-- /STORE -->
        </div>
        <!-- /STORE -->
    </div>
    <!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /SECTION -->

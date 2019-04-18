

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Foodland</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="/ecommerce/customer/css/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="/ecommerce/customer/css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="/ecommerce/customer/css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="/ecommerce/customer/css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="/ecommerce/customer/css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="/ecommerce/customer/css/style.css"/>

        <!-- Custom JavaScript -->
        <script src="/ecommerce/customer/js/script.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body onload="addToCart(null, 0);checkCreditWithQuantity('${sessionScope.userCredit}')">
        <!-- HEADER -->
        <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="tel:+201-06-404-6540" target="blank"><i class="fa fa-phone"></i> +201-06-404-6540</a></li>
                        <li><a href="mailto:fares.helmy93@email.com" target="blank"><i class="fa fa-envelope-o"></i> fares.helmy93@email.com</a></li>
                        <li><a href="https://www.google.com/maps/?q=Sheikh%20Zayed%20City" target="blank"><i class="fa fa-map-marker"></i> 17 Tenth District, October City, Egypt</a></li>
                    </ul>
                    <ul class="header-links pull-right">

                        <c:choose>
                            <c:when test="${sessionScope.loggedIn == 'true'}">
                                <li>
                                    <a href="/ecommerce/profile"><i class="fa fa-user-o"></i>
                                        My Account
                                    </a>
                                </li>
                                <li>
                                    <a href="#" onclick="return processLogout()"><i class="fa fa-sign-out"></i>
                                        Sign Out
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a href="/ecommerce/customer/pages/login.jsp"><i class="fa fa-sign-in"></i>
                                        Sign In
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
            <!-- /TOP HEADER -->

            <!-- MAIN HEADER -->
            <div id="header">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <!-- LOGO -->
                        <div class="col-md-3">
                            <div class="header-logo">
                                <a href="/ecommerce/customer/pages/index.jsp" class="logo">
                                    <img src="/ecommerce/img/products/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- /LOGO -->

                        <!-- SEARCH BAR -->
                        <div class="col-md-6">
                            <div class="header-search">
                                <form method="GET" action="/ecommerce/customer/searchHandler">
                                    <select class="input-select" name="searchBarCategory">
                                        <option value="All Categories">All Categories</option>
                                        <option value="Meat & Poultry">Meat & Poultry</option>
                                        <option value="Seafood">Seafood</option>
                                        <option value="Fruits & Vegetables">Fruits & Vegetables</option>
                                        <option value="Bakery & Pastry">Bakery & Pastry</option>
                                        <option value="Cheese, Dairy & Deli">Cheese, Dairy & Deli</option>
                                        <option value="Desserts & Sweets">Desserts & Sweets</option>
                                        <option value="Home & Garden">Home & Garden</option>
                                    </select>
                                    <input class="input" name="productSubString" placeholder="Search here">
                                    <button class="search-btn" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                        <!-- /SEARCH BAR -->

                        <!-- ACCOUNT -->
                        <div class="col-md-3 clearfix">
                            <div class="header-ctn">
                                <!-- Wishlist -->
                                <div>
                                    <a href="/ecommerce/wishlist">
                                        <i class="fa fa-heart-o"></i>
                                        <span>My Wishlist</span>
                                        <div class="qty" id="wishlistQuantity">${fn:length(sessionScope.wishlist)}</div>
                                    </a>
                                </div>
                                <!-- /Wishlist -->

                                <!-- Cart -->
                                <div class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" onclick="viewCart()">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span>My Cart</span>
                                        <div class="qty" id="cartQuantity"></div>
                                    </a>
                                    <div class="cart-dropdown">
                                        <div id="cartDropDownList" class="cart-list">
                                        </div>
                                        <div class="cart-summary">
                                            <small id="itemsCount"></small>
                                            <h5 id="subtotal"></h5>
                                        </div>
                                        <div class="cart-btns">
                                            <a href="/ecommerce/customer/pages/checkout.jsp">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Cart -->

                                <!-- Menu Toogle -->
                                <div class="menu-toggle">
                                    <a href="#">
                                        <i class="fa fa-bars"></i>
                                        <span>Menu</span>
                                    </a>
                                </div>
                                <!-- /Menu Toogle -->
                            </div>
                        </div>
                        <!-- /ACCOUNT -->
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </div>
            <!-- /MAIN HEADER -->
        </header>
        <!-- /HEADER -->


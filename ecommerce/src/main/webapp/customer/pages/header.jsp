
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body onload="addToCart(null, '${pageContext.session.id}', null)">
        <!-- HEADER -->
        <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="#"><i class="fa fa-phone"></i> +201-06-404-6540</a></li>
                        <li><a href="#"><i class="fa fa-envelope-o"></i> fares.helmy93@email.com</a></li>
                        <li><a href="#"><i class="fa fa-map-marker"></i> 17 Tenth District, October City, Egypt</a></li>
                    </ul>
                    <ul class="header-links pull-right">
                        <li>    
                            <c:choose>
                                <c:when test="${sessionScope.loggedIn == 'true'}">
                                    <a href="/ecommerce/profile"><i class="fa fa-user-o"></i>
                                        My Account
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a href="/ecommerce/customer/pages/login.jsp"><i class="fa fa-user-o"></i>
                                        Sign In
                                    </a>
                                </c:otherwise>
                            </c:choose>
                        </li>
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
                                <a href="#" class="logo">
                                    <img src="/ecommerce/img/products/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- /LOGO -->

                        <!-- SEARCH BAR -->
                        <div class="col-md-6">
                            <div class="header-search">
                                <form method="post" action="/ecommerce/customer/searchHandler">
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
                                    <a href="#">
                                        <i class="fa fa-heart-o"></i>
                                        <span>My Wishlist</span>
                                        <div class="qty">0</div>
                                    </a>
                                </div>
                                <!-- /Wishlist -->

                                <!-- Cart -->
                                <div class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" onclick="viewCart('${pageContext.session.id}')">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span>My Cart</span>
                                        <div class="qty" id="cartQuantity">0</div>
                                    </a>
                                    <div class="cart-dropdown">
                                        <div id="cartDropDownList" class="cart-list">
                                        </div>
                                        <div class="cart-summary">
                                            <small id="itemsCount"></small>
                                            <h5 id="subtotal"></h5>
                                        </div>
                                        <div class="cart-btns">
                                            <a href="#">View Cart</a>
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

        <!-- NAVIGATION -->
        <nav id="navigation">
            <!-- container -->
            <div class="container">
                <!-- responsive-nav -->
                <div id="responsive-nav">
                    <!-- NAV -->
                    <ul class="main-nav nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Top Rated</a></li>
                        <li><a href="#">Most Popular</a></li>
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->
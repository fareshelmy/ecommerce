<%-- 
    Document   : register
    Created on : Mar 29, 2019, 8:58:13 PM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Regiser</title>

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

        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <!-- HEADER -->
        <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="#"><i class="fa fa-phone"></i> +201-11-199-7574</a></li>
                        <li><a href="#"><i class="fa fa-envelope-o"></i> mohamedj239@gmail.com</a></li>
                        <li><a href="#"><i class="fa fa-map-marker"></i> Faisl Clock Square</a></li>
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
                                <a href="/ecommerce/home" class="logo" >
                                    <img src="/ecommerce/img/products/logo.png" alt="foodland logo" id="logoImg">
                                </a>
                            </div>
                        </div>
                        <!-- /LOGO -->

                        <!-- /ACCOUNT -->
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </div>
            <!-- /MAIN HEADER -->
        </header>
        <!-- /HEADER -->

        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="breadcrumb-header">Register</h3>
                        <ul class="breadcrumb-tree">
                            <li><a href="#">Home</a></li>
                            <li class="active">Register</li>
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

            <div class="container">
                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-body">
                            <form method="POST" action="/ecommerce/registerAction" role="form">
                                <div class="form-group">
                                    <h2>Register</h2>
                                </div>
                                <div class="form-group">
                                    <strong>Username</strong>
                                    <input id="username" name="username" type="text" maxlength="50" class="form-control" placeholder="Username" value="${param.username}" required>
                                </div>
                                <div class="form-group">
                                    <strong>Email</strong>
                                    <input id="signinEmail"  name="email"  type="email" maxlength="50" class="form-control" placeholder="Email" value="${param.email}" required>
                                </div>
                                <div style="color: #FF0000;">${invalidEmail}</div>
                                <div class="form-group">
                                    <strong>Password</strong>
                                    <input id="password" name="password" type="password" maxlength="50" class="form-control" placeholder="Password" value="${param.password}" required>
                                </div>
                                <div class="form-group">
                                    <strong>Confirm Password</strong>
                                    <input id="confirmPassword" name="confirmPassword" type="password" maxlength="50" class="form-control" placeholder="Confirm Password" value="${param.confirmPassword}" required>
                                </div>
                                <div id="confirmPasswordError"></div>
                                
                                <div class="form-group">
                                    <strong>Credit Limit</strong>
                                    <input id="creditLimit" name="creditLimit" type="number" min="0" maxlength="50" class="form-control" placeholder="Credit Limit" value="${param.creditLimit}">
                                </div>
                                <div class="form-group">
                                    <strong>Birth Date</strong>							
                                    <input id="birthday" name="birthday" type="date" maxlength="25" class="form-control" value="${param.birthday}">
                                </div>
                                <div class="form-group">
                                    <strong>Address</strong>
                                    <input id="address" name="address" type="text" maxlength="50" class="form-control" placeholder="Address" value="${param.address}">
                                </div>
                                <div class="form-group">
                                    <strong>Job</strong>
                                    <input id="job" name="job" type="text" maxlength="50" class="form-control" placeholder="Job" value="${param.job}">
                                </div>
                                <div class="form-group">
                                    <button id="signinSubmit" type="submit" class="primary-btn order-submit">Register</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <!-- /SECTION -->
        <!-- NEWSLETTER -->
        <div id="newsletter" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="newsletter">
                            <p>Sign Up for the <strong>NEWSLETTER</strong></p>
                            <form>
                                <input class="input" type="email" placeholder="Enter Your Email">
                                <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /NEWSLETTER -->

        <!-- FOOTER -->
        <footer id="footer">
            <!-- top footer -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">About Us</h3>
                                <p>At Foodland Egypt, we aim to provide you with quality, ease and convenience at your meal?s every step. Whether you?re ordering, receiving or preparing your meal, we hope that we will inspire you to discover the fun and passion of home cooking.</p>
                                <ul class="footer-links">
                                    <li><a href="#"><i class="fa fa-map-marker"></i>17 Tenth District, October City, Egypt</a></li>
                                    <li><a href="#"><i class="fa fa-phone"></i>+201-06-404-6540</a></li>
                                    <li><a href="#"><i class="fa fa-envelope-o"></i>fares.helmy93@email.com</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Categories</h3>
                                <ul class="footer-links">
                                    <li><a href="#">Meat & Poultry</a></li>
                                    <li><a href="#">Seafood</a></li>
                                    <li><a href="#">Fruits & Vegetables</a></li>
                                    <li><a href="#">Bakery & Pastry</a></li>
                                    <li><a href="#">Cheese, Dairy & Deli</a></li>
                                    <li><a href="#">Desserts & Sweets</a></li>
                                    <li><a href="#">Home & Garden</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="clearfix visible-xs"></div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Service</h3>
                                <ul class="footer-links">
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">View Cart</a></li>
                                    <li><a href="#">Wishlist</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /top footer -->
        </footer>

        <!-- jQuery Plugins -->
        <script src="/ecommerce/customer/js/jquery.min.js"></script>
        <script src="/ecommerce/customer/js/bootstrap.min.js"></script>
        <script src="/ecommerce/customer/js/slick.min.js"></script>
        <script src="/ecommerce/customer/js/nouislider.min.js"></script>
        <script src="/ecommerce/customer/js/jquery.zoom.min.js"></script>
        <script src="/ecommerce/customer/js/main.js"></script>
        <script src="/ecommerce/customer/js/validation.js"></script>


    </body>
</html>

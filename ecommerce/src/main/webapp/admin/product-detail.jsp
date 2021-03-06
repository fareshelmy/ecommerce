<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
single-product-tab-area mg-t-0 mg-b-30<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Product Details</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="css/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
        <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
         <script src="admin/js/goBack.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">
                    <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    <strong><img src="img/logo/logosn.png" alt="" /></strong>
                </div>
                <div class="nalika-profile">
                    <div class="profile-dtl">
                        <a href="#"><img src="img/notification/4.jpg" alt="" /></a>
                        <h2>Admin <span class="min-dtn">${sessionScope.username}</span></h2>
                    </div>

                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li>
                                <a  href="HomeServlet" aria-expanded="false"><span class="glyphicon">&#xe021; Home</span> </a>

                            </li>
                            <li>
                                <a class="has-arrow" href="">
                                    
                                       <span class="glyphicon">&#xe080; Products</span>
                                </a>
                                <ul class="submenu-angle" aria-expanded="true">
                                    <li><a title="Product List" href="ProductListServlet">  Product List</a></li>
                                    <li><a title="Product Edit" href="insertProductServlet">  Add/Edit Product</a></li>
                                </ul>
                            </li>
                            <li>
                                <a class="has-arrow" href="" aria-expanded="false"><span class="glyphicon">&#xe080; Users</span></a>
                                <ul class="submenu-angle" aria-expanded="false">
                                    <li><a title="All Users" href="AllUsersListServlet"><span class="mini-sub-pro"> All Users</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a  href="AddAdminServlet" aria-expanded="false"><span class="glyphicon">&#xe080; Add Admin</span></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="logo-pro">
                             <a href="http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/admin/index.html"><img class="main-logo" src="http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/admin/img/logo/logo.png" alt="" /></a>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-advance-area">
                <div class="header-top-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="header-top-wraper">
                                    <div class="row">
                                        <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                            <div class="menu-switcher-pro">
                                                <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                                    <i class="icon nalika-menu-task"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                            <div class="header-top-menu tabl-d-n">
                                                <div class="breadcome-heading">
                                                    <form role="search" class="">
                                                        <input type="text" placeholder="Search..." class="form-control">
                                                        <a href=""><i class="fa fa-search"></i></a>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">

                                                    <li><a href="LogoutServlet"> <span class="glyphicon">&#xe163; LogOut</span></a>
                                                    </li>


                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Mobile Menu start -->
                <div class="mobile-menu-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="mobile-menu">
                                    <nav id="dropdown">
                                        <ul class="mobile-menu-nav">
                                            <li>
                                                <a  href="HomeServlet" aria-expanded="false"><i class="icon nalika-home icon-wrap"></i> <span class="mini-click-non">Home</span></a>

                                            </li>
                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">Products<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">
                                                    <li><a href="ProductListServlet">Product List</a></li>
                                                    <li><a href="insertProductServlet">Add/Edit Product</a></li>
                                                </ul>
                                            </li>
                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">Users<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">
                                                    <li><a href="AllUsersListServlet">All user</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="AddAdminServlet">Add admin</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Mobile Menu end -->
                <div class="breadcome-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="breadcome-list">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                           <div class="breadcomb-wp">
                                                <div class="breadcomb-icon">
                                                    <i> <span class="glyphicon">&#xe239;</span></i>
                                                </div>
                                                <br><br>
                                                <div class="breadcomb-ctn">
                                                    <h2>Dashboard</h2>
                                                    <p>Welcome to <span class="bread-ntd">Your Grocery FoodLand Page</span></p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single pro tab start-->


            <div class="single-product-tab-area mg-t-0 mg-b-30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="single-product-pr">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                        <div id="myTabContent1" class="tab-content">
                                            <div class="product-tab-list tab-pane fade active in" id="single-tab1">
                                                <img src="admin/img/product/bg-1.jpg" alt="" />
                                            </div>
                                            <div class="product-tab-list tab-pane fade" id="single-tab2">
                                                <img src="admin/img/product/bg-2.jpg" alt="" />
                                            </div>
                                            <div class="product-tab-list tab-pane fade" id="single-tab3">
                                                <img src="admin/img/product/bg-3.jpg" alt="" />
                                            </div>
                                            <div class="product-tab-list tab-pane fade" id="single-tab4">
                                                <img src="admin/img/product/bg-1.jpg" alt="" />
                                            </div>
                                            <div class="product-tab-list tab-pane fade" id="single-tab5">
                                                <img src="admin/img/product/bg-2.jpg" alt="" />
                                            </div>
                                        </div>
                                        <ul id="single-product-tab">
                                            <li class="active">
                                                <a href="#single-tab1"><img src="admin/img/product/1.jpg" alt="" /></a>
                                            </li>
                                            <li>
                                                <a href="#single-tab2"><img src="admin/img/product/2.jpg" alt="" /></a>
                                            </li>
                                            <li>
                                                <a href="#single-tab3"><img src="admin/img/product/3.jpg" alt="" /></a>
                                            </li>
                                            <li>
                                                <a href="#single-tab4"><img src="admin/img/product/1.jpg" alt="" /></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                                        <div class="single-product-details res-pro-tb">
                                            <h1>${requestScope.product.name}</h1>
                                            <span class="single-pro-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <div class="single-pro-price">
                                                <span class="single-regular">${requestScope.product.price}</span>
                                            </div>
                                            <div class="single-pro-size">
                                                <h6>Size</h6>
                                                <span>S</span> <span>M</span> <span>L</span> <span>XL</span> <span>XXL</span>
                                            </div>
                                            <div class="color-quality-pro">
                                                <div class="color-quality-details">
                                                    <h5>Color</h5>
                                                    <span class="red"></span> <span class="green"></span> <span class="yellow"></span> <span class="black"></span> <span class="white"></span>
                                                </div>
                                                <div class="color-quality">
                                                    <h4>Quality</h4>
                                                    <div class="quantity">
                                                        <div class="pro-quantity-changer">
                                                            <input type="text" value="1" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="single-pro-button">
                                                    <div class="pro-button">
                                                        <a href="#">ADD TO Cart</a>
                                                    </div>
                                                    <div class="pro-viwer">
                                                        <a href="#"><i class="fa fa-heart"></i></a>
                                                        <a href="#"><i class="fa fa-eye"></i></a>
                                                    </div>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="single-social-area">
                                                    <h3>share this on</h3>
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-feed"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                            <div class="single-pro-cn">
                                                <h3>OVERVIEW</h3>
                                                <p>${requestScope.product.description}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single pro tab End-->
            <!-- Single pro tab review Start-->




            <div class="single-pro-review-area mt-t-30 mg-b-30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="single-tb-pr">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <ul id="myTab" class="tab-review-design">
                                            <li class="active"><a href="#description">description</a></li>
                                            <li><a href="#reviews"><span><i class="fa fa-star"></i><i class="fa fa-star"></i></span> reviews (1) <span><i class="fa fa-star"></i><i class="fa fa-star"></i></span></a></li>
                                            <li><a href="#INFORMATION">INFORMATION</a></li>
                                        </ul>
                                        <div id="myTabContent" class="tab-content">
                                            <div class="product-tab-list product-details-ect tab-pane fade active in" id="description">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="review-content-section">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                                                                ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                                                                mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                                                                beatae vitae dicta sunt explicabo.</p>
                                                            <p class="pro-b-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo nisi ut aliquip ex
                                                                ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ut labore et dolore magna aliqua. Ut enim ad , quis nostrud exercitation ullamco
                                                                laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-tab-list tab-pane fade" id="reviews">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="review-content-section">
                                                            <div class="review-content-section">
                                                                <div class="card-block">
                                                                    <div class="text-muted f-w-400">
                                                                        <p>No reviews yet.</p>
                                                                    </div>
                                                                    <div class="m-t-10">
                                                                        <div class="txt-primary f-18 f-w-600">
                                                                            <p>Your Rating</p>
                                                                        </div>
                                                                        <div class="stars stars-example-css detail-stars">
                                                                            <div class="review-rating">
                                                                                <fieldset class="rating">
                                                                                    <input type="radio" id="star5" name="rating" value="5">
                                                                                    <label class="full" for="star5"></label>
                                                                                    <input type="radio" id="star4half" name="rating" value="4 and a half">
                                                                                    <label class="half" for="star4half"></label>
                                                                                    <input type="radio" id="star4" name="rating" value="4">
                                                                                    <label class="full" for="star4"></label>
                                                                                    <input type="radio" id="star3half" name="rating" value="3 and a half">
                                                                                    <label class="half" for="star3half"></label>
                                                                                    <input type="radio" id="star3" name="rating" value="3">
                                                                                    <label class="full" for="star3"></label>
                                                                                    <input type="radio" id="star2half" name="rating" value="2 and a half">
                                                                                    <label class="half" for="star2half"></label>
                                                                                    <input type="radio" id="star2" name="rating" value="2">
                                                                                    <label class="full" for="star2"></label>
                                                                                    <input type="radio" id="star1half" name="rating" value="1 and a half">
                                                                                    <label class="half" for="star1half"></label>
                                                                                    <input type="radio" id="star1" name="rating" value="1">
                                                                                    <label class="full" for="star1"></label>
                                                                                    <input type="radio" id="starhalf" name="rating" value="half">
                                                                                    <label class="half" for="starhalf"></label>
                                                                                </fieldset>
                                                                            </div>
                                                                            <div class="clear"></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="input-group mg-b-15 mg-t-15">
                                                                        <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="User Name">
                                                                    </div>
                                                                    <div class="input-group mg-b-15">
                                                                        <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Last Name">
                                                                    </div>
                                                                    <div class="input-group mg-b-15">
                                                                        <span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Email">
                                                                    </div>
                                                                    <div class="form-group review-pro-edt mg-b-0-pr">
                                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">Submit
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-tab-list tab-pane fade" id="INFORMATION">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="review-content-section">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                                                                ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                                                                mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                                                                beatae vitae dicta sunt explicabo.</p>
                                                            <p class="pro-b-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo nisi ut aliquip ex
                                                                ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ut labore et dolore magna aliqua. Ut enim ad , quis nostrud exercitation ullamco
                                                                laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="footer-copyright-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jquery
                    ============================================ -->
        <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
                    ============================================ -->
        <script src="js/bootstrap.min.js"></script>
        <!-- wow JS
                    ============================================ -->
        <script src="js/wow.min.js"></script>
        <!-- price-slider JS
                    ============================================ -->
        <script src="js/jquery-price-slider.js"></script>
        <!-- meanmenu JS
                    ============================================ -->
        <script src="js/jquery.meanmenu.js"></script>
        <!-- owl.carousel JS
                    ============================================ -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- sticky JS
                    ============================================ -->
        <script src="js/jquery.sticky.js"></script>
        <!-- scrollUp JS
                    ============================================ -->
        <script src="js/jquery.scrollUp.min.js"></script>
        <!-- mCustomScrollbar JS
                    ============================================ -->
        <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
        <!-- metisMenu JS
                    ============================================ -->
        <script src="js/metisMenu/metisMenu.min.js"></script>
        <script src="js/metisMenu/metisMenu-active.js"></script>
        <!-- morrisjs JS
                    ============================================ -->
        <script src="js/sparkline/jquery.sparkline.min.js"></script>
        <script src="js/sparkline/jquery.charts-sparkline.js"></script>
        <!-- calendar JS
                    ============================================ -->
        <script src="js/calendar/moment.min.js"></script>
        <script src="js/calendar/fullcalendar.min.js"></script>
        <script src="js/calendar/fullcalendar-active.js"></script>
        <!-- tab JS
                    ============================================ -->
        <script src="js/tab.js"></script>
        <!-- plugins JS
                    ============================================ -->
        <script src="js/plugins.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="js/main.js"></script>
    </body>

</html>
<%-- 
    Document   : user-detail
    Created on : Apr 1, 2019, 6:30:28 PM
    Author     : Mayada Khaled
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Users Details</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="admin/img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="admin/css/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/owl.carousel.css">
        <link rel="stylesheet" href="admin/css/owl.theme.css">
        <link rel="stylesheet" href="admin/css/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="admin/css/metisMenu/metisMenu-vertical.css">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/calendar/fullcalendar.min.css">
        <link rel="stylesheet" href="admin/css/calendar/fullcalendar.print.min.css">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="admin/css/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="admin/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">
                    <a href="index.html"><img class="main-logo" src="admin/img/logo/logo.png" alt="" /></a>
                    <strong><img src="admin/img/logo/logosn.png" alt="" /></strong>
                </div>
                <div class="nalika-profile">
                    <div class="profile-dtl">
                        <a href="#"><img src="admin/img/notification/4.jpg" alt="" /></a>
                        <h2>Admin <span class="min-dtn">Name</span></h2>
                    </div>

                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li>
                                <a  href="index.html" aria-expanded="false"><i class="icon nalika-home icon-wrap"></i> <span class="mini-click-non">Home</span></a>

                            </li>
                            <li >
                                <a class="has-arrow" href="index.html">
                                    <i class="icon nalika-table icon-wrap"></i>
                                    <span class="mini-click-non">Your Product</span>
                                </a>
                                <ul class="submenu-angle" aria-expanded="true">
                                    <li><a title="Product List" href="product-list.jsp"><span class="mini-sub-pro">Product List</span></a></li>
                                    <li><a title="Product Edit" href="product-edit.html"><span class="mini-sub-pro">Product Edit</span></a></li>
                                </ul>
                            </li>


                            <li>
                                <a class="has-arrow" href="all-students.html" aria-expanded="false"><i class="icon nalika-table icon-wrap"></i> <span class="mini-click-non">View Users</span></a>
                                <ul class="submenu-angle" aria-expanded="false">
                                    <li><a title="All Users" href="user-list.jsp"><span class="mini-sub-pro">All Users</span></a></li>
                                    <li><a title="Edit User" href="user-edit.html"><span class="mini-sub-pro">Edit User</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a  href="Add-.html" aria-expanded="false"><i class="icon nalika-home icon-wrap"></i> <span class="mini-click-non">Home</span></a>

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
                            <a href="index.html"><img class="main-logo" src="admin/img/logo/logo.png" alt="" /></a>
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

                                                    <li><a href="login.html"><span class="icon nalika-unlocked author-log-ic"></span> Log Out</a>
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
                                                <a  href="index.html" aria-expanded="false"><i class="icon nalika-home icon-wrap"></i> <span class="mini-click-non">Home</span></a>

                                            </li>

                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">Your Product<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">

                                                    <li><a href="product-list.html">Product List</a></li>
                                                    <li><a href="product-edit.html">Product Edit</a></li>
                                                </ul>
                                            </li>


                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">View Users<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">

                                                    <li><a href="user-list.html">All user</a></li>
                                                    <li><a href="user-edit.html">Edit user</a></li>

                                                </ul>
                                            </li>


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
                                                    <i class="icon nalika-home"></i>
                                                </div>
                                                <div class="breadcomb-ctn">
                                                    <h2>Dashboard</h2>
                                                    <p>Welcome to <span class="bread-ntd">Your Grocery Connection Page</span></p>
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
                                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                                        <div class="single-product-details res-pro-tb">
                                            <h1>User Name : </h1>
                                            <h2>${currentUser.username}</h2><br>

                                            <div class="single-pro-cn">
                                                <h3>${currentUser.username} Interest's overview :</h3>
                                                <p>${currentUser.categories}</p>
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
                                            <li><a href="#reviews"><span><i class="fa fa-star"></i></span> More details :</a></li>
                                        </ul>
                                        <div id="myTabContent" class="tab-content">
                                            
                                            <div class="product-tab-list tab-pane fade" id="reviews">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="review-content-section">
                                                            <div class="review-content-section">
                                                                <div class="card-block">
                                                                    <div class="m-t-10">
                                                                        <div class="txt-primary f-18 f-w-600">
                                                                            <p>Your Rating</p>
                                                                        </div>
                                                                      
                                                                    </div>
                                                                    <div class="input-group mg-b-15 mg-t-15">
                                                                        <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                                        <input type="date" class="form-control" placeholder="Birth of date : ${currentUser.username}">
                                                                    </div>
                                                                    <div class="input-group mg-b-15">
                                                                        <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Address : ${currentUser.address}">
                                                                    </div>
                                                                    <div class="input-group mg-b-15">
                                                                        <span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Job : ${currentUser.job} ">
                                                                    </div>
                                                                         <div class="input-group mg-b-15">
                                                                        <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="credit Limit ${currentUser.creditLimit}">
                                                                   
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
        <script src="admin/js/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
                    ============================================ -->
        <script src="admin/js/bootstrap.min.js"></script>
        <!-- wow JS
                    ============================================ -->
        <script src="admin/js/wow.min.js"></script>
        <!-- price-slider JS
                    ============================================ -->
        <script src="admin/js/jquery-price-slider.js"></script>
        <!-- meanmenu JS
                    ============================================ -->
        <script src="admin/js/jquery.meanmenu.js"></script>
        <!-- owl.carousel JS
                    ============================================ -->
        <script src="admin/js/owl.carousel.min.js"></script>
        <!-- sticky JS
                    ============================================ -->
        <script src="admin/js/jquery.sticky.js"></script>
        <!-- scrollUp JS
                    ============================================ -->
        <script src="admin/js/jquery.scrollUp.min.js"></script>
        <!-- mCustomScrollbar JS
                    ============================================ -->
        <script src="admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="admin/js/scrollbar/mCustomScrollbar-active.js"></script>
        <!-- metisMenu JS
                    ============================================ -->
        <script src="admin/js/metisMenu/metisMenu.min.js"></script>
        <script src="admin/js/metisMenu/metisMenu-active.js"></script>
        <!-- morrisjs JS
                    ============================================ -->
        <script src="admin/js/sparkline/jquery.sparkline.min.js"></script>
        <script src="admin/js/sparkline/jquery.charts-sparkline.js"></script>
        <!-- calendar JS
                    ============================================ -->
        <script src="admin/js/calendar/moment.min.js"></script>
        <script src="admin/js/calendar/fullcalendar.min.js"></script>
        <script src="admin/js/calendar/fullcalendar-active.js"></script>
        <!-- tab JS
                    ============================================ -->
        <script src="admin/js/tab.js"></script>
        <!-- plugins JS
                    ============================================ -->
        <script src="admin/js/plugins.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="admin/js/main.js"></script>
    </body>

</html>

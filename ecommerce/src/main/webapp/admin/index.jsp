<%-- 
    Document   : index
    Created on : 01-Apr-2019, 15:31:06
    Author     : FARES-LAP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Dashboard</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="/ecommerce/admin/img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/owl.carousel.css">
        <link rel="stylesheet" href="/ecommerce/admin/css/owl.theme.css">
        <link rel="stylesheet" href="/ecommerce/admin/css/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="/ecommerce/admin/css/metisMenu/metisMenu-vertical.css">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/calendar/fullcalendar.min.css">
        <link rel="stylesheet" href="/ecommerce/admin/css/calendar/fullcalendar.print.min.css">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="/ecommerce/admin/css/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="admin/piChart.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    </head>

    <body>

        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">
                    <a href="/ecommerce/admin/index.html"><img class="main-logo" src="/ecommerce/admin/img/logo/logo.png" alt="" /></a>
                    <strong><img src="/ecommerce/admin/img/logo/logosn.png" alt="" /></strong>
                </div>
                <div class="nalika-profile">
                    <div class="profile-dtl">

                        <h2>Admin <span class="min-dtn">Name</span></h2>
                    </div>

                </div>
                    <div class="left-custom-menu-adp-wrap comment-scrollbar">
                     <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li>
                                <a  href="HomeServlet" aria-expanded="false"><i class="icon nalika-home icon-wrap"></i> <span class="mini-click-non">Home</span></a>
                            </li>
                            <li>
                                <a class="has-arrow" href="">
                                    <i class="icon nalika-table icon-wrap"></i>
                                    <span class="mini-click-non">Your Product</span>
                                </a>
                                <ul class="submenu-angle" aria-expanded="true">
                                    <li><a title="Product List" href="ProductListServlet"><span class="mini-sub-pro">Product List</span></a></li>
                                    <li><a title="Product Edit" href="insertProductServlet"><span class="mini-sub-pro">Add/Edit Product</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a class="has-arrow" href="" aria-expanded="false"><i class="icon nalika-table icon-wrap"></i> <span class="mini-click-non">View Users</span></a>
                                <ul class="submenu-angle" aria-expanded="false">
                                    <li><a title="All Users" href="AllUsersListServlet"><span class="mini-sub-pro">All Users</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a  href="AddAdminServlet" aria-expanded="false"><i class="icon nalika-table icon-wrap"></i> <span class="mini-click-non">Add Admin</span></a>
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
                            <a href="/ecommerce/admin/index.html"><img class="main-logo" src="/ecommerce/admin/img/logo/logo.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- menu icon area -->
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
                                        <!-- search icon area -->
                                        <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                            <div class="header-top-menu tabl-d-n hd-search-rp">
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

                                                    <li><a href="/ecommerce/admin/login.html"><span class="icon nalika-unlocked author-log-ic"></span> Log Out</a>
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
                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">Your Product<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">
                                                    <li><a href="ProductListServlet">Product List</a></li>
                                                    <li><a href="insertProductServlet">Product Edit</a></li>
                                                </ul>
                                            </li>
                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">View Users<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
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
            <div class="section-admin container-fluid">
                <div class="row admin text-center">
                    <div class="col-md-12">
                        <div class="row">
                            
                        </div>
                    </div>
                </div>
                <div class="product-sales-area mg-tb-30">
                    <div class="container-fluid">
                        <div class="row">

                        </div>
                    </div>
                </div>

                <div class="product-new-list-area">
                    <div class="container-fluid">
                        <div class="row" >
                            <!-- some of product start-->
                            <div id="piechart"></div>
                            <script type="text/javascript">
                                    google.charts.load('current', {'packages':['corechart']});
                                    google.charts.setOnLoadCallback(drawChart);
                            </script>
                            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                <div class="white-box res-mg-t-30 table-mg-t-pro-n">
                                    <h3 class="box-title">Visits from countries</h3>
                                    <ul class="country-state">
                                        <li>
                                            <h2><span class="counter">1250</span></h2> <small>From Australia</small>
                                            <div class="pull-right">75% <i class="fa fa-level-up text-danger ctn-ic-1"></i></div>
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-danger ctn-vs-1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:75%;"> <span class="sr-only">75% Complete</span></div>
                                            </div>
                                        </li>
                                        <li>
                                            <h2><span class="counter">1050</span></h2> <small>From USA</small>
                                            <div class="pull-right">48% <i class="fa fa-level-up text-success ctn-ic-2"></i></div>
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-info ctn-vs-2" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:48%;"> <span class="sr-only">48% Complete</span></div>
                                            </div>
                                        </li>
                                        <li>
                                            <h2><span class="counter">6350</span></h2> <small>From Canada</small>
                                            <div class="pull-right">55% <i class="fa fa-level-up text-success ctn-ic-3"></i></div>
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-success ctn-vs-3" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:55%;"> <span class="sr-only">55% Complete</span></div>
                                            </div>
                                        </li>
                                        <li>
                                            <h2><span class="counter">950</span></h2> <small>From India</small>
                                            <div class="pull-right">33% <i class="fa fa-level-down text-success ctn-ic-4"></i></div>
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-success ctn-vs-4" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:33%;"> <span class="sr-only">33% Complete</span></div>
                                            </div>
                                        </li>
                                        <li>
                                            <h2><span class="counter">3250</span></h2> <small>From Bangladesh</small>
                                            <div class="pull-right">60% <i class="fa fa-level-up text-success ctn-ic-5"></i></div>
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-inverse ctn-vs-5" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:60%;"> <span class="sr-only">60% Complete</span></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <!-- some of product end-->
                        </div>
                    </div>
                </div>
                <div class="product-sales-area mg-tb-30">
                    <div class="container-fluid">
                        <div class="row">

                            <div class="product-sales-area mg-tb-30">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                            <div class="product-sales-chart">
                                                <div class="portlet-title">
                                                    <div class="row">
                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                            <div class="caption pro-sl-hd">
                                                                <span class="caption-subject text-uppercase"><b>Product Sales</b></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                            <div class="actions graph-rp">
                                                                <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn btn-grey active">
                                                                        <input type="radio" name="options" class="toggle" id="option1" checked="">Today</label>
                                                                    <label class="btn btn-grey">
                                                                        <input type="radio" name="options" class="toggle" id="option2">Week</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="curved-line-chart" class="flot-chart-sts flot-chart curved-chart-statistic"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                            <div class="analysis-progrebar res-mg-t-30 mg-ub-10 res-mg-b-30 table-mg-t-pro-n tb-sm-res-d-n dk-res-t-d-n">
                                                <div class="analysis-progrebar-content">
                                                    <h5>Usage</h5>
                                                    <h2 class="storage-right"><span class="counter">90</span>%</h2>
                                                    <div class="progress progress-mini ug-1">
                                                        <div style="width: 68%;" class="progress-bar"></div>
                                                    </div>
                                                    <div class="m-t-sm small">
                                                        <p>Server down since 1:32 pm.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="analysis-progrebar reso-mg-b-30 res-mg-b-30 mg-ub-10 tb-sm-res-d-n dk-res-t-d-n">
                                                <div class="analysis-progrebar-content">
                                                    <h5>Memory</h5>
                                                    <h2 class="storage-right"><span class="counter">70</span>%</h2>
                                                    <div class="progress progress-mini ug-2">
                                                        <div style="width: 78%;" class="progress-bar"></div>
                                                    </div>
                                                    <div class="m-t-sm small">
                                                        <p>Server down since 12:32 pm.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="analysis-progrebar reso-mg-b-30 res-mg-b-30 res-mg-t-30 mg-ub-10 tb-sm-res-d-n dk-res-t-d-n">
                                                <div class="analysis-progrebar-content">
                                                    <h5>Data</h5>
                                                    <h2 class="storage-right"><span class="counter">50</span>%</h2>
                                                    <div class="progress progress-mini ug-3">
                                                        <div style="width: 38%;" class="progress-bar progress-bar-danger"></div>
                                                    </div>
                                                    <div class="m-t-sm small">
                                                        <p>Server down since 8:32 pm.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="analysis-progrebar res-mg-t-30 table-dis-n-pro tb-sm-res-d-n dk-res-t-d-n">
                                                <div class="analysis-progrebar-content">
                                                    <h5>Space</h5>
                                                    <h2 class="storage-right"><span class="counter">40</span>%</h2>
                                                    <div class="progress progress-mini ug-4">
                                                        <div style="width: 28%;" class="progress-bar progress-bar-danger"></div>
                                                    </div>
                                                    <div class="m-t-sm small">
                                                        <p>Server down since 5:32 pm.</p>
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
                                    <div class="footer-copy-right">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jquery
                    ============================================ -->
        <script src="/ecommerce/admin/js/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/bootstrap.min.js"></script>
        <!-- wow JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/wow.min.js"></script>
        <!-- price-slider JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/jquery-price-slider.js"></script>
        <!-- meanmenu JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/jquery.meanmenu.js"></script>
        <!-- owl.carousel JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/owl.carousel.min.js"></script>
        <!-- sticky JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/jquery.sticky.js"></script>
        <!-- scrollUp JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/jquery.scrollUp.min.js"></script>
        <!-- mCustomScrollbar JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="/ecommerce/admin/js/scrollbar/mCustomScrollbar-active.js"></script>
        <!-- metisMenu JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/metisMenu/metisMenu.min.js"></script>
        <script src="/ecommerce/admin/js/metisMenu/metisMenu-active.js"></script>
        <!-- sparkline JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/sparkline/jquery.sparkline.min.js"></script>
        <script src="/ecommerce/admin/js/sparkline/jquery.charts-sparkline.js"></script>
        <!-- calendar JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/calendar/moment.min.js"></script>
        <script src="/ecommerce/admin/js/calendar/fullcalendar.min.js"></script>
        <script src="/ecommerce/admin/js/calendar/fullcalendar-active.js"></script>
        <!-- float JS
                ============================================ -->
        <script src="/ecommerce/admin/js/flot/jquery.flot.js"></script>
        <script src="/ecommerce/admin/js/flot/jquery.flot.resize.js"></script>
        <script src="/ecommerce/admin/js/flot/curvedLines.js"></script>
        <script src="/ecommerce/admin/js/flot/flot-active.js"></script>
        <!-- plugins JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/plugins.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="/ecommerce/admin/js/main.js"></script>

    </body>

</html>
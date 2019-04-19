<%-- 
    Document   : Add-Admin
    Created on : Apr 2, 2019, 7:23:47 PM
    Author     : Mayada Khaled
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Add new admin</title>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <a href="/ecommerce/admin/index.html"><img class="main-logo" src="/ecommerce/admin/img/logo/logo.png" alt="" /></a>
                <strong><img src="/ecommerce/admin/img/logo/logo.png" alt="" /></strong>
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
                                <a  href="HomeServlet" aria-expanded="false"><span class="glyphicon">&#xe021; Home</span> </a>

                            </li>
                            <li>
                                <a class="has-arrow" href="">
                                    
                                       <span class="glyphicon">&#xe080; Your Product</span>
                                </a>
                                <ul class="submenu-angle" aria-expanded="true">
                                    <li><a title="Product List" href="ProductListServlet">  Product List</a></li>
                                    <li><a title="Product Edit" href="insertProductServlet">  Add/Edit Product</a></li>
                                </ul>
                            </li>
                            <li>
                                <a class="has-arrow" href="" aria-expanded="false"><span class="glyphicon">&#xe080; View Users</span></a>
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
                        <a href="/ecommerce/admin/index.html"><img class="main-logo" src="/ecommerce/admin/img/logo/logo.png" alt="" /></a>
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

                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">

                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">

                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">

                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">

                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">

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
                                        <li><a data-toggle="collapse" data-target="#Charts" href="#">Your Product<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                            <ul class="collapse dropdown-header-top">
                                                <li><a href="ProductListServlet">Product List</a></li>
                                                <li><a href="insertProductServlet">Add/Edit Product</a></li>
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
        <div class="single-product-tab-area mg-b-30">
            <!-- Single pro tab review Start-->
            <div class="single-pro-review-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="review-tab-pro-inner">
                                <ul id="myTab3" class="tab-review-design">
                                    <li class="active"><a href="#description"><i class="glyphicon" aria-hidden="true">&#xe042; Add Admin Data : </i></a></li>
                                </ul>
                                <div id="myTabContent" class="tab-content custom-product-edit">
                                    <div class="product-tab-list tab-pane fade active in" id="description"> 
                                        <form action="AddAdminServlet" method="post">
                                            <div class="row">

                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <div class="review-content-section">
                                                        <div class="input-group mg-b-pro-edt">
                                                            <span class="input-group-addon"><i class="glyphicon" aria-hidden="true">&#xe008;</i></span>
                                                            <input type="text" class="form-control" placeholder="Admin Name" name ="username">
                                                        </div>
                                                        <div class="input-group mg-b-pro-edt">
                                                            <span class="input-group-addon"><i class="glyphicon" aria-hidden="true">&#x2709;</i></span>
                                                            <input type="email" class="form-control" placeholder="Admin Email" name ="email">
                                                        </div>
                                                        <div class="input-group mg-b-pro-edt">
                                                            <span class="input-group-addon"><i class="glyphicon" aria-hidden="true">&#xe021;</i></span>
                                                            <input type="text" class="form-control" placeholder="Adress" name ="address">
                                                        </div>
                                                        <div class="input-group mg-b-pro-edt">
                                                            <span class="input-group-addon"><i class="glyphicon" aria-hidden="true">&#xe007;</i></span>
                                                            <input type="date" class="form-control" placeholder="Date of birth" name ="adminBirthday">
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <div class="review-content-section">

                                                        <div class="input-group mg-b-pro-edt">
                                                            <span class="input-group-addon"><i class="glyphicon" aria-hidden="true">&#x20ac;</i></span>
                                                            <input type="text" class="form-control" placeholder="Credit Limit" name ="creditLimit">
                                                        </div>
                                                        <div class="input-group mg-b-pro-edt">
                                                            <span class="input-group-addon"><i class="glyphicon" aria-hidden="true">&#xe139;</i></span>
                                                            <input type="text" class="form-control" placeholder="Job" name ="job">
                                                        </div>

                                                        <div class="input-group mg-b-pro-edt">
                                                            <span class="input-group-addon"><i class="glyphicon" aria-hidden="true">&#xe033;</i></span>
                                                            <input type="password" class="form-control" placeholder="Password" name ="password">
                                                        </div>
                                                        <select name="gender" class="form-control pro-edt-select form-control-primary" name ="adminGender">
                                                            <option value="none" selected="" disabled="">Select Gender</option>
                                                            <option value="0">Male</option>
                                                            <option value="1">Female</option>
                                                        </select>

                                                    </div>
                                                </div>

                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="text-center custom-pro-edt-ds">
                                                        <input type="submit" class="btn btn-ctl-bt waves-effect waves-light m-r-10" value="Save">

                                                        <button type="button" class="btn btn-ctl-bt waves-effect waves-light"><a href="HomeServlet">Discard
                                                            </a></button>
                                                    </div>
                                                </div>

                                            </div>
                                        </form>
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
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
        <script src="/ecommerce/admin/admin/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>

        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">
                    <a href="index.html"><img class="main-logo" src="/ecommerce/admin/img/logo/logo.png" alt="" /></a>
                    <strong><img src="/ecommerce/admin/img/logo/logosn.png" alt="" /></strong>
                </div>
                <div class="nalika-profile">
                    <div class="profile-dtl">
                        <a href="#"><img src="/ecommerce/admin/img/notification/4.jpg" alt="" /></a>
                        <h2>Admin <span class="min-dtn">Name</span></h2>
                    </div>

                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li>
                                <a  href="index.html" aria-expanded="false"><i class="icon nalika-home icon-wrap"></i> <span class="mini-click-non">Home</span></a>

                            </li>
                            <li>
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
                                <a  href="Add-Adnin.html" aria-expanded="false"><i class="icon nalika-table icon-wrap"></i> <span class="mini-click-non">Add Admin</span></a>

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
                            <a href="index.html"><img class="main-logo" src="/ecommerce/admin/img/logo/logo.png" alt="" /></a>
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

                                                    <li><a href="product-list.jsp">Product List</a></li>
                                                    <li><a href="product-edit.html">Product Edit</a></li>
                                                </ul>
                                            </li>



                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">View Users<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">

                                                    <li><a href="user-list.jsp">All user</a></li>
                                                    <li><a href="user-edit.html">Edit user</a></li>

                                                </ul>
                                            </li>
                                            <li>
                                                <a  href="Add-Adnin.html" aria-expanded="false"><i class="icon nalika-table icon-wrap"></i> <span class="mini-click-non">Add Admin</span></a>

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

            <div class="product-status mg-b-30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="product-status-wrap">
                                <h4>Products List</h4>
                                <div class="add-product">
                                    <a href="insertProductServlet">Add Product</a>
                                </div>
                                <table>
                                    <tr>
                                        <th>Product Image</th>
                                        <th>Product Name</th>
                                        <th>Purchases</th>
                                        <th>Product Sales</th>
                                        <th>Stock Status</th>
                                        <th>Unit Price</th>
                                        <th>Settings</th>
                                    </tr>

                                    <c:forEach items="${requestScope.products}" var="product">
                                        <tr>
                                            <td><a href="/ecommerce/admin/viewProductServlet?productId=${product.id}"><img src="${product.image}" alt="Image" /></a></td>
                                            <td>${product.name}</td>
                                            <td>${product.itemsSold}</td>
                                            <td>EGP${product.itemsSold * product.price}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${product.quantity == 0}">
                                                        <c:out value="Out Of Stock"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:out value="In Stock"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>${product.price}</td>
                                            <td>
                                                <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><a href="EditProductServlet?productId=${product.id}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></button>
                                                <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><a href="EditProductServlet?productIdDeleted=${product.id}"><i class="fa fa-trash-o" aria-hidden="true"></i></a></button>
                                            </td>
                                        </tr>
                                    </c:forEach>


                                </table>
                                <div class="custom-pagination">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                    </ul>
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
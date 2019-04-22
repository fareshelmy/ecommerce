<%-- 
    Document   : product-edit
    Created on : Apr 3, 2019, 12:59:49 PM
    Author     : lapshop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Add Product</title>
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
          <script src="admin/goBack.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>.checked {color: red;}</style>
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
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li><a href="#"><button onclick="goBack()" ><span class="glyphicon">&#xe091;</span></button></a>
                                                    </li>
                                                </ul>
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
            <div class="single-product-tab-area mg-b-30">
                <!-- Single pro tab review Start-->
                <div class="single-pro-review-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="review-tab-pro-inner">
                                    <ul id="myTab3" class="tab-review-design">
                                        <li class="active"><a href="#description">Product Edit</a></li>
                                    </ul>
                                    
                                    <c:forEach var = "i" begin = "1" end = "${requestScope.productDetails.rating}">
                                        <span class="fa fa-star checked"></span>
                                    </c:forEach>
                                    <c:forEach var = "i" begin = "1" end = "${5-requestScope.productDetails.rating}"> 
                                        <span class="fa fa-star"></span>
                                    </c:forEach>    
<!--                                    <label id="soldItem" style="color: red">Sold Item </label>
                                    <input id="soldItemtvalue" value="${requestScope.productDetails.itemsSold}" disabled="disabled">-->

                                    <div id="myTabContent" class="tab-content custom-product-edit">
                                        <form action="insertProductServlet" method="post" enctype="multipart/form-data">
                                            <div class="product-tab-list tab-pane fade active in" id="descriptions">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="review-content-section">
                                                            <div class="row">
                                                                <div class="col-lg-4">
                                                                    <div class="pro-edt-img image-upload">
                                                                        <label for="file-input">
                                                                            <img src="${requestScope.productDetails.image}"  id="selectedImage"/>
                                                                        </label>
                                                                        <input id="file-input" type="file" onchange="readURL(this);" name="image" accept=".jpg,.png,.svg" />
                                                                        <input type="hidden"  name="productImage"  value="${requestScope.productDetails.image}">

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="review-content-section">
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span>
                                                        <input type="text" data-toggle="tooltip" data-placement="top" title="Name" class="form-control" placeholder="product Name" value="${requestScope.productDetails.name}" id="name" name="name" required>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span>
                                                        <input type="number" data-toggle="tooltip" data-placement="top" title="Price"  class="form-control" placeholder="Price" value="${requestScope.productDetails.price}" id="price" name="price" required>
                                                    </div>
                                                    
                                                    <div class="input-group mg-b-pro-edt">

                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-scale" aria-hidden="true"></i></span>
                                                        <input data-toggle="tooltip" data-placement="top" title="Amount"  type="number" min="0"  class="form-control" placeholder="Amount" value="${requestScope.productDetails.amount}" id="amount" name="amount" required>
                                                    </div>
<!--                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="icon nalika-new-file" aria-hidden="true"></i></span>

                                                        <input type="number" min="0" class="form-control" placeholder="Amount" value=${requestScope.productDetails.amount} id="amount" name="amount" required>

                                                    </div>-->

                                                    <div class="input-group mg-b-pro-edt">
                                                         <span class="input-group-addon"><i class="glyphicon glyphicon-tint" aria-hidden="true"></i></span>
                                                        <select data-toggle="tooltip" data-placement="top" title="Unit" class="form-control pro-edt-select form-control-primary" id ="unit" name="unit" required>
                                                         <c:choose>
                                                                <c:when test="${requestScope.productDetails.unit=='kg'}">
                                                                    <option selected="selected"  value="kg">kg</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="kg">kg</option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <c:choose>
                                                                <c:when test="${requestScope.productDetails.unit=='g'}">
                                                                    <option selected="selected"  value="g">g</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="g">g</option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <c:choose>
                                                                <c:when test="${requestScope.productDetails.unit=='l'}">
                                                                    <option selected="selected"  value="l">l</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="l">l</option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <c:choose>
                                                                <c:when test="${requestScope.productDetails.unit=='ml'}">
                                                                    <option selected="selected"  value="ml">ml</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="ml">ml</option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <c:choose>
                                                                <c:when test="${requestScope.productDetails.unit=='Pcs'}">
                                                                    <option selected="selected"  value="Pcs">Pcs</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="Pcs">Pcs</option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                           <c:choose>
                                                                <c:when test="${requestScope.productDetails.unit=='Inch'}">
                                                                    <option selected="selected"  value="Inch">Inch</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="Inch">Inch</option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="review-content-section">

                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="glyphicon" aria-hidden="true">&#xe052;</i></span>
                                                        <textarea data-toggle="tooltip" data-placement="top" title="Description" class="form-control" placeholder="Description"  id="description" name="description" required>${requestScope.productDetails.description}</textarea>
                                                    </div>
                                                    
                                                    <div class="input-group mg-b-pro-edt" >
                                                        <span  class="input-group-addon" data-toggle="tooltip" data-placement="top" title="Sold Item!"><i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i></span>
                                                        <input data-toggle="tooltip" data-placement="top" title="Sold Item" type="number" class="form-control" style="background-color:transparent" placeholder="Item Sold" value="${requestScope.productDetails.itemsSold}" id="price" name="price" disabled>
                                                    </div>

                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon" data-toggle="tooltip" data-placement="top" title="Category"><i class="glyphicon glyphicon-th" aria-hidden="true"></i></span>
                                                        <select class="form-control pro-edt-select form-control-primary"  data-toggle="tooltip" data-placement="top" title="Category" id ="selected_category"  name="selected_category"  required>
                                                            <c:choose> 
                                                                <c:when test="${requestScope.productDetails.category.id >6}">
                                                                    <option value="Category" disabled="disabled" selected="selected">Category</option>
                                                                </c:when>    

                                                            </c:choose>
                                                            <c:choose> 
                                                                <c:when test="${requestScope.productDetails.category.id==1}">
                                                                    <option selected="selected"  value="Meat & Poultry">Meat & Poultry</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="Meat & Poultry">Meat & Poultry</option>
                                                                </c:otherwise>
                                                            </c:choose>


                                                            <c:choose>
                                                                <c:when test="${requestScope.productDetails.category.id==2}">
                                                                    <option selected="selected"  value="Seafood">Seafood</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option  value="Seafood">Seafood</option>
                                                                </c:otherwise>
                                                            </c:choose>

                                                            <c:choose>
                                                                <c:when test="${requestScope.productDetails.category.id==3}">
                                                                    <option selected="selected" value="Fresh Fruits, Vegetables & Herbs">Fresh Fruits, Vegetables & Herbs</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="Fresh Fruits, Vegetables & Herbs">Fresh Fruits, Vegetables & Herbs</option>
                                                                </c:otherwise>
                                                            </c:choose>

                                                            <c:choose>
                                                                <c:when test="${requestScope.productDetails.category.id==4}">
                                                                    <option selected="selected" value="Bakery & Pastry">Bakery & Pastry</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="Bakery & Pastry">Bakery & Pastry</option>
                                                                </c:otherwise>
                                                            </c:choose>

                                                            <c:choose>
                                                                <c:when test="${requestScope.productDetails.category.id==5}">
                                                                    <option selected="selected"  value="Cheese, Dairy & Deli">Cheese, Dairy & Deli</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="Cheese, Dairy & Deli">Cheese, Dairy & Deli</option>
                                                                </c:otherwise>
                                                            </c:choose>

                                                            <c:choose>
                                                                <c:when test="$requestScope.productDetails.category.id==6">
                                                                    <option selected="selected" value="Desserts & Sweets">Desserts & Sweets</option>
                                                                </c:when>    
                                                                <c:otherwise>
                                                                    <option value="Desserts & Sweets">Desserts & Sweets</option>
                                                                </c:otherwise>
                                                            </c:choose> 

                                                        </select>
                                                    </div>
<!--                                                    fas fa-clipboard-list	-->
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon" data-toggle="tooltip" data-placement="top" title="Quantity"><i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i></span>
                                                        <input type="number" min="0" data-toggle="tooltip" data-placement="top" title="Quantity" class="form-control" placeholder="Quantity" value="${requestScope.productDetails.quantity}" id="quantity" name="quantity" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <br><br>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="text-center custom-pro-edt-ds">
                                                        <input type="submit" class="btn btn-ctl-bt waves-effect waves-light m-r-10" value="Save">
                                                        <input type="reset" class="btn btn-ctl-bt waves-effect waves-light" value="Discard">
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

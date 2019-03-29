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
        <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="../css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="../css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="../css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="../css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="../css/style.css"/>

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
                                <a href="#" class="logo" >
                                    <img src="./img/logo.png" alt="foodland logo" id="logoImg">
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
                            <form method="POST" action="registerAction" role="form">
                                <div class="form-group">
                                    <h2>Register</h2>
                                </div>
                                <div class="form-group">
                                    <strong>Username</strong>
                                    <input id="username" name="username" type="text" maxlength="50" class="form-control" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <strong>Email</strong>
                                    <input id="signinEmail"  name="email"  type="email" maxlength="50" class="form-control" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <strong>Birthdate</strong>							
                                    <input id="dob" name="dob" type="date" maxlength="25" class="form-control" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <strong>Job</strong>
                                    <input id="job" name="job" type="text" maxlength="50" class="form-control" placeholder="Job">
                                </div>
                                <div class="form-group">
                                    <strong>Credit Limit</strong>
                                    <input id="credit" name="credit" type="number" maxlength="50" class="form-control" placeholder="Please Enter your Credit Limit">
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

<%--
  Created by IntelliJ IDEA.
  User: vanth
  Date: 08-Mar-19
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${title}</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
          integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/"><i class="fas fa-warehouse"></i> MHBlo</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#"><i class="fas fa-plus-square"></i> Write your post</a></li>
            <li><a href="#"><i class="fas fa-clipboard-list"></i> All post</a></li>
        </ul>
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control"  placeholder="Type a word here">
            </div>
            <button type="submit" class="btn btn-default">Search</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><i class="fas fa-share-square"></i> Share experience</a></li>
            <c:set var="account" value="${sessionScope.account}"/>
            <c:if test="${account}">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="far fa-user"></i> Account <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="far fa-user-circle"></i> My Account</a></li>
                        <li><a href="#"><i class="fas fa-key"></i> Change password</a></li>
                        <li><a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                    </ul>
                </li>
            </c:if>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="far fa-user"></i> Account <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="/account/registerPage"><i class="fas fa-user-plus"></i> Sign up</a></li>
                    <li><a href="/account/loginPage"><i class="fas fa-sign-in-alt"></i> Sign in</a></li>
                    <li><a href="/account/forgotpasswordPage"><i class="fas fa-unlock"></i> Forgot Password</a></li>
                    <li><a href="/account/changepasswordPage"><i class="fas fa-unlock"></i> Change Password</a></li>
                </ul>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
</nav>


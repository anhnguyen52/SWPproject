<%-- 
    Document   : header
    Created on : May 24, 2024, 1:10:16 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page </title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="css/home.css" rel="stylesheet">
    </head>
    <body>
        <!-- Header -->
        <div class="header row">
            <div class="header-logo col-md-4"><a href=""><i class="fa-solid fa-cube"></i>DX-LAB</a></div>
            <div class="header-nav col-md-4">
                <ul class="header-nav-list">
                    <li class="header-nav-list-item"><a href="">Home</a></li>
                    <li class="header-nav-list-item"><a href="">Notification</a></li>
                </ul>
            </div>
            <div class="header-avt col-md-4">
                <div class="header-avt-login"><a href="login.jsp">Login</a></div>
                <div class="header-avt-avt"><a href=""><i class="fa-solid fa-user"></i></a></div>
            </div>
        </div>

        <!-- Menu -->
        <div class="menu">
            <i class="fa-solid fa-bars " aria-hidden="true" style="font-size: 30px;cursor: pointer;"></i>
            <div class="nav_links" id="navLinks">
                <ul class="nav-links-item">
                    <li class="nav-links-item-li" ><a href="">Home</a></li>
                    <li class="nav-links-item-li" ><a href="">home</a></li>
                    <li class="nav-links-item-li" ><a href="">home</a></li>
                    <li class="nav-links-item-li" ><a href="">home</a></li>
                </ul><br>
            </div>    
        </div>
    </body>
</html>

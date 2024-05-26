<%-- 
    Document   : header
    Created on : May 24, 2024, 1:10:16 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page </title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="css/headerAndFooterr.css">

    </head>
    <body>
        <!-- Header -->
        <div class="header row">
            <div class="header-logo col-md-4"><a href="home.jsp"><i class="fa-solid fa-cube"></i>DX-LAB</a></div>
            <div class="header-nav col-md-4">
                <ul class="header-nav-list">
                    <li class="header-nav-list-item"><a href="">Home</a></li>
                    <li class="header-nav-list-item"><a href="">Notification</a></li>
                </ul>
            </div>

            <c:if test = "${sessionScope.account == null}">
                <div class="header-avt col-md-4">
                    <div class="header-avt-login"><a href="login.jsp">Login</a></div>
                    <div class="header-avt-avt"><a href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i></a></div>
                </div>
            </c:if>

            <c:if test="${sessionScope.account != null}">
                <div class="header-avt col-md-4">  
                    <a style="font-size: 20px; color: white">Hello ${sessionScope.account.full_name} / </a>
                    <a style="font-size: 20px; color: white">${sessionScope.role_name}</a>
                    <div class="header-avt-avt"><a href="#"><i class="fa-solid fa-user"></i></a></div>
                </div>
            </c:if>
        </div>

        <!-- Menu -->

        <c:if test = "${sessionScope.account.role_id == 1}">
            <div class="menu">
                <i class="fa-solid fa-bars " aria-hidden="true" style="font-size: 30px;cursor: pointer;"></i>
                <div class="nav_links" id="navLinks">
                    <ul class="nav-links-item">
                        <li class="nav-links-item-li" ><a href="home.jsp">Home</a></li>
                        <li class="nav-links-item-li" ><a href="">recruitment news</a></li>
                        <li class="nav-links-item-li" ><a href="">interview schedule</a></li>
                        <li class="nav-links-item-li" ><a href="">recruitment result</a></li>
                        <li class="nav-links-item-li" >
                            <c:if test="${sessionScope.account != null}">
                                <div>
                                    <a ref="#" onclick="doLogOut()" style="font-size: 20px; cursor: pointer" >Logout</a>
                                </div>
                            </c:if>
                        </li>
                    </ul><br>
                </div>    
            </div>
        </c:if>
        
        <c:if test = "${sessionScope.account.role_id == 4}">
            <div class="menu">
                <i class="fa-solid fa-bars " aria-hidden="true" style="font-size: 30px;cursor: pointer;"></i>
                <div class="nav_links" id="navLinks">
                    <ul class="nav-links-item">
                        <li class="nav-links-item-li" ><a href="home.jsp">Home HR</a></li>
                        <li class="nav-links-item-li" ><a href="">HR</a></li>
                        <li class="nav-links-item-li" ><a href="">HR</a></li>
                        <li class="nav-links-item-li" ><a href="">HR</a></li>
                        <li class="nav-links-item-li" >
                            <c:if test="${sessionScope.account != null}">
                                <div>
                                    <a ref="#" onclick="doLogOut()" style="font-size: 20px; cursor: pointer" >Logout</a>
                                </div>
                            </c:if>
                        </li>
                    </ul><br>
                </div>    
            </div>
        </c:if>


        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const menuHamburger = document.querySelector('.fa-bars');
                const navLinks = document.getElementById('navLinks');
                menuHamburger.addEventListener('click', function () {
                    navLinks.classList.toggle('active');
                    if (navLinks.classList.contains('active')) {
                        document.body.style.overflow = 'hidden';
                    } else {
                        document.body.style.overflow = '';
                    }
                });
            });

            function doLogOut() {
                if (confirm("Are you sure you want to log out?")) {
                    window.location.href = "logout";
                }
            }
        </script>

    </body>
</html>

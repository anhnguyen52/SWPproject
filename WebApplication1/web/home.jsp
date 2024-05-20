<%-- 
    Document   : home.jsp
    Created on : May 20, 2024, 12:45:26 AM
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
        <link href="home.css" rel="stylesheet">
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
                <div class="header-avt-login"><a href="">Login</a></div>
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

        <!-- Container-->

        <div class="container">
            <div class="content">
                <h1>Web quản lý thực tập sinh tại DX-LAB</h1>

            </div>
            <div><img src="/img/posters.jpg" alt=""></div>
        </div>

        <!-- Footer -->
        <footer class="footer" style="display: flex; justify-content: space-between">
            <div class="left" style="width: 30%; text-align: left; margin: 10px;">
                <p style="font-size: 10px">___________________________________________</p>
                <p>Địa chỉ: Đại học FPT, Khu công nghệ cao Hòa Lạc, thành phố Hà Nội</p>
                <p>Phone: 0868686868</p>
            </div>
            <div class="right" style="width: 30%; text-align: left; margin: 10px; font-size: 15px;">
                <p>________________________________________</p>
                <div style="display: flex; margin-top:10px; gap:5px;">
                    <i class="fa-brands fa-facebook"></i>
                    <i class="fa-brands fa-instagram"></i>
                    <i class="fa-brands fa-google"></i>
                </div>
            </div>
        </footer>

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
        </script>
    </body>
</html>

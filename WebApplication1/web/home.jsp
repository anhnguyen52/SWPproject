<%-- 
    Document   : home.jsp
    Created on : May 20, 2024, 12:45:26 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Intern Student Management System </title>
        <link rel="shortcut icon" type="image/png" href="img/anh.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            .container {
                width: 100%;
                min-height: 90vh;
                display: flex;
                align-items: center;
                margin-top: 50px;
                flex-direction: column;
            }

            .content2 {
                width: 100%;
                min-height: 500px;
                display: flex;
                align-items: flex-start;
                border: 1px solid grey;
                margin: 50px 0;
                display: flex;
                flex-direction: row;
            }

            .content2_item_li-des {
                display: none; /* Ẩn ban đầu */
            }

            .content2_item_li:hover .content2_item_li-des {
                display: block; /* Hiển thị khi hover vào phần tử li */
            }


        </style>
    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Container-->
            <div class="container">
                <div class="content">
                    <h1 style="color: #202942;">Web quản lý thực tập sinh tại DX-LAB</h1>
                </div>
                <div><img style="width: 1500px; margin-bottom: 50px;" src="./img/posters3.jpg" alt=""></div>

            <c:if test="${sessionScope.account != null}">
                <div class="content2">
                    <div class="content2_item-left">
                        <ul>
                            <li class="content2_item_li">
                                <a href="">Recruitment News</a>
                                <div class="content2_item_li-des">
                                    <img src="img/posters.jpg" alt="alt"/>
                                </div>
                                <div class="content2_item_li-des">
                            </li>
                            <li class="content2_item_li">
                                <a href="">Interview Schedule</a>
                            </li>
                            <li class="content2_item_li">
                                <a href="">Recruitment Result</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </c:if>

        </div>



        <jsp:include page="footerr.jsp"></jsp:include>

    </body>
</html>

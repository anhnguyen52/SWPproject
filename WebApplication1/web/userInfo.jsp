<%-- 
    Document   : userInfo
    Created on : May 26, 2024, 5:40:15 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
        <!--<link rel="stylesheet" href="css/userInfo.css">-->

        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
            }

            .container {
                display: flex;
                justify-content: space-around;
                margin-top: 50px;
                min-height: 72vh;
            }

            .avatar-section {
                width: 30%;
                text-align: center;
                flex-direction: column;
                margin-top: 100px;
            }

            .avatar-section img {
                width: 50%;
                border-radius: 20px;
            }

            .info-section {
                width: 60%;
            }

            .info-section h2 {
                margin-bottom: 20px;
            }

            button {
                width: 50%;
                padding: 10px 20px;
                background-color: #202942;
                color: white;
                border: none;
                border-radius: 20px;
                cursor: pointer;
                margin-top: 10px;
            }

            button:hover {
                background-color: #202942;
            }

            .info-item {
                margin-bottom: 40px;
                padding: 10px;
                background-color: #f9f9f9;
                border-radius: 5px;
                box-shadow: 0px 0px 5px rgba(0,0,0,0.1);
            }

            .edit-section{
                display: flex;
                justify-content: center;
            }

            .edit-section input{
                border: none;
                background-color: #202942;
                color: #f2f2f2;
                font-weight:  bolder;
                padding: 5px;
                border-radius: 5px;
                margin-top: 20px;
                margin-right: 10px
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">

                <div class="info-section" style="display: ${none}">
                <h2>User Information</h2>
                <div class="info-list">
                    <div class="info-item">
                        <span><strong>Username:</strong> ${sessionScope.account.username} </span>
                    </div>
                    <div class="info-item">
                        <span><strong>Full Name:</strong> ${sessionScope.account.full_name} </span>
                    </div>
                    <div class="info-item">
                        <span><strong>Date of Birth:</strong> ${sessionScope.account.dob}</span>
                    </div>
                    <div class="info-item">
                        <span><strong>Gender:</strong> ${sessionScope.account.gender}</span>
                    </div>
                    <div class="info-item">
                        <span><strong>Phone Number:</strong> ${sessionScope.account.phone_number}</span>
                    </div>
                    <div class="info-item">
                        <span><strong>Specialization:</strong> ${sessionScope.account.specialization}</span>
                    </div>
                </div>

<!--                <c:set var="none1" value="${requestScope.none1}" />
                <div class="changein4" style="display: ${none1}; width: 60%; justify-content: center; margin: 40px auto">
                    <form action="changeInfoOfUser" method="post">
                        <h1>Change info</h1>
                        <hr>
                        <label for="accName"><b>Name</b></label>
                        <input type="text" placeholder="Enter Name" name="accName" required value="${accName}">

                        <label for="accAdrress"><b>Address</b></label>
                        <input type="text" placeholder="Enter Address" name="accAdrress"  required value="${accAdrress}">

                        <label for="accPhone"><b>Phone</b></label>
                        <input type="text" placeholder="Enter Phone" name="accPhone"  required value="${accPhone}">
                        <hr>

                        <button type="submit" class="registerbtn">Done</button>
                    </form>
                </div>        -->

                <div class="edit-section">
                    <form action="userInfo" method="get">
                        <input type="hidden" value="${sessionScope.account.user_id}" name="user_id">
                        <input type="submit" value="Account Information" style="border: none; background-color: #000; color: #f2f2f2; font-weight:  bolder; padding: 5px; border-radius: 5px; margin-top: 20px; margin-right: 10px">
                    </form>

                    <form action="changeInfoOfUser" method="get">
                        <input type="hidden" name="accId" value="${sessionScope.account.user_id}">
                        <input type="submit" value="Change Information" style="border: none; background-color: #000; color: #f2f2f2; font-weight:  bolder; padding: 5px; border-radius: 5px; margin-top: 20px; margin-right: 10px;margin-left: 10px">
                    </form>

                    <form action="changePassOfUser" method="get">
                        <input type="hidden" name="accId" value="${sessionScope.account.user_id}">
                        <input type="submit" value="Change Password"  style="border: none; background-color: #000; color: #f2f2f2; font-weight:  bolder; padding: 5px; border-radius: 5px; margin-top: 20px; margin-left: 10px">
                    </form>
                </div>    




            </div>



            <div class="avatar-section">
                <img src="${sessionScope.account.avatar}" alt="Avatar">
                <p><Strong>Avatar</Strong></p>
            </div>
        </div>

        <jsp:include page="footerr.jsp"></jsp:include>

    </body>
</html>

<%-- 
    Document   : signup.jsp
    Created on : May 24, 2024, 1:57:55 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Registration or Sign Up form in HTML CSS | CodingLab </title> 
        <link rel="stylesheet" href="css/signup.css">
    </head>
    <body>
        <div class="modal">
            <form class="modal-content" action="signup" method="get">
                <div class="container2">
                    <h1 style="text-align: center; font-size: 40px">Sign Up</h1>
                    <p>${messErrorPass} </p>
                    <p>${messErrorID}</p>
                    <hr>

                    <label for="name"><b>Name</b></label>
                    <input type="text" placeholder="Enter Full Name" name="name" required>

                    <label for="phone"><b>Phone</b></label>
                    <input type="text" placeholder="Enter Phone" name="phone" required>

                    <label for="address"><b>Address</b></label>
                    <input type="text" placeholder="Enter Addres" name="address" required>

                    <label for="id"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="id" required pattern="[A-Za-z0-9]+">

                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="psw" required pattern="[A-Za-z0-9]+">

                    <label for="psw-repeat"><b>Repeat Password</b></label>
                    <input type="password" placeholder="Repeat Password" name="pswrepeat" required pattern="[A-Za-z0-9]+">



                    <select id="country" name="quesId" style="margin: 10px; height: 25px; font-weight: bolder"> 
                        <c:forEach items="${listQues}" var="o">
                            <option value="${o.quesId}">${o.quesion}</option>
                        </c:forEach>
                    </select>
                    <br>

                    <label for="answer"><b>Answer</b></label>
                    <input type="text" placeholder="answer" name="answer" required>



                    <div class="clearfix">
                        <button type="button" class="cancelbtn"><a href="login" style="text-decoration: none; color: black; padding: 15px 205px">Back</a></button>
                        <button type="submit" class="signup" style="width: 50%;     background-color: rgb(80, 80, 255); color: white" >Sign Up</button>
                    </div>  
                </div>
            </form>
        </div>
    </body>
</html>
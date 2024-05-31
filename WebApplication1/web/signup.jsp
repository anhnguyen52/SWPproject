<%-- 
    Document   : signup
    Created on : May 25, 2024, 3:58:32 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/signup.css">

    </head>
    <body>
        <div class="signup-container">
            <h2>Sign Up</h2>
            <form action="signup" method="post">
                <input type="text" id="username" name="userName" placeholder="Username" value="${param.userName}" required>

                <input type="text" id="fullName" name="fullName" placeholder="Full Name" value="${param.fullName}" required>

                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" value="${param.dob}" required>

                <div class="gender">
                    <input type="radio" id="male" name="gender" value="Male" ${param.gender}  required>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="Female" ${param.gender} required>
                    <label for="female">Female</label>
                </div>

                <input type="text" id="phoneNumber" name="phoneNumber" placeholder="Phone Number" value="${param.phoneNumber}" required>

                <label for="avatar">Avatar</label>
                <input type="file" id="avatar" name="avatar">
                <c:if test="${not empty messErrorAvatar}">
                    <p class="error">${messErrorAvatar}</p>
                </c:if>
                <input type="text" id="specialization" name="specialization" placeholder="Specialization" value="${param.specialization}" required>

                <input type="password" id="password" name="password" placeholder="Password" required>

                <input type="password" id="repeatPassword" name="repeatPassword" placeholder="Repeat Password" required>

                <input type="submit" value="Sign Up">

                <p>${messErrorPass} </p>
                <p>${messErrorUsername}</p>
                <p>${messErrorFullName}</p>
                <p>${messErrorDob}</p>
                <p>${messErrorAvatar}</p>

                <div class="links">
                    <a href="login.jsp">Back to Login</a>
                </div>
            </form>
        </div>
    </body>
</html>

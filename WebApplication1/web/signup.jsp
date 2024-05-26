<%-- 
    Document   : signup
    Created on : May 25, 2024, 3:58:32 PM
    Author     : ADMIN
--%>

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
                <input type="text" id="username" name="userName" placeholder="Username" required>

                <input type="text" id="fullName" name="fullName" placeholder="Full Name" required>

                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" required>

                <div class="gender">
                    <input type="radio" id="male" name="gender" value="male" required>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="female" required>
                    <label for="female">Female</label>
                    <input type="radio" id="other" name="gender" value="other" required>
                    <label for="other">Other</label>
                </div>

                <input type="text" id="phoneNumber" name="phoneNumber" placeholder="Phone Number" required>

                <label for="avatar">Avatar</label>
                <input type="file" id="avatar" name="avatar">

                <input type="text" id="specialization" name="specialization" placeholder="Specialization" required>

                <input type="password" id="password" name="password" placeholder="Password" required>

                <input type="password" id="repeatPassword" name="repeatPassword" placeholder="Repeat Password" required>

                <input type="submit" value="Sign Up">

                <p>${messErrorPass} </p>
                <p>${messErrorUsername}</p>

                <div class="links">
                    <a href="login.jsp">Back to Login</a>
                </div>
            </form>
        </div>
    </body>
</html>

<%-- 
    Document   : Login
    Created on : May 24, 2024, 12:17:30 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/login.css">

    </head>
    <body>
        <div class="login-container">
            <h1>Login</h1>
            <form action="login" method="post">
                <input type="text" id="username" name="username" placeholder="Email" required>

                <input type="password" id="password" name="password" placeholder="Password" required>

                <div class="remember-me">
                    <input type="checkbox" id="rememberMe" name="rememberMe">
                    <label for="rememberMe">Remember me</label>
                </div>

                <input type="submit" value="Login">
                <p>${mess}</p>

                <div class="links">
                    <a href="forgetPassword.jsp">Forget Password?</a> /
                    <a href="home.jsp">Back to Home</a>
                    <p>If you are a new candidate, <a href="signup.jsp">Sign Up</a> </p>

                </div>
            </form>
        </div>
    </body>
</html>

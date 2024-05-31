<%-- 
    Document   : accountManageByAdmin
    Created on : May 28, 2024, 2:45:43 AM
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
            <h2>Create an account</h2>
            <form action="accountManage" method="post">
                <input type="text" id="user_id" name="user_id" placeholder="user_id" required>

                <input type="text" id="username" name="username" placeholder="username" required>

                <input type="number" id="role_id" name="role_id" placeholder="role_id" required>
                
                <p>If create an account for Candidate, don't input password</p>

                <input type="submit" value="Create account">

                <div class="links">
                    <a href="home.jsp">Back to Home</a>
                </div>
            </form>
        </div>
    </body>
</body>
</html>

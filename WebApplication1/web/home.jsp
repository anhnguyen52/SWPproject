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
        <link href="css/home.css" rel="stylesheet">
    </head>

    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <!-- Container-->
            <div class="container">
                <div class="content">
                    <h1>Web quản lý thực tập sinh tại DX-LAB</h1>

                </div>
                <div><img src="./img/posters.jpg" alt=""></div>
            </div>

        <jsp:include page="footerr.jsp"></jsp:include>

    </body>
</html>

<%-- 
    Document   : viewInterviewSchedule
    Created on : May 25, 2024, 1:49:50 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/function1.css">

        <style>
            .container {
                width: 80%;
                margin: auto;
                padding: 20px;
                background-color: #f9f9f9;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }

            h1 {
                text-align: center;
                margin-bottom: 20px;
            }

            .controls {
                text-align: center;
                margin-bottom: 20px;
            }

            .controls form {
                display: inline-block;
                margin: 0 10px;
            }

            .schedule-table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
            }

            .schedule-table th, .schedule-table td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: center;
                vertical-align: middle;
            }

            .schedule-table th {
                background-color: #f2f2f2;
            }

            .schedule-table tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .schedule-table tr:hover {
                background-color: #ddd;
            }
        </style>

    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">

                <h1>Interview Schedule</h1>

                <div class="controls">
                    <form action="viewInterviewSchedule.jsp" method="get">
                        <label for="week-start">From:</label>
                        <input type="date" id="week-start" name="week-start" value="<%= request.getParameter("week-start") != null ? request.getParameter("week-start") : "" %>" required>
                    <label for="week-end">To:</label>
                    <input type="date" id="week-end" name="week-end" value="<%= request.getParameter("week-end") != null ? request.getParameter("week-end") : "" %>" required>
                    <button type="submit">Go</button>
                </form>
            </div>

            <table class="schedule-table">
                <thead>
                    <tr>
                        <th>Time</th>
                        <th>Monday</th>
                        <th>Tuesday</th>
                        <th>Wednesday</th>
                        <th>Thursday</th>
                        <th>Friday</th>cdsfskjbckjsbafd
                    </tr>
                </thead>
                <tbody>
                    <%-- Sample data, replace with dynamic content as needed --%>
                    <tr>
                        <td>7:30 AM - 9:30 AM</td>
                        <td>John Doe with Jane Smith</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>9:30 AM - 11:30 AM</td>
                        <td></td>
                        <td>Mary Johnson with James Brown</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>11:30 AM - 1:30 PM</td>
                        <td>Robert Lee with Lisa Wong</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1:30 PM - 3:30 PM</td>
                        <td></td>
                        <td></td>
                        <td>Emily Davis with Michael Brown</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>3:30 PM - 5:30 PM</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </div>
        <jsp:include page="footerr.jsp"></jsp:include>

    </body>
</html>

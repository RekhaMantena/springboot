<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Events</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: #2c3e50;
            color: #fff;
        }
        h2 {
            color: #ecf0f1;
            text-align: center;
        }
        .table-container {
            background-color: #34495e;
            padding: 20px;
            border-radius: 8px;
            max-width: 800px;
            margin: 30px auto;
            border: 1px solid #9eb57d;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left; /* Left-align content in table cells */
            color: #ecf0f1;
        }
        th {
            background-color: #2c3e50;
            color: #9eb57d;
        }
        td {
            background-color: #34495e;
        }
        tr:nth-child(even) td {
            background-color: #2c3e50;
        }
        input[type="submit"] {
            background-color: #9eb57d;
            color: #fff;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        input[type="submit"]:hover {
            background-color: #7a8f55;
        }
        input[type="submit"]:focus {
            outline: none;
            box-shadow: 0 0 5px #9eb57d;
        }
        .navbar {
            background-color: #2c3e50;
            padding: 10px;
            border-bottom: 2px solid #9eb57d;
        }
    </style>
</head>
<body>
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>
    <h2>Available Events</h2>
    <div class="table-container">
        <c:if test="${not empty eventList}">
            <table border="1">
                <tr>
                    <th>Event ID</th>
                    <th>Event Name</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Location</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="event" items="${eventList}">
                    <tr>
                        <td>${event.id}</td>
                        <td>${event.eventName}</td>
                        <td>${event.description}</td>
                        <td>${event.date}</td>
                        <td>${event.location}</td>
                        <td>
                            <img src='displayEventImage?id=${event.id}' width="80%" height="80%">
                        </td>
                        <td>
                           <form action="registerEvent" method="post">
                               <input type="hidden" name="eventId" value="${event.id}" />
                               <input type="hidden" name="studentId" value="${student.id}" /> <!-- Ensure student.id is an integer -->
                               <input type="submit" value="Register" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>

        <c:if test="${empty eventList}">
            <p style="text-align: center; color: #9eb57d;">No events available for registration.</p>
        </c:if>
    </div>
</body>
</html>

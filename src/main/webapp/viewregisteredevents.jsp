<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registered Events</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: #f3f3f3; /* Light gray for a clean background */
            color: #4a4a4a; /* Dark gray for text */
        }
        h2 {
            color: #9eb57d; /* Primary green color */
            text-align: center;
        }
        .table-container {
            background-color: #ffffff; /* White for a clean look */
            padding: 20px;
            border-radius: 8px;
            max-width: 800px;
            margin: 30px auto;
            border: 1px solid #9eb57d;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            color: #4a4a4a; /* Dark gray for text */
        }
        th {
            background-color: #9eb57d; /* Primary green for headers */
            color: #ffffff; /* White text on green background */
        }
        td {
            background-color: #f7f7f7; /* Slightly off-white for contrast */
        }
        tr:nth-child(even) td {
            background-color: #eaeaea; /* Slightly darker gray for alternating rows */
        }
        a {
            display: block;
            text-align: center;
            color: #9eb57d; /* Primary green */
            font-weight: bold;
            text-decoration: none;
            margin-top: 20px;
        }
        a:hover {
            color: #7a9b62; /* Slightly darker green for hover */
        }
        p {
            text-align: center;
            color: #9eb57d; /* Primary green */
        }
    </style>
</head>
<body>
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>
    <h2>Your Registered Events</h2>
    <div class="table-container">
        <c:if test="${not empty registeredEvents}">
            <table border="1">
                <tr>
                    <th>Event ID</th>
                    <th>Event Name</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Location</th>
                    <th>Image</th>
                </tr>
                <c:forEach var="event" items="${registeredEvents}">
                    <tr>
                        <td>${event.id}</td>
                        <td>${event.eventName}</td>
                        <td>${event.description}</td>
                        <td>${event.date}</td>
                        <td>${event.location}</td>
                        <td>
                            <img src='displayEventImage?id=${event.id}' width="80%" height="80%">
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>

        <c:if test="${empty registeredEvents}">
            <p>You have not registered for any events yet.</p>
        </c:if>
    </div>

    <a href="/viewevents">Back to Available Events</a>
</body>
</html>

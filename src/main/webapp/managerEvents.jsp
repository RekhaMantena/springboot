<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manager Events</title>
    <style>
        body {
            margin: 0;
            padding-top: 20px; /* Adjust padding based on navbar height */
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .content {
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #4a5d38; /* Dark green for the heading */
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .table-container {
            width: 90%;
            margin: 0 auto; /* Centers the table */
            border-radius: 10px;
            background-color: #9eb57d; /* Green background for table container */
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff; /* White background for table */
            color: #333; /* Dark text for readability */
            border-radius: 10px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #c3d1b0; /* Light green border */
        }

        th {
            background-color: #4a5d38; /* Dark green for table headers */
            color: #fff; /* White text for headers */
        }

        tr:nth-child(even) {
            background-color: #e5f2d9; /* Lighter green for alternating rows */
        }

        tr:hover {
            background-color: #d2e6c2; /* Slightly darker green on hover */
        }

        img {
            border-radius: 5px;
        }

        button {
            background-color: #4a5d38; /* Dark green for button */
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #3c4c2d; /* Slightly darker green on hover */
        }

        .no-events {
            text-align: center;
            color: #4a5d38; /* Match green text color */
        }
    </style>
</head>
<body>
    <%@ include file="managernavbar.jsp" %>
    <div class="content">
        <h2>Events Managed by You</h2>
        <div class="table-container">
            <c:if test="${not empty eventList}">
                <table>
                    <thead>
                        <tr>
                            <th>Event ID</th>
                            <th>Event Name</th>
                            <th>Description</th>
                            <th>Date</th>
                            <th>Location</th>
                            <th>Image</th>
                            <th>View Registered Students</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="event" items="${eventList}">
                            <tr>
                                <td>${event.id}</td>
                                <td>${event.eventName}</td>
                                <td>${event.description}</td>
                                <td>${event.date}</td>
                                <td>${event.location}</td>
                                <td>
                                    <c:if test="${event.eventImg != null}">
                                        <img src="displayEventImage?id=${event.id}" width="80" height="80" alt="Event Image">
                                    </c:if>
                                    <c:if test="${event.eventImg == null}">No Image</c:if>
                                </td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/viewRegisteredStudents/${event.id}" style="text-decoration: none;">
                                        <button>View Students</button>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
            <c:if test="${empty eventList}">
                <p class="no-events">No events managed by you.</p>
            </c:if>
        </div>
    </div>
</body>
</html>

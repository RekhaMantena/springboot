<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manager Events</title>
    <style>
        body {
            background-color: #1f1f1f; /* Dark background for contrast */
            color: #f1f1f1; /* Light color for text */
        }
        h2 {
            color: #9eb57d; /* Highlight color */
            text-align: center;
        }
        .table-container {
            background-color: #2e2e2e; /* Slightly lighter for content background */
            padding: 20px;
            border-radius: 8px;
            max-width: 800px;
            margin: 30px auto;
            border: 1px solid #9eb57d; /* Highlight border */
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            color: #f1f1f1; /* Text color for cells */
        }
        th {
            background-color: #3a3a3a; /* Slightly darker header background */
            color: #9eb57d; /* Highlight text for headers */
        }
        td {
            background-color: #2e2e2e; /* Content cell background */
        }
        tr:nth-child(even) td {
            background-color: #383838; /* Alternate row color */
        }
        input[type="submit"] {
            background-color: #9eb57d;
            color: #1f1f1f; /* Dark text for contrast on buttons */
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        input[type="submit"]:hover {
            background-color: #8da66d; /* Slightly darker hover effect */
        }
        .no-events {
            text-align: center;
            color: #9eb57d; /* Highlight for empty message */
        }
    </style>
</head>
<body>
    <%@ include file="managernavbar.jsp" %>
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
                                    <button style="background-color: #9eb57d; color: #1f1f1f; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer; font-weight: bold;">
                                        View Students
                                    </button>
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
</body>
</html>

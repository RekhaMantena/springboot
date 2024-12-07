<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Managers</title>
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

        h3 {
            text-align: center;
            color: #4a5d38; /* Dark green for the heading */
            margin-top: 20px;
            margin-bottom: 20px;
        }

        table {
            width: 90%;
            margin: 0 auto; /* Centers the table */
            border-collapse: collapse;
            background-color: #9eb57d; /* Green background for table */
            color: #333; /* Dark text for readability */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
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

        /* Navbar styling */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #9eb57d; /* Light green for navbar */
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #3c4c2d; /* Slightly darker green on hover */
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <a href="adminhome">Home</a>
        <a href="studentreg">Add Student</a>
        <a href="viewallstudents">View All Students</a>
        <a href="managerreg">Add Manager</a>
        <a href="viewallmanagers">View All Managers</a>
        <a href="addevent">Add Event</a>
        <a href="deletestudent">Delete Students</a>
        <a href="deletemanager">Delete Managers</a>
        <a href="adminlogout">Logout</a>
    </div>

    <!-- Content -->
    <div class="content">
        <h3>View All Managers</h3>
        <div class="table-container">
            <table>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>CLUB</th>
                    <th>EMAIL</th>
                    <th>LOCATION</th>
                    <th>CONTACT</th>
                </tr>
                <c:forEach items="${manlist}" var="m">
                    <tr>
                        <td><c:out value="${m.id}"/></td>
                        <td><c:out value="${m.name}"/></td>
                        <td><c:out value="${m.gender}"/></td>
                        <td><c:out value="${m.club}"/></td>
                        <td><c:out value="${m.email}"/></td>
                        <td><c:out value="${m.location}"/></td>
                        <td><c:out value="${m.contact}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>

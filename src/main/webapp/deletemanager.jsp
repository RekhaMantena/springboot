<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Manager</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light green background */
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

        .content {
            margin-top: 60px; /* Adjust to fit the navbar height */
            padding: 20px;
        }

        h3 {
            text-align: center;
            color: #4a5d38; /* Dark green for heading */
            margin-top: 20px;
            margin-bottom: 20px;
        }

        table {
            width: 90%;
            margin: 0 auto; /* Centers the table */
            border-collapse: collapse;
            background-color: #e5f2d9; /* Light green for table */
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
            background-color: #ffffff; /* White for alternating rows */
        }

        tr:hover {
            background-color: #d2e6c2; /* Slightly darker green on hover */
        }

        a.delete-button {
            display: inline-block;
            padding: 8px 12px;
            background-color: #4a5d38; /* Dark green for delete button */
            color: #ffffff; /* White text color */
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
            font-weight: bold;
        }

        a.delete-button:hover {
            background-color: #3c4c2d; /* Slightly darker green on hover */
            transform: scale(1.1); /* Slight zoom effect */
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

    <div class="content">
        <h3>Delete Manager</h3>
        <div class="table-container">
            <table>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DATE OF BIRTH</th>
                    <th>CLUB</th>
                    <th>EMAIL</th>
                    <th>LOCATION</th>
                    <th>CONTACT</th>
                    <th>ACTION</th>
                </tr>
                <c:forEach items="${manlist}" var="m">
                    <tr>
                        <td><c:out value="${m.id}"/></td>
                        <td><c:out value="${m.name}"/></td>
                        <td><c:out value="${m.gender}"/></td>
                        <td><c:out value="${m.dateOfBirth}"/></td>
                        <td><c:out value="${m.club}"/></td>
                        <td><c:out value="${m.email}"/></td>
                        <td><c:out value="${m.location}"/></td>
                        <td><c:out value="${m.contact}"/></td>
                        <td>
                            <a class="delete-button" href="<c:url value='deletemanager/${m.id}' />">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>

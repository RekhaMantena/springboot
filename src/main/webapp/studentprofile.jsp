<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
if(s == null) {
    response.sendRedirect("studentsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    /* General Styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5; /* Light gray background */
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
    }

    /* Navbar Styling */
    .navbar {
        width: 100%;
        background-color: #2c3e50; /* Dark blue-gray */
        color: #ecf0f1; /* Light text */
        padding: 3px 5px; /* Reduced padding */
        text-align: center;
        position: sticky;
        top: 0;
        z-index: 1000;
    }

    .navbar a {
        color: #ecf0f1;
        text-decoration: none;
        margin: 0 10px; /* Reduced spacing */
        font-size: 0.9em; /* Smaller font size */
        font-weight: bold;
        transition: color 0.3s ease;
    }

    .navbar a:hover {
        color: #3498db; /* Bright blue hover effect */
    }

    /* Content Container */
    .content {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-grow: 1;
        padding: 20px;
    }

    .content-inner {
        background-color: #ffffff; /* White background for card */
        border-radius: 10px;
        padding: 30px 20px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        max-width: 600px;
        width: 100%;
        text-align: center;
    }

    .content-inner h2 {
        margin-bottom: 20px;
        color: #2c3e50; /* Matching dark blue-gray for headers */
    }

    .content-inner p {
        margin: 10px 0;
        color: #7f8c8d; /* Soft gray text for details */
        font-size: 1.1em; /* Slightly larger font */
    }

    /* Responsive Design */
    @media (max-width: 600px) {
        .content-inner {
            padding: 20px;
        }

        .navbar {
            padding: 8px 10px; /* Further reduced padding for smaller screens */
        }

        .navbar a {
            margin: 0 8px;
            font-size: 0.8em; /* Smaller font size for mobile */
        }
    }
</style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>

<!-- Main Content -->
<div class="content">
    <div class="content-inner">
        <h2>Welcome, <%=s.getName()%>!</h2>
        <p><strong>ID:</strong> <%=s.getId()%></p>
        <p><strong>Gender:</strong> <%=s.getGender()%></p>
        <p><strong>Date of Birth:</strong> <%=s.getDateOfBirth()%></p>
        <p><strong>Department:</strong> <%=s.getDepartment()%></p>
        <p><strong>Email:</strong> <%=s.getEmail()%></p>
        <p><strong>Location:</strong> <%=s.getLocation()%></p>
        <p><strong>Contact:</strong> <%=s.getContact()%></p>
    </div>
</div>

</body>
</html>

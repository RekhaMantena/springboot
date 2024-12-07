<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
        }

        .container {
            padding: 20px;
            margin: 0 auto;
            max-width: 1200px;
        }

        .welcome-section {
            text-align: center;
            margin-top: 20px;
            padding: 20px;
            background-color: #9eb57d;
            color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .welcome-section h1 {
            margin: 0;
            font-size: 2.5em;
        }

        .welcome-section p {
            font-size: 1.2em;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .card h3 {
            margin: 0 0 10px;
            font-size: 1.5em;
        }

        .card p {
            margin: 0 0 20px;
            font-size: 1em;
            color: #555;
        }

        .card a {
            text-decoration: none;
            color: #fff;
            background-color: #9eb57d;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .card a:hover {
            background-color: #7a9c62;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="container">
        <div class="welcome-section">
            <h1>Welcome, Admin!</h1>
            <p>Manage students, events, and staff effectively from your dashboard. Here's a quick overview of your options:</p>
        </div>

        <div class="grid-container">
            <div class="card">
                <h3>Manage Students</h3>
                <p>Add, view, and delete student records quickly and efficiently.</p>
                <a href="viewallstudents">Go to Students</a>
            </div>
            <div class="card">
                <h3>Manage Managers</h3>
                <p>Oversee and update manager information with ease.</p>
                <a href="viewallmanagers">Go to Managers</a>
            </div>
            <div class="card">
                <h3>Create Events</h3>
                <p>Organize and schedule extracurricular activities seamlessly.</p>
                <a href="addevent">Create Events</a>
            </div>
            
        </div>
    </div>
</body>
</html>

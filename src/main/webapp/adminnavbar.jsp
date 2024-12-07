<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        /* Horizontal navbar styling */
        .navbar {
            background-color: #9eb57d; /* Navbar background color */
            overflow: hidden;
            display: flex;
            justify-content: center; /* Center-align items */
            padding: 0;
            margin: 0;
        }

        .navbar a {
            color: white; /* White text color */
            text-decoration: none;
            text-align: center;
            padding: 14px 20px; /* Keep the same padding */
            font-size: 14px; /* Reduced font size */
            font-weight: bold; /* Make text bold */
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #7a9c62; /* Darker green for hover effect */
        }

        .content {
            padding: 20px;
            text-align: center; /* Center align content */
        }

        /* Responsive Design */
        @media screen and (max-width: 700px) {
            .navbar {
                flex-direction: column; /* Stack links vertically */
            }
        }
    </style>
</head>
<body>

<!-- Horizontal navbar -->
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
    <h2>Extracurricular Activities</h2>
</div>

</body>
</html>

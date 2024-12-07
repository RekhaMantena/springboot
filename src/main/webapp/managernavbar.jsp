<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ExtraCurricular Activities</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        /* Horizontal Navbar */
        .navbar {
            width: 100%;
            background-color: #9eb57d; /* Updated color */
            overflow: hidden;
            text-align: center;
            display: flex; /* Flexbox for horizontal layout */
            justify-content: center; /* Centers the items */
            padding: 10px 0;
        }

        .navbar a {
            color: #ffffff;
            padding: 16px 24px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.2s ease;
        }

        /* Updated hover color */
        .navbar a:hover {
            background-color: #6e8b3d; /* Darker green on hover */
            color: #ffffff;
        }

        /* Content Styling */
        .content {
            padding: 20px;
        }

        /* Responsive Design */
        @media screen and (max-width: 700px) {
            .navbar {
                flex-direction: column; /* Stack items vertically on smaller screens */
            }

            .navbar a {
                text-align: center;
                padding: 12px;
            }
        }

    </style>
</head>
<body>

    <!-- Horizontal Navbar -->
    <div class="navbar">
        <a href="managerhome">Home</a>
        <a href="managerprofile">My Profile</a>
        <a href="updatemanager">Update Profile</a>
        <a href="managerEvents">Assigned Events</a>
        <a href="managerlogout">Logout</a>
    </div>

    <div class="content">
        
        <!-- Add any additional content here -->
    </div>

</body>
</html>

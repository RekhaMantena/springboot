<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Extra-Curricular Activities</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        /* Horizontal Navbar Styling with Fixed Height */
        .navbar {
            display: flex;
            justify-content: space-around;
            background-color: #9eb57d; /* New color for navbar */
            height: 80px; /* Match the original sidebar width */
            align-items: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
            flex-wrap: wrap; /* Wrap items if screen size is too small */
        }

        .navbar a {
            display: block;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
            color: white; /* White text on navbar */
            font-weight: bold;
            transition: background-color 0.3s ease, color 0.3s ease;
            text-align: center;
        }

        .navbar a:hover {
            background-color: #7a8c61; /* Slightly darker green on hover */
            color: #fff; /* Ensure text remains white on hover */
        }

        .content {
            padding: 20px;
            text-align: center;
            margin-top: 50px; /* Adjust margin to account for navbar height */
        }

        h2 {
            font-size: 2em;
            color: #333; /* Darker text for contrast */
        }

        /* Responsive Design */
        @media screen and (max-width: 700px) {
            .navbar {
                height: auto; /* Allow dynamic height */
                flex-direction: column; /* Stack links vertically */
                justify-content: flex-start; /* Align links to the top */
            }
            .navbar a {
                text-align: center;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <!-- Horizontal Navbar -->
    <div class="navbar">
        <a href="studenthome">Home</a>
        <a href="studentprofile">My Profile</a>
        <a href="viewevents">Register Event</a>
        <a href="viewregisteredevents">View Registered Events</a>
        <a href="updatestudent">Update Profile</a>
        <a href="studentlogout">Logout</a>
    </div>

    <div class="content">
        
        <!-- Add any additional content here -->
    </div>
</body>
</html>

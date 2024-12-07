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

        /* Horizontal Navbar with updated color */
        .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #9eb57d; /* Updated color */
            padding: 10px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: #ffffff;
            text-decoration: none;
            padding: 14px 20px;
            margin: 0 10px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #ffffff;
            color: #9eb57d; /* Matching hover text color with navbar */
        }

        .content {
            padding: 20px;
            text-align: center;
        }

        /* Responsive Design */
        @media screen and (max-width: 700px) {
            .navbar {
                flex-wrap: wrap;
                padding: 15px 0;
            }
            .navbar a {
                margin: 5px;
            }
        }

        @media screen and (max-width: 400px) {
            .navbar a {
                font-size: 16px;
                padding: 10px 15px;
            }
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="/" class="active">Home</a>
        <a href="adminlogin">Admin Login</a>
        <a href="studentlogin">Student Login</a>
        <a href="managerlogin">Manager Login</a>
        <a href="about">About</a>
    </div>

    <div class="content">
        <h2>Welcome to ExtraCurricular Activities</h2>
        <p>Explore our platform and access your desired section using the navigation bar above!</p>
    </div>
</body>
</html>

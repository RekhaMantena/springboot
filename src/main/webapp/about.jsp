<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About KL University</title>
    <style>
        /* Style for the navbar */
        .navbar-container {
            width: 100%; /* Full width for horizontal navbar */
            background-color: #9eb57d; /* Main navbar background color */
            color: white;
            overflow: hidden; /* Prevent overflow if content is too large */
            padding: 20px 0; /* Increased padding for height adjustment */
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Add a subtle shadow */
        }

        .navbar-container ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex; /* Align items horizontally */
            justify-content: center; /* Center the links */
        }

        .navbar-container li {
            margin: 0 20px; /* Space between menu items */
        }

        .navbar-container a {
            text-decoration: none;
            color: white; /* Text color */
            font-size: 18px; /* Slightly larger font size for better visibility */
            font-weight: bold;
            padding: 12px 24px; /* Increased padding for larger clickable area */
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .navbar-container a:hover {
            background-color: #8aa769; /* Slightly darker shade for hover */
            color: #f8f8f8; /* Lighter text on hover */
        }

        /* Full-screen background image styling */
        .content {
            position: relative;
            min-height: 100vh; /* Full viewport height */
            background-size: cover; /* Make image cover entire div */
            background-position: center;
            color: white; /* Set text color to contrast the background */
            padding: 40px;
            box-sizing: border-box;
        }

        /* Styling text overlay */
        .content h3,
        .content p {
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background for better readability */
            padding: 10px;
            border-radius: 5px;
            margin: 20px 0;
            text-align: center;
        }

        /* Footer styling */
        .footer {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 10px;
            border-radius: 5px;
            color: white;
            margin-top: 20px;
            position: relative; /* Allows it to stay within the content area */
        }
    </style>
</head>
<body>
    <div class="navbar-container">
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="#">Academics</a></li>
            <li><a href="#">Admissions</a></li>
            <li><a href="#">Research</a></li>
            <li><a href="#">Contact Us</a></li>
        </ul>
    </div>

    <div class="content">
        <h3>Welcome to KL Deemed-to-be University</h3>
        <p>KL University, established in 1980, is a premier institution for higher education in India. Recognized as a Category I Institution by the UGC and accredited with an A++ grade by NAAC, we are committed to academic excellence and innovation.</p>

        <h3>Why Choose KL University?</h3>
        <p>At KL University, we emphasize holistic development through a curriculum that blends theoretical knowledge with practical application. Our teaching methodologies include Active Learning Methods (ALM), Project-Based Labs (PBL), and interdisciplinary courses designed to meet industry and societal demands.</p>

        <p>We offer state-of-the-art infrastructure, a vibrant campus life, and a focus on skilling students for a dynamic world. Research is integral to our undergraduate and postgraduate programs, fostering innovation and entrepreneurial thinking.</p>

        <h3>Our Vision</h3>
        <p>Our vision is to be a globally renowned university known for excellence in teaching, research, and community impact. We aim to produce graduates who are leaders in their fields, equipped with the knowledge, skills, and values to make a positive difference in the world.</p>

        <!-- Footer at the bottom of content -->
        <div class="footer">
            &copy; 2024 KL University. All rights reserved.
        </div>
    </div>
</body>
</html>

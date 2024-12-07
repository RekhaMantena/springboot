<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Registration</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background */
        }

        .container {
            display: flex;
            flex-direction: column; /* Align items in a column */
            align-items: center; /* Center items horizontally */
            justify-content: center; /* Center items vertically */
            padding: 20px;
            background-color: #9eb57d; /* Light green background for form */
            color: #333; /* Dark text for readability */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3); /* Shadow for depth */
            width: 400px; /* Set a fixed width for the form */
            margin: 20px auto; /* Center container with margin */
            text-align: left; /* Align text to the left */
        }

        h3 {
            color: #4a5d38; /* Dark green for the heading */
            text-align: center; /* Center heading */
            margin-bottom: 20px; /* Space below the heading */
        }

        label {
            margin-top: 10px; /* Space between label and input */
            display: block; /* Labels on their own lines */
            color: #4a5d38; /* Dark green text for labels */
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        input[type="number"],
        select {
            width: 90%; /* Full width with a bit of margin */
            padding: 10px; /* Padding inside inputs */
            margin: 10px auto; /* Center alignment */
            border: 1px solid #c3d1b0; /* Light green border */
            border-radius: 5px; /* Rounded corners */
            box-sizing: border-box; /* Include padding and border in width */
            background-color: #e5f2d9; /* Light green input background */
            color: #4a5d38; /* Dark green text */
        }

        input[type="radio"] {
            margin: 0 5px; /* Space around radio buttons */
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #4a5d38; /* Dark green buttons */
            color: #fff; /* White text */
            border: none; /* No border */
            padding: 10px 15px; /* Padding for buttons */
            border-radius: 5px; /* Rounded corners for buttons */
            cursor: pointer; /* Pointer cursor on hover */
            margin: 10px; /* Space between buttons */
            transition: background-color 0.3s ease; /* Smooth background transition */
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #3c4c2d; /* Slightly darker green on hover */
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3>Manager Registration</h3>
    <div class="container">
        <form method="post" action="insertmanager">
            <label>Enter Name</label>
            <input type="text" name="mname" required />

            <label>Select Gender</label>
            <input type="radio" id="male" name="mgender" value="MALE" required />
            <label for="male">Male</label>
            <input type="radio" id="female" name="mgender" value="FEMALE" required />
            <label for="female">Female</label>
            <input type="radio" id="others" name="mgender" value="OTHERS" required />
            <label for="others">Others</label>

            <label for="mdob">Enter Date of Birth</label>
            <input type="date" id="mdob" name="mdob" required />

            <label for="mclub">Select Club</label>
            <select id="mclub" name="mclub" required>
                <option value="">---Select---</option>
                <option value="Standup">Standup</option>
                <option value="Sports">Sports</option>
                <option value="Vyuha">Vyuha</option>
                <option value="Narthana">Narthana</option>
                <option value="Swara">Swara</option>
                <option value="Radio">Radio</option>
                <option value="NSS">NSS</option>
            </select>

            <label for="memail">Enter Email ID</label>
            <input type="email" id="memail" name="memail" required />

            <label for="mpwd">Enter Password</label>
            <input type="password" id="mpwd" name="mpwd" required />

            <label for="mlocation">Enter Location</label>
            <input type="text" id="mlocation" name="mlocation" required />

            <label for="mcontact">Enter Contact</label>
            <input type="number" id="mcontact" name="mcontact" required />

            <input type="submit" value="Register" />
            <input type="reset" value="Clear" />
        </form>
    </div>
</body>
</html>

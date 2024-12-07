<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        /* General styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background */
            color: #333; /* Dark text color */
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Resetting navbar margin/padding */
        .navbar-container {
            width: 100%;
            margin: 0;
            padding: 0;
        }

        /* Center the form container */
        .form-container {
            background-color: #e5f2d9; /* Light green background */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
            margin: 10px 0 0;
            text-align: center;
            color: #222;
        }

        /* Table and input styling */
        table {
            width: 100%;
            margin-top: 15px;
        }

        td {
            padding: 10px;
            text-align: left;
            font-size: 1.1em;
        }

        label {
            font-weight: bold;
            color: #333; /* Dark color for labels */
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 1.1em;
            border-radius: 4px;
            border: 1px solid #b2c7a3; /* Light green border */
            background-color: #fff; /* White input background */
            color: #333;
            box-sizing: border-box;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            margin: 8px;
            border: none;
            border-radius: 4px;
            font-size: 1.1em;
            color: #fff;
            background-color: #4a5d38; /* Dark green for buttons */
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #3c4c2d; /* Darker green on hover */
        }

        h3 {
            margin-top: 0;
            font-size: 1.8em; /* Larger header font size */
            color: #4a5d38; /* Dark green text for the header */
            padding: 10px;
        }
    </style>
</head>
<body>

    <!-- Navbar stays at the top -->
    <div class="navbar-container">
        <%@include file="mainnavbar.jsp" %>
    </div>

    <!-- Centered Admin Login Form -->
    <div class="form-container">
        <h3><u>Admin Login</u></h3>
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>

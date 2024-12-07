<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Event</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333333;
            margin: 0;
            padding: 0;
        }
        h2 {
            color: #4a5d38; /* Dark green for heading */
            text-align: center;
            margin-top: 20px;
        }
        .form-container {
            background-color: #e5f2d9; /* Light green for form container */
            border: 1px solid #4a5d38; /* Dark green border */
            border-radius: 10px;
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin: 10px 0 5px;
            font-weight: bold;
            color: #4a5d38; /* Dark green for labels */
        }
        input[type="text"], input[type="date"], textarea, select, input[type="file"] {
            background-color: #ffffff;
            color: #333333;
            border: 1px solid #c3d1b0; /* Light green border */
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 16px;
        }
        input[type="text"]:focus, input[type="date"]:focus, textarea:focus, select:focus, input[type="file"]:focus {
            outline: none;
            border-color: #4a5d38; /* Dark green focus border */
        }
        textarea {
            resize: none;
        }
        input[type="submit"] {
            background-color: #4a5d38; /* Dark green for submit button */
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #3c4c2d; /* Slightly darker green on hover */
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
    <h2>Add New Event</h2>
    <div class="form-container">
        <form action="insertevent" method="post" enctype="multipart/form-data">
            <label for="ename">Event Name:</label>
            <input type="text" id="ename" name="ename" required>

            <label for="managerId">Select Manager:</label>
            <select id="managerId" name="managerId" required>
                <c:forEach var="manager" items="${managerList}">
                    <option value="${manager.id}">${manager.name} - ${manager.club}</option>
                </c:forEach>
            </select>

            <label for="edescription">Description:</label>
            <textarea id="edescription" name="edescription" rows="4" required></textarea>

            <label for="edate">Date:</label>
            <input type="date" id="edate" name="edate" required>

            <label for="elocation">Location:</label>
            <input type="text" id="elocation" name="elocation" required>

            <label for="eimg">Upload Event Image:</label>
            <input type="file" id="eimg" name="eimg" accept="image/*">

            <input type="submit" value="Add Event">
        </form>
    </div>
</body>
</html>

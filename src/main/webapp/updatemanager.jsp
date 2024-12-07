<%@page import="com.klef.jfsd.model.Manager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Manager m = (Manager)session.getAttribute("manager");
    if(m == null) {
        response.sendRedirect("studentsessionfail");
        return;
    }
%>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Manager</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: #f4f4f4; /* Light gray background for contrast */
            color: #333; /* Dark text for readability */
            font-family: Arial, sans-serif;
        }
        h3 {
            color: #9eb57d; /* Soft green for header */
            text-align: center;
            font-size: 2rem;
            margin-top: 20px;
        }
        .form-container {
            background-color: #ffffff; /* White background for form */
            padding: 20px;
            border-radius: 8px;
            max-width: 600px;
            margin: 30px auto;
            border: 1px solid #9eb57d; /* Green border for consistency */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        label {
            color: #9eb57d; /* Soft green for labels */
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            background-color: #f0f4f1; /* Light greenish background for inputs */
            color: #333; /* Dark text */
            border: 1px solid #9eb57d; /* Green border */
            border-radius: 4px;
        }
        input[type="radio"] {
            margin-right: 5px;
        }
        .button-container {
            text-align: center;
        }
        input[type="submit"],
        input[type="reset"] {
            background-color: #9eb57d; /* Soft green for buttons */
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 10px 5px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #7a8e58; /* Slightly darker green on hover */
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
        }
        .form-container input[type="submit"]:hover,
        .form-container input[type="reset"]:hover {
            background-color: #7a8e58;
        }
    </style>
</head>
<body>
    <%@include file="managernavbar.jsp" %>
    <h3><u>Update Manager</u></h3>
    <div class="form-container">
       <form method="post" action="updatemanager">
            <table>
                <tr>
                    <td><label for="mid">ID</label></td>
                    <td><input type="number" id="mid" name="mid" value="<%=m.getId()%>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="mname">Enter Name</label></td>
                    <td><input type="text" id="mname" name="mname" value="<%=m.getName()%>" required /></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="mgender" value="MALE" required />
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="mgender" value="FEMALE" required />
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="mgender" value="OTHERS" required />
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="mdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="mdob" name="mdob" required /></td>
                </tr>
                <tr>
                    <td><label for="mclub">Club</label></td>
                    <td>
                        <select id="mclub" name="mclub" disabled required>
                            <option value="Standup" <%=m.getClub().equals("Standup") ? "selected" : ""%>>Standup</option>
                            <option value="Sports" <%=m.getClub().equals("Sports") ? "selected" : ""%>>Sports</option>
                            <option value="Vyuha" <%=m.getClub().equals("Vyuha") ? "selected" : ""%>>Vyuha</option>
                            <option value="Narthana" <%=m.getClub().equals("Narthana") ? "selected" : ""%>>Narthana</option>
                            <option value="Swara" <%=m.getClub().equals("Swara") ? "selected" : ""%>>Swara</option>
                            <option value="Radio" <%=m.getClub().equals("Radio") ? "selected" : ""%>>Radio</option>
                            <option value="NSS" <%=m.getClub().equals("NSS") ? "selected" : ""%>>NSS</option>
                        </select>
                        <input type="hidden" id="mclubHidden" name="mclub" value="<%=m.getClub()%>">
                    </td>
                </tr>
                <tr>
                    <td><label for="mlocation">Enter Location</label></td>
                    <td><input type="text" id="mlocation" name="mlocation" value="<%=m.getLocation()%>" required /></td>
                </tr>
                <tr>
                    <td><label for="memail">Enter Email ID</label></td>
                    <td><input type="email" id="memail" name="memail" value="<%=m.getEmail() %>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="mpwd">Enter Password</label></td>
                    <td><input type="password" id="mpwd" name="mpwd" required /></td>
                </tr>
                <tr>
                    <td><label for="mcontact">Enter Contact</label></td>
                    <td><input type="number" id="mcontact" name="mcontact" value="<%=m.getContact()%>" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExtraCurricular Activities</title>
<style>
    .image-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: calc(100vh - 180px); /* Adjust height as needed */
        text-align: center;
    }
    .image-container img {
        max-width: 100%;
        height: auto;
        border-radius: 10px; /* Optional rounded corners */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Optional shadow for aesthetics */
    }
</style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<div class="image-container">
    <img src="https://www.gyanone.com/wp-content/uploads/2022/06/Extracurricular-Activities.png" 
         alt="Extracurricular activities">
</div>
</body>
</html>

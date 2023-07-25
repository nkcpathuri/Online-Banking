<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>EP Project</title>
<link type="text/css" rel="stylesheet" href="style.css"/>
<style>
   body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url("https://image.lexica.art/full_jpg/241d5627-04e8-400f-ae3c-e74cde8adaae");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }

    h2 {
        text-align: center;
        margin-top: 50px;
    }

    /* Card styles */
    .card {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;  
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Adjust opacity here */
        background-color: rgba(200, 200, 200, 0.5); /* Adjust background color opacity here */
    }

    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        text-decoration: none;
        color: #007BFF;
    }

    .button-container {
        display: flex;
        justify-content: center;
    }

    .button {
        padding: 5px 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        background-color: green;
        color: #fff;
        cursor: pointer;
    }
</style>
</head>
<body>
<div class="card">
    <h2>Amount Transferred Successfully</h2>
    <div class="button-container">
        <a href="tranreg.jsp" class="button">Go Back</a>
    </div>
</div>
</body>
</html>

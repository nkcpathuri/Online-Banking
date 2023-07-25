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
    background-image: url("https://image.lexica.art/full_jpg/2d58f345-835b-4430-9b47-406b7522f941");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }


    h3 {
        text-align: center;
        margin-top: 50px;
    }

    /* Card styles */
    .card {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        border-radius: 5px;
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
        /* Button container styles */
    .button-container {
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    /* Button styles */
    .button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      text-align: center;
      text-decoration: none;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-right: 10px;
    }

    .button:hover {
      background-color: #45a049;
    }
</style>

<body>
<div class="card">

<h3>Amount Deposited Successfully</h3><br>
<a href="depreg.jsp" class="button">Go Back</a>
</div>

</body>
</html>
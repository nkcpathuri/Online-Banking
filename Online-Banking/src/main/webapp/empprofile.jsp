<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.klef.ep.models.Employee" %>
<%
Employee emp = (Employee) session.getAttribute("emp"); // emp is a session attribute
if (emp == null) {
    response.sendRedirect("sessionexpiry.html");
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>EP Project</title>
    <link type="text/css" rel="stylesheet" href="style.css"/>
    <style>
        /* style.css */

        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url("https://image.lexica.art/full_jpg/39812933-fcb7-452d-945a-1a854a34d12d");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }


        h2 {
            text-align: center;
            text-decoration: underline;
        }
    .navbar {
      background-color: #333;
      color: #fff;
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .navbar ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
    }

    .navbar li {
      margin-right: 10px;
    }

    .navbar li a {
      display: block;
      color: #fff;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    .navbar li a:hover {
      background-color: #111;
    }

    .navbar .user-profile {
      display: flex;
      align-items: center;
    }

    .navbar .user-profile img {
      width: 30px;
      height: 30px;
      border-radius: 50%;
      margin-right: 5px;
      cursor: pointer;
    }

    .navbar .right-links {
      margin-left: auto;
    }

        /* Card styles */
        .card {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Adjust opacity here */
        background-color: rgba(200, 200, 200, 0.7); /* Adjust background color opacity here */
    }

        .card h3 {
            text-align: center;
            text-decoration: underline;
        }

        .profile-info {
            text-align: center;
        }

        .profile-info span {
            font-weight: bold;
        }

    </style>
</head>
<body>

  <div class="navbar">
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="empprofile.jsp">Account Details</a></li>
      <li><a href="depreg.jsp">Deposit</a></li>
      <li><a href="tranreg.jsp">Transfer</a></li>
    </ul>
    
    <ul class="right-links">
      <div class="user-profile">
        <a href="accountdetails.html">
        </a>
      </div>
      <li><a href="emplogout.jsp">Logout</a></li>
    </ul>
  </div>



<div class="card">
    <h3>Customer Profile</h3>
    <div class="profile-info">
         <span>Account Number:</span> <%= emp.getId() %><br><br><br>
         <span>Name:</span> <%= emp.getName() %><br><br><br>
          <span>Gender:</span> <%= emp.getGender() %><br> <br><br>  
          <span>Account Type:</span> Savings <br><br><br>
         
        
    </div>
</div>

</body>
</html>
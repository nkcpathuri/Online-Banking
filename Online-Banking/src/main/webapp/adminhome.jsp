<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.Employee" %>
    <%
    String username = (String)session.getAttribute("username");
    if(username == null)
    {
    	response.sendRedirect("asessionexpiry.html");
    }
    %>
    <!DOCTYPE html>
<html>
<head>
  <title>Online Bank Management System</title>
  <style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url("https://image.lexica.art/full_jpg/7eeaa9c4-f239-4395-a397-09666863209f");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
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
    
    h3 {
      text-align: center;
      background-color: white; /* Set the background color to white */
      padding: 5px; /* Add padding for spacing */
      border-radius: 5px; /* Add rounded corners */
      box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); /* Add a subtle box shadow */
    }
  </style>
</head>
<body>
  <div class="navbar">
    <ul>
      <li><a href="adminhome.jsp">Home</a></li>
      <li><a href="viewallemps.jsp">Customers Details</a></li>
      <li><a href="viewalldep.jsp">Customers Deposits</a></li>
      <li><a href="viewalltran.jsp">Customers Transfers</a></li>
    </ul>
    
    <ul class="right-links">
      <div class="user-profile">
        <a href="accountdetails.html">
        </a>
      </div>
      <li><a href="adminlogout.jsp">Logout</a></li>
    </ul>
  </div>
</body>
</html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>EP Project</title>
<link type="text/css"  rel="stylesheet"  href="style.css"/>
</head>
<body>



<h1 align="center" >Admin</h1>

<h3 align="center" >Welcome <%=username%></h3>

</body>
</html>
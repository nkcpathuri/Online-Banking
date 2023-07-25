<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.Employee" %>
    <%
    Employee emp = (Employee)session.getAttribute("emp");
    if(emp == null)
    {
    	response.sendRedirect("sessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EP Project</title>
<link type="text/css"  rel="stylesheet"  href="style.css"/>
</head>
<body>
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
    
    
    h1 {
        text-align: center;
        color: white; /* Change the color to white */
    }
    
    h3 {
      text-align: center;
      background-color: white; /* Set the background color to white */
      padding: 5px; /* Add padding for spacing */
      border-radius: 10px; /* Add rounded corners */
      box-shadow: 5px rgba( 0.2); /* Add a subtle box shadow */
    }
</style>

 <div class="navbar">
    
  <ul>
<li><a href="emphome.jsp">Home</a></li>
<li><a href="empprofile.jsp">Profile</a></li>
</ul>  
    <ul class="right-links">
      <div class="user-profile">
        <a href="accountdetails.html">
        </a>
      </div>
      <li><a href="emplogout.jsp">Logout</a></li>
    </ul>
  </div>
</body>
</html>
 


<br>

<h1 align="center">Customer Home</h1>

<h3 align="center" >Welcome <%=username%></h3>

</body>
</html>
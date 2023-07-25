<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import="java.sql.*,java.util.List"  %>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Deposit"%>
<%@page import="com.klef.ep.models.Admin"%>

<!DOCTYPE html>
<html>
<head>
  <title>Online Bank Management System</title>
  <style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url("https://image.lexica.art/full_jpg/80a83410-5096-46b8-b8fd-37db2d526651");
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
<!DOCTYPE html>
<html>
<head>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .navbar {
      background-color: #333;
      color: #fff;
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    /* Add other styles for navbar here */

    table {
      border-collapse: collapse;
      width: 80%;
      margin: 20px auto;
      background-color: white; /* Set the background color of the table to white */
    }
    table, th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
      color: #333;
    }

    tr:hover {
      background-color: #f5f5f5;
    }
  </style>


<table align="center"  border=2>
<tr>
<th>Account Number</th>
<th>Deposited Amount</th>

</tr>
<%
InitialContext context = new InitialContext();
AdminService adminService = (AdminService) context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");

List<Deposit> emplist = adminService.viewAllDep();

for(Deposit emp : emplist)
{
    %>
    
      <tr>
          <td><%=emp.getId()%></td>
          <td><%=emp.getName()%></td>

 
      </tr>
    
    <%
}

%>
</table>


</body>
</html>
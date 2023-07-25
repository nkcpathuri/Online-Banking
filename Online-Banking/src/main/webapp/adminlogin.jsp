<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>EP Project</title>
<link type="text/css" rel="stylesheet" href="style.css" />
<style>
  /* style.css */

 body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url("https://image.lexica.art/full_jpg/1af8bd40-0804-4fae-a7f2-d4d9a1291dea");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }


  h2 {
    text-align: center;
    text-decoration: underline;
  }

  /* Card styles */
  .card {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow:#0000;
  }

  table {
    margin: 0 auto;
  }

  table td {
    padding: 5px;
  }

  input[type="text"],
  input[type="password"] {
    width: 200px;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  input[type="submit"],
  input[type="reset"] {
    padding: 5px 10px;
    font-size: 16px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  input[type="submit"]:hover,
  input[type="reset"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>

<div class="card">
  <h2 align="center"><u>Admin Login</u></h2>
  <form method="post" action="checkadminlogin.jsp">
    <table align="center">
      <tr>
        <td><b>Username</b></td>
        <td>
          <input type="text" name="uname" required>
        </td>
      </tr>
      <tr>
        <td></td>
      </tr>
      <tr>
        <td><b>Password</b></td>
        <td>
          <input type="password" name="pwd" required>
        </td>
      </tr>
      <tr>
        <td></td>
      </tr>
      <tr>
        <td></td>
      </tr>
      <tr>
        <td></td>
      </tr>
      <tr align="center">
        <td>
          <input type="submit" value="Login" required>
        </td>
        <td>
          <input type="reset" value="Clear" required>
        </td>
      </tr>
    </table>
  </form>
</div>

</body>
</html>
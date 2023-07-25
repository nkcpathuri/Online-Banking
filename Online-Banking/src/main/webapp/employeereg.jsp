<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    background-image: url("https://image.lexica.art/full_jpg/b696b40e-6e64-4a59-93d2-7716ce173835");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }


  .card-container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Adjust opacity here */
        background-color: rgba(200, 200, 200, 0.7); /* Adjust background color opacity here */
  }

  h2 {
    text-align: center;
    text-decoration: underline;
  }

  table {
    margin: 0 auto;
  }

  table td {
    padding: 5px;
  }

  input[type="number"],
  input[type="text"],
  input[type="password"] {
    width: 200px;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  input[type="radio"] {
    margin-right: 5px;
  }

  select {
    width: 206px;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  .button {
    padding: 5px 10px;
    font-size: 16px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  .button:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>

  <div class="card-container">
    <h2><u>Customer Registration</u></h2>
    <form method="post" action="addemployee.jsp">
      <table align="center">
        <tr>
          <td><b>ID</b></td>
          <td>
            <input type="number" name="id" required>
          </td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><b>Full Name</b></td>
          <td>
            <input type="text" name="name" required>
          </td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><b>Select Gender</b></td>
          <td>
            Male<input type="radio" name="gender" value="male" required>
            Female<input type="radio" name="gender" value="female" required>
          </td>
        </tr>
        <!-- <tr><td></td></tr>
<tr>
    <td><b>Salary</b></td>
    <td>
        <input type="number" name="salary" required>
    </td>
</tr> -->
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><b>Email Address</b></td>
          <td>
            <input type="text" name="email" required>
          </td>
        </tr>
        <!-- <tr><td></td></tr>
<tr>
    <td><b>Date of Joining</b></td>
    <td>
        <input type="date" name="doj" required placeholder="DD/MM/YYYY">
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Department</b></td>
    <td>
        <select name="dept" required>
        <option>---Select---</option>
        <option value="sales">SALES</option>
         <option value="marketing">MARKETING</option>
        </select>
    </td>
</tr>
<tr><td></td></tr> -->
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
          <td><b>Contact No</b></td>
          <td>
            <input type="number" name="contact" required>
          </td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr align="center">
          <td>
            <input type="submit" value="Register" required class="button">
          </td>
          <td>
            <input type="reset" value="Clear" required class="button">
          </td>
        </tr>
      </table>
    </form>
  </div>

</body>
</html>
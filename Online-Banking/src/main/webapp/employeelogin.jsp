<!DOCTYPE html>
<html>
<head>
<title>EP Project</title>
<link type="text/css"  rel="stylesheet"  href="style.css"/>
<style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url("https://image.lexica.art/full_jpg/d1f4a975-2d0f-4624-a26f-83490b80b8d0");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }


    .card {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
       box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Adjust opacity here */
        background-color: rgba(200, 200, 200, 0.5); /* Adjust background color opacity here */
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

    input[type="email"],
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
    <h2><u>Employee Login</u></h2>
    <form method="post" action="checkemplogin.jsp">
        <table align="center">
            <tr>
                <td><b>Email ID</b></td>
                <td>
                    <input type="email" name="email" required>
                </td>
            </tr>
            <tr>
                <td><b>Password</b></td>
                <td>
                    <input type="password" name="pwd" required>
                </td>
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

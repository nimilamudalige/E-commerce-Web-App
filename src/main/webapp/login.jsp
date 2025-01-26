<%--
  Created by IntelliJ IDEA.
  User: Pasan
  Date: 1/17/2025
  Time: 12:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('assets/online-shop-6401739_1280.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            margin: 0;
            opacity: 80%;
        }
        h2 {
            text-align: center;
            color: #471307;
            font-size: 2rem;
            margin-bottom: 1rem;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-style: oblique;
            font-weight: 800;
        }
        .align {
            width: 370px;
            margin: 100px 80px;
            background-color: #f4ddc5;
            padding: 50px;
            border-radius: 10px;
            box-shadow: #471307 0 0 10px 0;
            opacity: 90%;
            z-index: 1000;
        }
        .btncolour{
            background-color:#471307;
            margin: 4px;
            width: 80px;
        }
        .btncolour:hover{
            background-color:#9e560b;
        }

    </style>
</head>
<body>
<div class="container mt-5 align">
    <h2>WELCOME BACK!!!</h2>

    <form action="login" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
        </div>
        <button type="submit" class="btn btn-primary btncolour">Login</button>
        <a href="register.jsp" class="btn btn-secondary">Register</a>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
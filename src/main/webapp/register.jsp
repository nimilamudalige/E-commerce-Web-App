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
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('assets/Untitled design.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 95vh;
            margin: 0;
            opacity: 80%;
        }

        .align {
            width: 570px;
            margin: 190px 250px;
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
    <h2>Register</h2>
    <form action="register" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="role" class="form-label">Role</label>
            <select class="form-control" id="role" name="role" required>
                <option value="customer">Customer</option>
                <option value="admin">Admin</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary btncolour">Register</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
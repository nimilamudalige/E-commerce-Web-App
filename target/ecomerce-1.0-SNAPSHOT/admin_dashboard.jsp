<%--
  Created by IntelliJ IDEA.
  User: Pasan
  Date: 1/17/2025
  Time: 12:04 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>

        .nav {
            background-color: #471307;
            height: 80px;
        }
        .justify {
            justify-content: space-between;
            margin-left: 600px;
        }
        .letter {
            color: wheat;
            font-weight: 800;
            font-size: 1.8rem;
        }
        .letter2{
            color: wheat;
            font-weight: 600;
            font-size: 1.4rem;
            margin: 0 20px;
        }
        .letter2:hover {
            color: white;
            font-size: 1.3rem;
        }
        .nameAline{
            margin-left: 100px;
        }
        .btncolour{
            background-color:#471307;
        }
        .btncolour:hover{
            background-color: #9e560b;
        }

    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
    <div class="container-fluid nav">
        <a class="navbar-brand letter nameAline" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify " id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link letter2" href="view-product">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link letter2" href="view-category">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link letter2" href="viewOrders">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link letter2" href="viewUsers">Users</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Dashboard Content -->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <div class="card-body">
                    <img src="assets/icons8-product-management-96.png" style="width: 150px; height: 150px;">
                    <h5 class="card-title">Product Management</h5>
                    <p class="card-text">Manage all products, including add, update, and delete options.</p>
                    <a href="view-product" class="btn btn-primary btncolour">Go to Products</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <div class="card-body">
                    <img src="assets/icons8-management-96.png" style="width: 150px; height: 150px;">

                    <h5 class="card-title">Category Management</h5>
                    <p class="card-text">Manage product categories efficiently.</p>
                    <a href="view-category.jsp" class="btn btn-primary btncolour">Go to Categories</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <div class="card-body">
                    <img src="assets/icons8-purchase-order-96.png" style="width: 150px; height: 150px;">
                    <h5 class="card-title">Order Management</h5>
                    <p class="card-text">View and track all customer orders.</p>
                    <a href="view_orders.jsp" class="btn btn-primary btncolour">Go to Orders</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <div class="card-body">
                    <img src="assets/icons8-client-management-96.png" style="width: 150px; height: 150px;">
                    <h5 class="card-title">User Management</h5>
                    <p class="card-text">Activate, deactivate, or view user accounts.</p>
                    <a href="view_users.jsp" class="btn btn-primary btncolour">Go to Users</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3 mt-5">
    <p>&copy; 2025 E-Commerce Application | Admin Panel</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>

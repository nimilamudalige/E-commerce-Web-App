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
    <title>Addmin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <style>
        .dashboard-card {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .dashboard-card:hover {
            transform: translateY(-5px);
        }
        .btncolour{
            background-color:#471307;
        }
        .btncolour:hover{
            background-color:#9e560b;
        }
        .navColour{
            background-color: #471307;
            height: 60px;
        }
        .listLetter{
            font-size: 1.2rem;
            font-weight: 600;
        }
        .title{
            font-size: 2rem;
            font-weight: 800;
            color: wheat;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
    <div class="container-fluid navColour">
        <a class="navbar-brand title" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link listLetter" href="productManage.jsp">Product Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link listLetter" href="categoryManagement.jsp">Category Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link listLetter" href="orderManagement.jsp">Order Management</a>
                </li>
                <li class="nav-item listLetter" >
                    <a class="nav-link" href="userManagement.jsp">User Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link listLetter" href="logout.jsp"><img src="assets/icons8-logout-96.png" style="width:40px; height: 40px"></a>
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
                    <a href="productManage.jsp" class="btn btn-primary btncolour">Go to Products</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <div class="card-body">
                    <img src="assets/icons8-management-96.png" style="width: 150px; height: 150px;">

                    <h5 class="card-title">Category Management</h5>
                    <p class="card-text">Manage product categories efficiently.</p>
                    <a href="categoryManagement.jsp" class="btn btn-primary btncolour">Go to Categories</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <div class="card-body">
                    <img src="assets/icons8-purchase-order-96.png" style="width: 150px; height: 150px;">
                    <h5 class="card-title">Order Management</h5>
                    <p class="card-text">View and track all customer orders.</p>
                    <a href="orderManagement.jsp" class="btn btn-primary btncolour">Go to Orders</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <div class="card-body">
                    <img src="assets/icons8-client-management-96.png" style="width: 150px; height: 150px;">
                    <h5 class="card-title">User Management</h5>
                    <p class="card-text">Activate, deactivate, or view user accounts.</p>
                    <a href="userManagement.jsp" class="btn btn-primary btncolour">Go to Users</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3 mt-5">
    <p>&copy; 2025 E-Commerce Application | Admin Panel</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

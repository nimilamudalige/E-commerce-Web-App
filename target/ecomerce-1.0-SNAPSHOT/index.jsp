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
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .nav-colour {
            background-color: #471307;
            height: 70px;
            margin-bottom: 0;
            padding: 8px;
        }
        .letter{
            font-weight: 800;
            font-size:2rem;
            color: wheat;
            margin-left: 50px;
            margin-right: 800px;

        }
        .letter2 {
            font-weight: 700;
            font-size: 1.2rem;
            color: wheat;
            margin: 10px 10px 10px 10px;
        }
        .letter2:hover{
            color: white;
        }

        .carouselManual{
            height: 90vh;
            margin: 0;

        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid nav-colour">
        <a class="navbar-brand letter">My Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link letter2" href="view-product">Products</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link letter2" href="login.jsp">Customer Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp"><img src="assets/icons8-cart-64.png" style="height: 40px; width: 48px; margin-top: 2px"></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link letter2" href="login.jsp"><img src="assets/icons8-account-48.png"></a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<div id="carouselExampleIndicators" class="carousel slide carouselManual" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner carouselManual">
        <div class="carousel-item active">
            <img src="assets/pexels-solliefoto-298864.jpg" class="d-block w-100" alt="Beautiful scenery">
        </div>
        <div class="carousel-item">
            <img src="assets/pexels-wildlittlethingsphoto-708392.jpg" class="d-block w-100" alt="Nature view">
        </div>
        <div class="carousel-item">
            <img src="assets/pexels-freestocks-291762.jpg" class="d-block w-100" alt="Urban landscape">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
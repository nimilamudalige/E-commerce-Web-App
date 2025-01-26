<%--
  Created by IntelliJ IDEA.
  User: Pasan
  Date: 1/17/2025
  Time: 12:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecomerce.dto.ProductsDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .cardDesign {
            height: 100%;
            width: 70%;
            background-color: #f4ddc5;
            border-radius: 10px;
            margin: 10px;
            padding: 10px;
            box-shadow: 0 4px 8px #471307;
        }

        .navColour{
            background-color: #471307;
        }
        .letter {
            color: wheat;
            font-weight: 800;
            font-size: 1.8rem;
            margin-right: 200px;
            margin-left: 120px;
        }
        .letter2{
            color: wheat;
            font-weight: 600;
            font-size: 1.1rem;
            margin: 0 20px;
        }
        .letter2:hover {
            color: white;
            font-size: 1.3rem;
        }
        .btnadd{
            background-color: #471307;
            color: wheat;
            font-weight: 600;
            font-size: 1.1rem;
            margin: 5px 690px;
        }
        .btnadd:hover{
            background-color: #9e560b;
        }
        .letter3{
            color: #471307;
            font-weight: 600;
            font-size: 2.3rem;
            text-align: center;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid navColour">
        <a class="navbar-brand letter" href="#">Product Management</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link letter2" href="view-product">Products Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link letter2" href="view-category">Category Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link letter2" href="viewOrders">Orders Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link letter2" href="viewUsers">Users</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
  <h1 class="letter3"> My Shop Product List</h1>
<button type="button" class="btn btn-primary btnadd" onclick="window.location.href='add_product.jsp'"><img src="assets/icons8-add-64.png" style="margin-right: 5px" ><br>Add New </button>
<div class="container mt-5">
    <h2>Product List</h2>
    <div class="row">
        <%
            List<ProductsDTO> productList = (List<ProductsDTO>) request.getAttribute("productList");
            if (productList != null && !productList.isEmpty()) {
                for (ProductsDTO product : productList) {
        %>
        <div class="col-md-4">
            <div class="card mb-4 shadow-sm cardDesign">
                <img src="<%= product.getImage_url() %>" class="card-img-top" alt="Product Image">
                <div class="card-body">
                    <h5 class="card-title"><%= product.getName() %></h5>
                    <p class="card-text">Price: $<%= product.getPrice() %></p>
                    <p class="card-text"><%= product.getDescription() %></p>
                    <div class="d-flex justify-content-between align-items-center">
                        <a href="edit-product?product_id=<%= product.getProduct_id() %>" class="btn btn-secondary">Edit Product</a>
                        <form action="delete-product" method="post" style="display:inline;">
                            <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">
                            <button type="submit" class="btn btn-danger " onclick="confirmDelete(1)">
                                <i class="bi bi-trash"></i> Delete
                            </button>
                        </form>
                        <small class="text-muted">Category ID: <%= product.getCategory_id() %></small>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <p>No products found.</p>
        <%
            }
        %>
    </div>
</div>
<script>
    function confirmDelete(productId) {
        if (confirm("Are you sure you want to delete this product?")) {
            window.location.href = 'delete-product?product_id=' + productId;
        }
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
</body>
</html>
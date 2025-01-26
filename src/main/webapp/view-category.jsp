<%--
  Created by IntelliJ IDEA.
  User: Pasan
  Date: 1/17/2025
  Time: 12:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecomerce.dto.CategoryDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    .nav {
        background-color: #471307;
        height: 80px;
    }
    .justify {
        justify-content: space-between;
        margin-left: 500px;
    }
    .letter {
        color: wheat;
        font-weight: 800;
        font-size: 1.7rem;
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
        margin: 20px 690px;
    }
    .btncolour:hover{
        background-color: #9e560b;
    }
    .name{
        align-items: center;
        font-size: 1.2rem;
        font-weight: 800;
    }
    .cardDesign {
        height: 100%;
        width: 70%;
        background-color: #f4ddc5;
        border-radius: 10px;
        margin: 10px;
        padding: 10px;
        padding-left: 20px;
        box-shadow: 0 4px 8px #471307;
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
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
    <div class="container-fluid nav">
        <a class="navbar-brand letter nameAline" href="#">Category Management</a>
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
<h1 class="letter3"> My Shop Product List</h1>

<button type="button" class="btn btn-primary btncolour" onclick="window.location.href='add_category.jsp'"><img src="assets/icons8-add-64.png" style="margin-right: 5px" ><br>Add New</button>
<div class="container mt-5">
    <h2>Category List</h2>
    <div class="row">
        <%
            List<CategoryDTO> categoryList = (List<CategoryDTO>) request.getAttribute("categoryList");
            if (categoryList != null && !categoryList.isEmpty()) {
                for (CategoryDTO category : categoryList) {
        %>
        <div class="col-md-4">
            <div class="card mb-4 shadow-sm cardDesign">
                <div class="card-body">
                    <h5 class="card-title name"><%= category.getName() %></h5>
                    <p class="card-text name"><%= category.getDescription() %></p>
                    <div class="d-flex justify-content-center align-items-center">
                        <a href="edit-category?id=<%= category.getCategory_id() %>" class="btn btn-warning">Edit</a>
                        <a href="delete-category?id=<%= category.getCategory_id() %>" class="btn btn-danger"onclick="confirmDelete(<%=category.getCategory_id()%>)">Delete</a>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <p>No categories found.</p>
        <%
            }
        %>
    </div>
</div>
<script>
    function confirmDelete(categoryId) {
        if (confirm("Are you sure you want to delete this category?")) {
            window.location.href = 'delete-category?id=' + categoryId;
        }
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Pasan
  Date: 1/17/2025
  Time: 12:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecomerce.dto.UserDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<%--    <link rel="stylesheet" type="text/css" href="css/style.css">--%>
    <style>
        /* Basic table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: auto; /* Allows columns to resize based on content */
            margin: 20px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for a modern look */
        }

        th, td {
            padding: 12px 15px; /* More padding for a spacious feel */
            text-align: left;
            font-size: 16px;
            transition: all 0.3s ease; /* Smooth transition for hover effects */
        }

        th {
            background-color: #4CAF50; /* Green background for headers */
            color: white;
            font-weight: bold;
        }

        /* Row hover effect */
        tr:hover {
            background-color: #f1f1f1; /* Light gray on hover for rows */
            transform: translateY(-2px); /* Slight lifting effect */
        }

        /* Striped rows */
        tr:nth-child(odd) {
            background-color: #f9f9f9; /* Light background for odd rows */
        }

        /* Alternate row colors for better readability */
        tr:nth-child(even) {
            background-color: #ffffff; /* White for even rows */
        }

        /* Fixing table header on scroll */
        thead {
            position: sticky;
            top: 0;
            z-index: 1;
            background-color: #4CAF50;
            color: white;
        }

        /* Adding borders to table cells */
        table, th, td {
            border: 1px solid #ddd; /* Subtle border color */
        }

        /* Add responsive styles for smaller screens */
        @media (max-width: 768px) {
            table {
                font-size: 14px; /* Slightly smaller font on smaller screens */
            }
            th, td {
                padding: 10px; /* Reduced padding for better fit */
            }
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">E-Commerce</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="view-product">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="category.jsp">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewOrders">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewUsers">Users</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <h1>User List</h1>
    <%
        List<UserDTO> userDataList = (List<UserDTO>) request.getAttribute("userList");
        if (userDataList != null && userDataList.size() > 0){
    %>
    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Is_Admin</th>
            <th>Active</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (UserDTO user : userDataList){
        %>
        <tr>
            <td><%= user.getUser_id() %></td>
            <td><%= user.getUser_name() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getIs_admin() %></td>
            <td><%= user.getActive() %></td>
            <td>
                <form action="updateUserStatus" method="post">
                    <input type="hidden" name="user_id" value="<%= user.getUser_id() %>">
                    <input type="hidden" name="is_active" value="<%= user.getActive() == 1 ? 0 : 1 %>">
                    <button type="submit" class="btn btn-primary"><%= user.getActive() == 1 ? "Deactivate" : "Activate" %></button>
                </form>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <%
    } else {
    %>
    <p>No users found.</p>
    <%
        }
    %>
</div>
</body>
</html>
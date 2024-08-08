
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty sessionScope.email}">
    <% response.sendRedirect("index.jsp"); %>
</c:if>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Custom styles for admin page */
        body {
            background-color: #f8f9fa;
        }
        .admin-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Make the container fill the entire viewport height */
        }
    </style>
</head>
<body>

<div class="container admin-container">
    <div class="jumbotron text-center">
        <h1 class="display-4">Admin Dashboard</h1>
        <p class="lead">Welcome to the admin dashboard.</p>
         <a href="index.jsp" class="btn btn-danger">Logout</a> 
    </div>
</div>

<!-- Bootstrap JS and Font Awesome JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

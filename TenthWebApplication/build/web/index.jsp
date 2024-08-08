<%-- 
    Document   : index
    Created on : 15-Mar-2024, 9:59:36 AM
    Author     : 91942
--%>

<%@page import="java.sql.ResultSet, java.sql.PreparedStatement, java.sql.DriverManager, java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CURD Operations</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f5f5f5;
                color: #607d8b;
                margin: 0;
            }

            .container {
                display: flex;
                align-items: stretch;
            }

            .content {
                flex-grow: 1; 
                padding: 20px;
                text-align: left; 
            }

            .edit-link i,
            .delete-link i {
                color: #607d8b; 
                transition: color 0.3s;
            }

            .edit-link:hover i,
            .delete-link:hover i {
                color: #41545e; 
            }

            .menu-bar {
                background-color: #607d8b;
                color: #fff;
                flex: 0 0 200px;
                padding: 20px;
            }

            .menu-bar h1 {
                color: #fff; 
            }

            .menu-bar a {
                color: #fff; 
                display: block;
                text-decoration: none;
                padding: 10px;
                margin-bottom: 10px;
                transition: background-color 0.3s;
            }

            .menu-bar a:hover {
                background-color: #455a64;
            }


            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                padding: 10px;
                border-bottom: 1px solid #ccc;
            }

            th {
                background-color: #f2f2f2;
                color: #607d8b;
            }

            td {
                background-color: #fff;
            }

            .menu-bar a i.fa-edit {
                color: #607d8b !important;
            }

            .menu-bar a:hover i.fa-edit {
                color: #228b22 !important;
            }

            .menu-bar a i.fa-trash-alt {
                color: #607d8b !important;
            }

            .menu-bar a:hover i.fa-trash-alt {
                color: #ee4b2b !important;
            }

        </style>
    </head>
    <body>
        <div class="menu-bar">
            <h1>Menu</h1><br>
            <il>
                <h3>Book Manage</h3>
                <ul> <a href="showBook.jsp">Show Book</a></ul>
                <ul> <a href="addBook.jsp">Add Book</a></ul>
                <ul> <a href="searchBook.jsp">Search Book</a></ul>
            </il><br>
            <il>
                <h3>Catalogue Manage</h3>
                <ul> <a href="showCatalogue.jsp">Show Catalogue</a></ul>
                <ul> <a href="addCatalogue.jsp">Add Catalogue</a></ul>
                <ul> <a href="searchCatalogue.jsp">Search Catalogue</a></ul>
            </il>
        </div>
    </body>
</html>


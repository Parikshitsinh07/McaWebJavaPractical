<%-- 
    Document   : ShowBook
    Created on : 15-Mar-2024, 9:59:36 AM
    Author     : 91942
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Show Book</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                margin: 0;
                padding: 0;
            }

            .container {
                display: flex;
                align-items: stretch;
            }

            .menu-bar {
                background-color: #607d8b;
                color: #fff;
                padding: 20px;
                margin-right: 20px;
            }

            .menu-bar a {
                display: block;
                color: #fff;
                text-decoration: none;
                margin-bottom: 10px;
            }

            .menu-bar a:hover {
                background-color: #455a64;
            }

            .content {
                background-color: #fff;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                margin: auto;
                padding: 30px;
                max-width: 1000px;
                border-radius: 5px;
            }

            h1 {
                color: #607d8b;
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

            .menu-bar a i.fa-edit {
                color: #607d8b !important;
            }

            .menu-bar a:hover i.fa-edit {
                color: #ee4b2b !important;
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
        <div class="container">
            <jsp:include page="index.jsp" />
            <div class="content">
                <h1>Book Details</h1><br>
                <table>
                    <thead>
                        <tr>
                            <th>Book Id</th>
                            <th>Catalogue Id</th>
                            <th>Book Title</th>
                            <th>Author Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>ISBN No</th>
                            <th>Publisher</th>
                            <th>Edition Year</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    
                <tbody>
                        <%
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parikshit_20", "root", "");
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("SELECT * FROM book");

                                while (rs.next()) {
                                    String bookId = rs.getString("bookId");
                                    String catalogueId = rs.getString("catalogueId");
                                    String title = rs.getString("title");
                                    String author = rs.getString("author");
                                    String price = rs.getString("price");
                                    String quantity = rs.getString("quantity");
                                    String ISBN = rs.getString("ISBN");
                                    String publisher = rs.getString("publisher");
                                    String editionYear = rs.getString("editionYear");
                        %>
                       
                            <td><%= bookId%></td>
                            <td><%= catalogueId%></td>
                            <td><%= title%></td>
                            <td><%= author%></td>
                            <td><%= price%></td>
                            <td><%= quantity%></td>
                            <td><%= ISBN%></td>
                            <td><%= publisher%></td>
                            <td><%= editionYear%></td>
                            <td><a href="updateBook.jsp?id=<%= bookId%>" class="edit-link"><i class="fas fa-edit"></i></a></td>
                            <td><a href="#" class="delete-link" onclick="showConfirmation('<%= bookId%>')"><i class="fas fa-trash-alt"></i></a></td>
                        </tr>
                        <%
                                }
                                rs.close();
                                stmt.close();
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
            </table>
        </div>
    </div>
                <script>
            function showConfirmation(bookId) {
                var confirmDelete = confirm("Are you sure you want to delete this book?");
                if (confirmDelete) {
                    window.location.href = "deleteBook.jsp?id=" + bookId;
                }
            }
        </script>
        
</body>
</html>
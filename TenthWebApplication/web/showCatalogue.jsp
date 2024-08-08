<%-- 
    Document   : showCatalogue
    Created on : 15-Mar-2024, 9:59:36 AM
    Author     : 91942
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Catalogue</title>
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
                justify-content: center;
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
                <h1>Catalogue Details</h1><br>
                <table>
                    <thead>

                        <tr>
                            <th>Catalogue Id</th>
                            <th>Catalogue Title</th>
                            <th>Description</th>
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
                                ResultSet rs = stmt.executeQuery("SELECT * FROM catalogue");

                                while (rs.next()) {
                                    String catalogueId = rs.getString("catalogueId");
                                    String title = rs.getString("title");
                                    String description = rs.getString("description");
                        %>
                        <tr>
                            <td><%= catalogueId%></td>
                            <td><%= title%></td>
                            <td><%= description%></td>
                            <td><a href="updateCatalogue.jsp?id=<%= catalogueId%>" class="edit-link"><i class="fas fa-edit"></i></a></td>
                            <td><a href="#" class="delete-link" onclick="showConfirmation('<%= catalogueId%>')"><i class="fas fa-trash-alt"></i></a></td>
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
            function showConfirmation(catalogueId) {
                var confirmDelete = confirm("Are you sure you want to delete this catalogue?");
                if (confirmDelete) {
                    window.location.href = "deleteCatalogue.jsp?id=" + catalogueId;
                }
            }
        </script>
    </body>
</html>
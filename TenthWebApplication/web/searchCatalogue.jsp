<%-- 
    Document   : searchCatalogue
    Created on : 15-Mar-2024, 9:59:36 AM
    Author     : 91942
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String searchKey = request.getParameter("searchKey");
    String searchKeyword = request.getParameter("searchKeyword");

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parikshit_20", "root", "");

        if (searchKey != null && searchKeyword != null) {
            String sql = "";
            if ("catalogue_id".equals(searchKey)) {
                sql = "SELECT * FROM catalogue WHERE catalogueId LIKE ?";
            } else if ("catalogue_title".equals(searchKey)) {
                sql = "SELECT * FROM catalogue WHERE title LIKE ?";
            } else if ("catalogue_description".equals(searchKey)) {
                sql = "SELECT * FROM catalogue WHERE description LIKE ?";
            }

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + searchKeyword + "%");
            rs = stmt.executeQuery();
        }
%>
<!DOCTYPE html>
<html>
<head>
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

            input {
                width: 80%;
                padding: 10px;
                margin-top: 20px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                display: none; 
            }

            .custom-radio {
                display: inline-block;
                margin-right: 20px;
                margin-bottom: 10px;
            }

            .custom-radio input[type="radio"] {
                position: relative;
                display: inline-block;
                width: 20px;
                height: 20px;
                border: 2px solid #666;
                border-radius: 50%;
                cursor: pointer;
                vertical-align: middle;
            }

            .custom-radio input[type="radio"]:checked + .radio-icon {
                background-color: #202c40;
            }

            .custom-radio label {
                margin-left: 5px;
                vertical-align: middle;
                color: #607d8b;
                font-size: 16px;
            }
            button {
                color: #607d8b;
                background: #fff;
                cursor: pointer;
                font-size: 24px;
                border: none;
                display: none;
            }

            button i.fa-search {
                font-size: 30px;
                color: #607d8b;
            }

            button:hover i.fa-search {
                color: #384951 !important; 
            }

        </style>
    <script>
        function showSearch() {
            var input = document.getElementById("searchInput");
            var button = document.getElementById("searchButton");
            input.style.display = "inline-block";
            button.style.display = "inline-block";
        }
    </script>
</head>
<body>
    <div class="container">
        <jsp:include page="index.jsp" />
        <div class="content">
            <h1>Search Catalogue</h1>
            <form action="#" method="post">
                <div class="custom-radio">
                    <input type="radio" id="catalogue_id" value="catalogue_id" name="searchKey" onclick="showSearch()"> 
                    <span class="radio-icon"></span> 
                    <label for="catalogue_id">Catalogue Id</label>
                </div>
                <div class="custom-radio">
                    <input type="radio" id="catalogue_title" value="catalogue_title" name="searchKey" onclick="showSearch()"> 
                    <span class="radio-icon"></span> 
                    <label for="catalogue_title">Catalogue Title</label>
                </div>
                <div class="custom-radio">
                    <input type="radio" id="catalogue_description" value="catalogue_description" name="searchKey" onclick="showSearch()"> 
                    <span class="radio-icon"></span> 
                    <label for="catalogue_description">Catalogue Description</label>
                </div>
                <input type="text" id="searchInput" name="searchKeyword" placeholder="Enter keyword to search...">
                <button type="submit" id="searchButton"><i class="fas fa-search"></i></button>
            </form>
            <table>
                <thead>
                    <tr>
                        <th>Catalogue Id</th>
                        <th>Catalogue Title</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        while (rs != null && rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("catalogueId") %></td>
                        <td><%= rs.getString("title") %></td>
                        <td><%= rs.getString("description") %></td>
                    </tr>
                    <% 
                        } 
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
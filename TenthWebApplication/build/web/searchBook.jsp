<%-- 
    Document   : searchBook
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
            if ("book_id".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE bookId LIKE ?";
            } else if ("catalogue_id".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE catalogueId LIKE ?";
            } else if ("book_title".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE title LIKE ?";
            } else if ("author_name".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE author LIKE ?";
            } else if ("price".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE price LIKE ?";
            } else if ("quantity".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE quantity LIKE ?";
            } else if ("isbn_no".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE ISBN LIKE ?";
            } else if ("publisher".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE publisher LIKE ?";
            } else if ("edition_year".equals(searchKey)) {
                sql = "SELECT * FROM book WHERE editionYear LIKE ?";
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
            margin-right: 8px;
            margin-bottom: 10px;
        }

        .custom-radio input[type="radio"] {
            position: relative;
            display: inline-block;
            width: 18px;
            height: 18px;
            border: 2px solid #666;
            border-radius: 50%;
            cursor: pointer;
            vertical-align: middle;
        }

        .custom-radio input[type="radio"]:checked + .radio-icon {
            background-color: #202c40;
        }

        .custom-radio label {
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
            <h1>Search Book</h1>
            <form action="#" method="post">
                 <div class="custom-radio">
                        <input type="radio" id="book_id" value="book_id" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="book_id">Book Id</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="catalogue_id" value="catalogue_id" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="catalogue_id">Catalogue Id</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="book_title" value="book_title" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="book_title">Book Title</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="author_name" value="author_name" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="author_name">Author Name</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="price" value="price" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="price">Price</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="quantity" value="quantity" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="quantity">Quantity</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="isbn_no" value="isbn_no" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="isbn_no">ISBN No</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="publisher" value="publisher" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="publisher">Publisher</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="edition_year" value="edition_year" name="searchKey" onclick="showSearch()">
                        <span class="radio-icon"></span>
                        <label for="edition_year">Edition Year</label>
                    </div>
                    <input type="text" id="searchInput" name="searchKeyword" placeholder="Enter data to search...">
                    <button type="submit" id="searchButton"><i class="fas fa-search"></i></button>
                </form>
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
                    </tr>
                </thead>
                <tbody>
                    <% 
                        while (rs != null && rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("bookId") %></td>
                        <td><%= rs.getString("catalogueId") %></td>
                        <td><%= rs.getString("title") %></td>
                        <td><%= rs.getString("author") %></td>
                        <td><%= rs.getString("price") %></td>
                        <td><%= rs.getString("quantity") %></td>
                        <td><%= rs.getString("ISBN") %></td>
                        <td><%= rs.getString("publisher") %></td>
                        <td><%= rs.getString("editionYear") %></td>
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
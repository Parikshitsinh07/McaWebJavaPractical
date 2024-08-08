<%-- 
    Document   : UpdateBook
    Created on : 15-Mar-2024, 9:59:36 AM
    Author     : 91942
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Book</title>
        <style>
            body {
                font-family: Calibri, sans-serif; 
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
                max-width: 700px;
                border-radius: 5px;
            }

            h1 {
                color: #607d8b;
            }

            label {
                font-size: 18px;
                color: #607d8b;
                display: block;
                margin-top:5px;
                margin-bottom: 5px;
            }

            input, textarea, select {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            button {
                width: 100%;
                background-color: #607d8b;
                color: white;
                padding: 14px 20px;
                margin-top: 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
                font-weight: bold;
            }

            button:hover {
                background-color: #78909c;
            }
        </style>
             <script>
            function validateForm() {
                var catalogueId = document.getElementById("catalogueId").value;
                var authorName = document.getElementById("authorName").value.trim();
                var isbn = document.getElementById("isbn").value.trim();
                var publisher = document.getElementById("publisher").value.trim();
                var title = document.getElementById("bookTitle").value.trim();
                var price = document.getElementById("price").value.trim();
                var quantity = document.getElementById("quantity").value.trim();
                var editionYear = document.getElementById("editionYear").value.trim();

                var alphabetRegex = /^[A-Za-z\s]+$/;
                var alphanumericRegex = /^[0-9a-zA-Z]+$/;
                var priceRegex = /^\d+(\.\d{1,2})?$/;
                var quantityRegex = /^[1-9]\d*$/;
                var yearRegex = /^\d{4}$/;
                var isbnRegex = /^\d{13}$/; 

                if (catalogueId === "") {
                    alert("Please select a catalogue");
                    return false;
                }

                if (title === "") {
                    alert("Title cannot be empty");
                    return false;
                }

                if (!authorName.match(alphabetRegex)) {
                    alert("Author name must contain only alphabets");
                    return false;
                }

                if (!price.match(priceRegex)) {
                    alert("Price must be a valid number");
                    return false;
                }

                if (!quantity.match(quantityRegex)) {
                    alert("Quantity must be a positive integer");
                    return false;
                }

                if (!isbn.match(isbnRegex)) {
                    alert("ISBN must be in valid format");
                    return false;
                }

                if (!publisher.match(alphabetRegex)) {
                    alert("Publisher must contain only alphabets");
                    return false;
                }

                if (!editionYear.match(yearRegex)) {
                    alert("Edition year must be a valid 4-digit year");
                    return false;
                }

                var currentYear = new Date().getFullYear();
                if (parseInt(editionYear) > currentYear) {
                    alert("Edition year cannot be in the future");
                    return false;
                }

                return true;
            }
        </script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="index.jsp" />

            <div class="content">
                <h1>Update Book</h1>
                <%
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parikshit_20", "root", "");
                        String bookIdParam = request.getParameter("id");
                        if (bookIdParam != null && !bookIdParam.isEmpty()) {
                            int bookId = Integer.parseInt(bookIdParam);
                            String query = "SELECT * FROM book WHERE bookId = ?";
                            pstmt = conn.prepareStatement(query);
                            pstmt.setInt(1, bookId);
                            rs = pstmt.executeQuery();
                            if (rs.next()) {
                                String booktitle = rs.getString("title");
                                String authorName = rs.getString("author");
                                String price = rs.getString("price");
                                String quantity = rs.getString("quantity");
                                String isbn = rs.getString("isbn");
                                String publisher = rs.getString("publisher");
                                String editionYear = rs.getString("editionYear");
                %>
                <form action="modifyBook.jsp" method="post" onsubmit="return validateForm()" style="margin-top: 40px;">
                    <input type="hidden" name="bookId" value="<%= bookId%>">

                    <label for="catalogueId">Catalogue</label>
                    <select name="catalogueId" id="catalogueId">
                        <%
                            Statement stmt = conn.createStatement();
                            ResultSet catalogueRs = stmt.executeQuery("SELECT * FROM catalogue");
                            while (catalogueRs.next()) {
                                String id = catalogueRs.getString("catalogueId");
                                String title = catalogueRs.getString("title");
                                if (id.equals(id)) {
                        %>
                        <option value="<%= id%>" selected><%= title%></option>
                        <%
                        } else {
                        %>
                        <option value="<%= id%>"><%= title%></option>
                        <%
                                }
                            }
                            catalogueRs.close();
                            stmt.close();
                        %>
                    </select>

                    <label for="bookTitle">Title</label>
                    <input type="text" id="bookTitle" name="bookTitle" value="<%= booktitle%>"><br>

                    <label for="authorName">Author</label>
                    <input type="text" id="authorName" name="authorName" value="<%= authorName%>"><br>

                    <label for="price">Price</label>
                    <input type="text" id="price" name="price" value="<%= price%>"><br>

                    <label for="quantity">Quantity</label>
                    <input type="text" id="quantity" name="quantity" value="<%= quantity%>"><br>

                    <label for="isbn">ISBN</label>
                    <input type="text" id="isbn" name="isbn" value="<%= isbn%>"><br>

                    <label for="publisher">Publisher</label>
                    <input type="text" id="publisher" name="publisher" value="<%= publisher%>"><br>

                   <label for="editionYear">Edition Year</label>
                    <input type="text" id="editionYear" name="editionYear" value="<%= editionYear%>"><br>

                    <button type="submit">Update Book</button>
                </form>
                <% }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) {
                            rs.close();
                        }
                        if (pstmt != null) {
                            pstmt.close();
                        }
                        if (conn != null) {
                            conn.close();
                        }
                    }
                %>
            </div>
        </div>
    </body>
</html>


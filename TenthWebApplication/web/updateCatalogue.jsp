<%-- 
    Document   : updateCatalogue
    Created on : 15-Mar-2024, 9:59:36 AM
    Author     : 91942
--%>

<%@page import="java.sql.*, java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Catalogue</title>
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
                margin-top: 5px;
                margin-bottom: 5px;
            }

            input, textarea {
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
                var catalogueTitle = document.getElementById("catalogueTitle").value;
                var catalogueDescription = document.getElementById("catalogueDescription").value;

                if (catalogueTitle.trim() === "") {
                    alert("Catalogue Title cannot be empty");
                    return false;
                }

                if (catalogueDescription.trim() === "") {
                    alert("Catalogue Description cannot be empty");
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
                <h1>Update Catalogue</h1>
                <%
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parikshit_20", "root", "");

                        String catalogueIdParam = request.getParameter("id");
                        if (catalogueIdParam != null && !catalogueIdParam.isEmpty()) {
                            int catalogueId = Integer.parseInt(catalogueIdParam);
                            String query = "SELECT * FROM catalogue WHERE catalogueId = ?";
                            pstmt = conn.prepareStatement(query);
                            pstmt.setInt(1, catalogueId);
                            rs = pstmt.executeQuery();

                            if (rs.next()) {
                                String catalogueTitle = rs.getString("title");
                                String catalogueDescription = rs.getString("description");
                %>
                <form action="modifyCatalogue.jsp" method="post" onsubmit="return validateForm()" style="margin-top: 40px;">
                    <input type="hidden" name="catalogueId" value="<%= catalogueId%>">
                    <label for="catalogueTitle">Catalogue Title</label>
                    <input type="text" id="catalogueTitle" name="catalogueTitle" value="<%= catalogueTitle%>"><br>
                    <label for="catalogueDescription">Catalogue Description</label>
                    <textarea id="catalogueDescription" name="catalogueDescription" rows="4"><%= catalogueDescription%></textarea><br>
                    <button type="submit">Update Catalogue</button>
                </form>
                <%
                            }
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

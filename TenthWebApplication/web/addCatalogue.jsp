<%-- 
    Document   : addCatalogue
    Created on : 15-Mar-2024, 9:59:36 AM
    Author     : 91942
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Catalogue</title>
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

                <h1>Add Catalogue</h1>
                <form action="insertCatalogue.jsp" method="post" onsubmit="return validateForm()"  style="margin-top: 40px;">
                    <label for="catalogueTitle">Catalogue Title</label>
                    <input type="text" id="catalogueTitle" name="catalogueTitle"><br>
                    
                    <label for="catalogueDescription">Catalogue Description</label>
                    <textarea id="catalogueDescription" name="catalogueDescription" rows="4"></textarea><br>

                    <button type="submit">Add Catalogue</button>
                </form>
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : index
    Created on : 10-Mar-2024, 1:52:19 PM
    Author     : 91942
--%>

<%@ page import="classes.Medicine" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Medicine</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                margin: 0;
                padding: 0;
            }

            .container {
                margin-top: 100px;
                display: flex;
                align-items: stretch;
                justify-content: center;
            }

            .content {
                background-color: #fff;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                margin: auto;
                padding: 30px;
                max-width: 1000px;
                border-radius: 5px;
            }

            .h1content {
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100px;
                background-color: #607d8b;
                color: #f5f5f5;
                padding: 10px;
                text-align: center;
                margin-bottom: 20px;
                border-radius: 5px;
            }

            table {
                margin-top: 25px;
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
                font-size: 20px;
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
            <div class="content">
                <h1 class="h1content">Search Medicine</h1>

                <form action="searchMedicine.htm" method="post">
                    <center>
                        <div class="custom-radio">
                            <input type="radio" id="medicine_name" value="medicine_name" name="searchmedicine"
                                   onclick="showSearch()"> <span class="radio-icon"></span> <label
                                   for="medicine_name">Medicine Name</label>
                        </div>
                        <div class="custom-radio">
                            <input type="radio" id="manufacturer_name" value="manufacturer_name" name="searchmedicine"
                                   onclick="showSearch()"> <span class="radio-icon"></span> <label
                                   for="manufacturer_name">Manufacturer Name</label>
                        </div>
                    </center>

                    <input type="text" id="searchInput" name="searchKeyword" placeholder="Enter keyword to search...">
                    <button type="submit" id="searchButton"><i class="fas fa-search"></i></button>

                </form>

                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Medicine Name</th>
                            <th>Medicine Details</th>
                            <th>Manufacturer Name</th>
                            <th>Batch No</th>
                            <th>Manufacturing Date</th>
                            <th>Expiry Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty medicineList}">
                                <tr>
                                    <td colspan="7" style="text-align: center;">No medicine available</td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="medicine" items="${medicineList}">
                                    <tr>
                                        <td>${medicine.medicineId}</td>
                                        <td>${medicine.medicineName}</td>
                                        <td>${medicine.medicineDetails}</td>
                                        <td>${medicine.manufacturerName}</td>
                                        <td>${medicine.batchNo}</td>
                                        <td>${medicine.manufacturingMonthYear}</td>
                                        <td>${medicine.expiryMonthYear}</td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>

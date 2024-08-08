<%-- 
    Document   : calculate
    Created on : 10-Mar-2024, 7:16:31 PM
    Author     : 91942
--%>

<%@page import="com.eleventhapplication.CalculatorBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:useBean id="calculator" class="com.eleventhapplication.CalculatorBean" />


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Calculator Result</title>
        <style>
            body {
                font-family: 'Roboto', sans-serif; /* Change font family */
                color: #333; /* Change text color */
            }
            .container {
                max-width: 400px;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #f9f9f9;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }
            h1 {
                text-align: center;
                color: #333;
            }
            table {
                width: 100%;
            }
            table td {
                padding: 10px;
            }
            .custom-radio {
                display: flex;
                align-items: center;
            }
            .custom-radio input[type="radio"] {
                display: none;
            }
            .custom-radio label {
                display: inline-block;
                width: 30px;
                height: 30px;
                line-height: 30px;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 50%;
                cursor: pointer;
            }
            .custom-radio input[type="radio"]:checked + label {
                background-color: #4caf50;
                color: white;
            }
            .btn-container {
                text-align: center;
            }
            .btn-container button {
                padding: 10px 20px;
                background-color: #4caf50;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }
            .btn-container button:hover {
                background-color: #45a049;
            }
            .error-message {
                color: red;
                font-size: 14px;
                margin-top: 5px;
            }
            #result {
                font-size: 18px;
                font-weight: bold;
            }
        </style>
        <script>
            function validateForm() {
                var num1 = document.getElementById("num1").value;
                var num2 = document.getElementById("num2").value;
                var operation = document.getElementById("operation").value;

                if (isNaN(num1) || isNaN(num2)) {
                    alert("Please enter valid numeric values.");
                    return false;
                }

                if (operation === "") {
                    alert("Please select an operation.");
                    return false;
                }

                return true;
            }
        </script>
    </head>
    <body>
        <div class="container">
            <h1>Calculator Result</h1>
            <form>
                <table>
                    <tr>
                        <td><label for="firstvalue">Enter first value</label></td>
                        <td><input type="text" id="firstvalue" name="firstnumber" value="<%= (request.getParameter("firstnumber") != null) ? request.getParameter("firstnumber") : ""%>" readonly></td>
                    </tr>
                    <tr>
                        <td><label>Select operation</label></td>
                        <td>
                            <div class="custom-radio">
                                <input type="radio" id="addition" value="+" name="operation" <%= (request.getParameter("operation") != null && request.getParameter("operation").equals("addition")) ? "checked" : ""%> disabled>
                                <label class="radio-label <%= (request.getParameter("operation") != null && request.getParameter("operation").equals("addition")) ? "selected" : ""%>" for="addition">+</label>
                            </div>
                            <div class="custom-radio">
                                <input type="radio" id="substraction" value="*" name="operation" <%= (request.getParameter("operation") != null && request.getParameter("operation").equals("substraction")) ? "checked" : ""%> disabled>
                                <label class="radio-label <%= (request.getParameter("operation") != null && request.getParameter("operation").equals("substraction")) ? "selected" : ""%>" for="substraction">-</label>
                            </div>
                            <div class="custom-radio">
                                <input type="radio" id="multiplication" value="*" name="operation" <%= (request.getParameter("operation") != null && request.getParameter("operation").equals("multiplication")) ? "checked" : ""%> disabled>
                                <label class="radio-label <%= (request.getParameter("operation") != null && request.getParameter("operation").equals("multiplication")) ? "selected" : ""%>" for="multiplication">×</label>
                            </div>
                            <div class="custom-radio">
                                <input type="radio" id="division" value="/" name="operation" <%= (request.getParameter("operation") != null && request.getParameter("operation").equals("division")) ? "checked" : ""%> disabled>
                                <label class="radio-label <%= (request.getParameter("operation") != null && request.getParameter("operation").equals("division")) ? "selected" : ""%>" for="division">÷</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="secondvalue">Enter second value</label></td>
                        <td><input type="text" id="secondnumber" name="secondnumber" value="<%= (request.getParameter("secondnumber") != null) ? request.getParameter("secondnumber") : ""%>" readonly></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <div class="btn-container">
                                <%
                                    if (request.getParameter("firstnumber") != null && request.getParameter("secondnumber") != null && request.getParameter("operation") != null) {
                                        try {
                                            double firstNumber = Double.parseDouble(request.getParameter("firstnumber"));
                                            double secondNumber = Double.parseDouble(request.getParameter("secondnumber"));
                                            String operation = request.getParameter("operation");

                                            calculator.setNumber1(firstNumber);
                                            calculator.setNumber2(secondNumber);
                                            calculator.setOperation(operation);

                                            double result = calculator.calculateResult();
                                            String resultFormate = String.format("%.2f", result);

                                %>
                                <p>RESULT : <%= resultFormate%></p>
                                <%
                                        } catch (NumberFormatException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                %>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>

        </div>
    </body>
</html>

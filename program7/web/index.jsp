<%-- 
    Document   : index
    Created on : 27-Mar-2024, 9:46:25 pm
    Author     : Maulik Parmar
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <style>
    body {
        background-color: #f2f2f2;
        font-family: "Helvetica";
    }
    .container {
        max-width: 300px; 
        padding: 50px;
        margin: 100px auto; 
        background-color: #fff;
        border-radius: 15px; 
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
    }
    .form-group {
        margin-bottom: 20px;
    }

    .form-group input {
        width: 100%; 
        font-size: 18px; 
        margin-top: 10px; 
        margin-bottom: 20px;
        padding: 12px; 
        border: 2px solid #ccc; 
        border-radius: 5px;
    }
    .btn {
        display: block;
        width: 100%;
        height: 50px;
        padding: 10px;
        font-size: 20px;
        background-color: #1976D2;
        color: #fff;
        border: none;
        border-radius: 10px;
        cursor: pointer;
    }
    .btn:hover {
        background-color:  #78909c;
    }

</style>
    <script>
        function validate() {
            var userName = document.getElementById('userName').value;
            var alphaPattern = /^[a-zA-Z]+$/;

            if (!alphaPattern.test(userName)) {
                alert("Please enter a name");
                return false;
            }
            return true;
        }
    </script>

</head>

    <div class="container">
        <form id="loginForm" action="user.jsp" method="POST" onsubmit="return validate()">
            <div class="form-group">
                
                <input type="text" id="userName" name="userName" placeholder="Enter Your Name">
            </div>
            <button type="submit" class="btn">Go</button>
        </form>
    </div>
    
    
         <% session.setAttribute("count", 0); %>




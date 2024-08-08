<%-- 
    Document   : index
    Created on : 13 Feb, 2024, 10:05:29 PM
    Author     : vaidik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div{
		width:255px;
		margin:70px auto;
            }
            
        </style>
    </head>
    
    <body>
        
        <form action="RequestHeaderServlet" method="post" onsubmit="return validateForm()">
            <div class= "User">
                <h1>Welcome</h1>
		<label for="User">User Name:</label>
                <input type="text" placeholder="Enter Your Name" Name="User" class= "User"/><br>
                <input type="submit" value="Show Result" name="set">
            </div>
        
    </form>
    </body>
    
</html>

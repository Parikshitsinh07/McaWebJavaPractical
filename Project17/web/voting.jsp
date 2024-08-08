<%-- 
    Document   : voting
    Created on : 14 Apr, 2024, 11:38:37 PM
    Author     : Hetvi Dasadiya
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#1d415e">
        <% String nm=request.getParameter("snm");%>
        <h1 style="text-align:center;color:white">welcome to voting page </h1>
       <h1 style="text-align:center;color:white"><%=nm%></h1>
    </body>
</html>
<%-- 
    Document   : display_data
    Created on : 14 Apr, 2024, 11:39:10 PM
    Author     : Hetvi Dasadiya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
         body{
                  font-family: sans-serif;
            }
           label{
                  
                  width:100%;
                  margin-top:10px;
                  margin-bottom:5px;
                  font-style: bold;
                  color: #555;
            }
            input{
                
                width:100%;
                padding: 10px;
                border:1px solid #ddd;
                border-radius:5px;
             }
             .main{
                border:1px solid #ddd;
                border-radius:5px;
                width:500px;
                margin-bottom:50px;
                margin-right: 50px;
                margin-left: 350px;
                margin-top:120px;
                background-color:white;
                height: 420px;
             }
             button
            {
                 border-radius: 10px; 
                 margin-top: 15px;
                 width:100%;
                 padding:10px;
                 background-color:#1d415e;
                 color:white;
             }
             
           table{
                margin-top:20%;
                margin-bottom:20%;
                width:300px;
              }
        </style>
    </head>
   <body style="background-color:#1d415e">
       <c:set var="id" value="${param.sid}"/>
       <c:set var="snm" value="${param.snm}"/>   
       <c:set var="age" value="${param.age}"/>     
      
        <div class="main">
           
                <table align="center">
                <tr>
                    <td><label>Student id</label></td>
                    <td>${param.sid}</td>
                </tr>
                
                <tr>
                    <td><label>Student name</label></td>
                    <td><label>${param.snm}</label></td>
                </tr>
                
                 <tr>
                    <td><label>Age</label></td>
                    <td>
                      <label>${param.age}</label>
                    </td>
                </tr>
                      <c:choose>
                            <c:when test="${age>=18}">
                                <c:redirect url="voting.jsp">
                                      <c:param name="id" value="${id}"/>
                                      <c:param name="snm" value="${snm}"/>
                        
                                </c:redirect>
                            </c:when>
                                <c:otherwise>
                                    <tr><td colspan="2"><label style="text-align:center">  you are not eligible for voting</label></td></tr>
                                </c:otherwise>
                        </c:choose>
                </table>
          
        </div>
          
    </body>
</html>

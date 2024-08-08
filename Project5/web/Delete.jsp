<%-- 
    Document   : Delete
    Created on : 22 Mar, 2024, 1:32:18 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style >
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
            #btn1{
                width:100%;
                padding: 10px;
                border:1px solid #ddd;
                border-radius:5px;
                text-decoration: none;
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

            table,td {
                /*border-collapse: collapse;*/
                padding: 10px;
            }
            .red{
                color: red;
            }
        </style>
    </head>
    <body style="background-color:#1d415e">
        <div class="main" >
            <h1 align="center"> Delete Information </h1>
            <form action="DeleteData"  onsubmit="return vaild()">
                <table align="center">
                     <tr>
                        <td>
                            <label for="std_id">Student ID:</label>
                        </td>
                        <td>
                            <input type="number" id="std_id" name="std_id">
                        </td>
                    </tr>
                    <tr>
                        <td></td> <td colspan="2"><input type="submit" value="Delete" name="submit"></td>
                    </tr>
                </table>
            </form>
        </div>  
    </body>
</html>

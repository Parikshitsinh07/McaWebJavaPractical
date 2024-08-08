<%-- 
    Document   : index
    Created on : 15 Mar, 2024, 8:31:31 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="main">
            <h1 align="center"> STUDENT REGISTRATION </h1>
            <form action="InsertData"  onsubmit="return vaild()">
                <table align="center">
                    <!-- <tr>
                        <td>
                            <label for="std_id">Student ID:</label>
                        </td>
                        <td>
                            <input type="number" id="std_id" name="std_id">
                        </td>
                    </tr> -->
                    <tr>
                        <td>
                            <label for="first_name">First Name:</label>
                        </td>
                        <td>
                            <input type="text" id="first_name" name="first_name" onblur="Fname()"><br>
                            <span id ="error1" class="red"></span>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label for="last_name">Last Name:</label>
                        </td>
                        <td>
                            <input type="text" id="last_name" name="last_name" onblur="Lname()"><br>
                            <span id ="error2" class="red"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="email">Email:</label>

                        </td>
                        <td>
                            <input type="email" id="email" name="email" onblur="EmailValid()"><br>
                            <span id ="error3" class="red"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="date_of_birth">Date of Birth <br> (YYYY-MM-DD):</label>
                        </td>
                        <td>
                            <input type="text" id="date_of_birth" name="date_of_birth" onblur="Bodvaild()"><br>
                            <span id ="error4" class="red"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>course</label></td>
                        <td>
                            <select name="course" id="res" required>

                                <option value="">Selcect Option</option>
                                <option value="P.G.D.C.A">P.G.D.C.A</option>
                                <option value="M.C.A">M.C.A</option>
                                <option value="B.C.A">B.C.A</option>

                            </select>
                            <span id="error5" class="red"></span>
                        </td>
                    </tr>
                    <tr>
                        <td></td> <td colspan="2"><input type="submit" value="Register" name="submit"></td>
                    </tr>
                </table>
            </form>
        </div>  
        <script>
//            var sid=/^[0-9]+$/;
            var snm = /^[a-zA-Z]+$/;
            var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            function Fname() {
                var first_name = document.getElementById("first_name").value;
//                 alert(first_name);
                if (!snm.test(document.getElementById("first_name").value)) {
                    document.getElementById("error1").innerHTML = "Enter a valid Name";
                    document.getElementById("first_name").value = ""
                    return false;
                } else {
                    document.getElementById("error1").value = ""
                    return true;
                }
            }
            function Lname() {
                var last_name = document.getElementById("last_name").value;
//                 alert(last_name);
                if (!snm.test(document.getElementById("last_name").value)) {
                    document.getElementById("error2").innerHTML = "Enter a valid Name";
                    document.getElementById("last_name").value = ""
                    return false;
                } else {
                    document.getElementById("error2").value = ""
                    return true;
                }
            }
//             
            function EmailValid() {
                var email = document.getElementById("email").value;
                if (!(emailRegex.test(email))) {
                    document.getElementById("error3").innerHTML = "Please Enter Valid Email";
                    document.getElementById("email").value = "";
                    return false;
                } else {
                    document.getElementById("error3").innerHTML = "";
                    return true;
                }
            }
            function Bodvaild() {
//                 alert("Hello");
                var dobRegex = /^\d{4}-\d{2}-\d{2}$/;
                if (!dobRegex.test(document.getElementById("date_of_birth").value)) {
                    document.getElementById("error4").innerHTML = "Please Enter Valid date of birth ";
                    document.getElementById("date_of_birth").value = "";
                    return false;
                } else {
                    document.getElementById("error4").innerHTML = "";
                    return true;
                }
            }
            function vaild()
            {
//               alert("Hello");
                if (Fname() && Lname() && EmailValid() && Bodvaild()) {
                    return true;
                } else {
                    return true;
                }
            }
        </script>
    </body>
</html>

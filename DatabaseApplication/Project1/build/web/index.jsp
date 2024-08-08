<%-- 
    Document   : index
    Created on : 15 Feb, 2024, 8:26:08 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            border-collapse: collapse;
            width: 400px;
        }
        td {
            padding: 8px;
            border: 1px solid #ddd;
        }
        label {
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button{
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        
        div{
            margin: 78px auto;
            width: 253px;
        }
        .red{
           color: red;
           size: 5px;
        }
    </style>
    </head>
    <body>
        <div>
        <form action="CompundInterst" onsubmit="return validateForm()">
        <table>
            <tr>
                <td>
                     <label>principal amount: <span>⟨₹⟩</span></label>
                </td>
                <td>
                    <input type="number" name="PrincipalAmount" id="amount"  onfocusout="amountValid()"/><br>
                    <span id="error" class="red"></span>
                </td>
            </tr>    
        
            <tr>
                <td>
                    <label>Interest Rate: <span>⟨%⟩</span></label>
                </td>
                <td>
                    <input type="text" name="rate" id="rate" onblur="rateValid()"/>
                    <span id="error2" class="red"></span>
                </td>
            </tr>
             <tr>
                <td>
                 <label>years:</label>
                </td>
                <td>
                    <input type="number" name="year" id="year" onblur="yearValid()"/>
                    <span id="error3" class="red"></span>
                </td>
            </tr>
            
             <tr>
                <td>
                 <label>Months:</label>
                </td>
                <td>
                    <input type="number" name="month" id="month"  onblur="monthValid()"/>
                    <span id="error4" class="red"></span>
                </td>
            </tr>
            
             <tr>
                <td>
                 <label>compound Interval:</label>
                </td>
                <td>
                    <select name="CompoundInterval" id="ci" required>
                     <option value="365">Daily365</option>
                        <option value="360">Daily360</option>
                        <option value="52">Weekly(52/yr)</option>
                        <option value="26">Weekly(26/yr)</option>
                        <option value="24">Half Monthly(24/yr)</option>
                        <option value="12">Monthly(12/yr)</option>
                        <option value="6">Monthly(6/yr)</option>
                        <option value="4">Quarterly</option>
                        <option value="2">Half Yearly(2/yr)</option>
                        <option value="1">Yearly(1/yr)</option>
                        
                    </select>
                </td>
            </tr>
        
            <tr>
               
                <td>
                 <button type="reset" name="reset">Reset</button>
                </td>
                 <td>
                 <button type="submit" name="submit">Submit</button>
                </td>
            </tr>    
        </table>
    </form>
    </div>
    
    <script>
        //
        //var amount =  document.getElementById("amount").value;
           
           var Isnumber = /^%d+$/;
           var decimal=  /^[-+]?[0-9]+\.[0-9]+$/;
            var interest = document.getElementById("ci").value;
             
        function amountValid(){
            var amount =  document.getElementById("amount").value;
            if(amount <= 0 || Isnumber.test(amount)){
                document.getElementById("error").innerHTML = "Please Enter Valid Amount";
                 document.getElementById("amount").value="";
                 return false;
            }
            else{
                document.getElementById("error").innerHTML="";
                return true;
            }
        }
        function rateValid(){
            var rate = document.getElementById("rate").value;
//            !(rate.match(decimal))
            if(rate <= 0 || rate > 100 ){
                document.getElementById("error2").innerHTML = "Please Enter Valid Rate";
                 document.getElementById("rate").value="";
                 return false;
            }
            else{
                document.getElementById("error2").innerHTML="";
                 return true;
            }
            
        }
        function yearValid(){
            var year = document.getElementById("year").value;
            if(year < 0 || Isnumber.test(year)){
                document.getElementById("error3").innerHTML = "Please Enter Valid Year";
                 document.getElementById("year").value="";
                 return false;
            }
            else{
                document.getElementById("error3").innerHTML="";
                 return true;
            }
        }
        function monthValid(){
           var month = document.getElementById("month").value;
           if((month < 0 || month >12)  ){
               document.getElementById("error4").innerHTML = "Please Enter Valid month";
                 document.getElementById("month").value="";
                 return false;
           }
           else{
                var year = document.getElementById("year").value;
               if(year == 0 && month == 0){
                   document.getElementById("error4").innerHTML = "Please Enter Valid month";
                    document.getElementById("month").value="";
                    return false;
               }
               else{
                    document.getElementById("error4").innerHTML="";
                    return true;
                }
            }
        }
        function validateForm(){
            if(!amountValid()){
                return false;
            }
            if(!rateValid()){
                return false;
            }
            if(!yearValid()){
                return false;
            }
            if(!monthValid()){
                return false;
            }
            return true;
        }
       
    </script>
    </body>
</html>

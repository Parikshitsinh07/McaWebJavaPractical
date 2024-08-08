

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body{
            background-color: #f8f9fa;
        }
        .login-container
        {
            display:flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            width: 100%;
            max-width: 400px;
            
        }
    </style>
    <script>
        function validateForm()
        {
                var emailInput = document.getElementById('email').value;
                var passwordInput = document.getElementById('password').value;
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                
               
                if(emailInput.trim()==="")
                {
                    alert("Email required !");
                    return false;
                }
                if(passwordInput.trim()==="")
                {
                    alert("Password required !");
                    return false;
                }

                if (!emailPattern.test(emailInput)) {
                    alert("Please enter a valid email address");
                    return false;
                }
        }
        
        
        
        
    </script>
    </head>
    <body>
        
        <%
             if(request.getAttribute("error")!=null) {%>
             
             <div class="alert alert-danger mt-2 text-center" role="alert">
                 <%= request.getAttribute("error")%>
             </div>
             
             <%}%>
        
        <div class="container login-container">
           <div class="row">
               <div class="col-md-12 justify-content-center">
                   <div class="card border border-info">
                       <div class="card-header text-center">
                           <img class="rounded-circle" src="images/login_logo.png" alt="login logo"  height="80">
                           
                       </div>
                       <div class="card-body">
                           <form action="authenticate.jsp" method="post" onsubmit="return validateForm()">
                               <div class="form-group">
                                   <div class="input-group">
                                       <div class="input-group-prepend">
                                           <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                           
                                       </div>
                                       <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email">
                                       
                                   </div>
                                   <div class="form-group mt-3">
                                        <div class="input-group">
                                           <div class="input-group-prepend">
                                               <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                           </div>
                                           
                                           <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password">
                                        </div>
                                    </div>
                                   <button type="submit" class="btn btn-outline-primary btn-block">Login</button>   
                                   
                               </div>
                           </form>
                       </div>
                       
               </div>
            
            
            
            
        </div>
        
        
        
        
       
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
    
    
    
</html>

<%-- 
    Document   : Discounts
    Created on : 28 Mar, 2024, 8:13:15 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="AllCss.jsp" %>
        <link rel="stylesheet" href="AllComponets/css/Discounts.css"/>
    </head>
    <body>
        <%@include  file="header.jsp" %>
        <div style="display: flex; margin: 10px">
      <iframe src="SidebarD.html" height="600" width="290" scrolling="no" > </iframe>
      <iframe src="ContantD.html" height="600" width="1100" scrolling="no"> </iframe>
    </div>
    <section id="newsletter" class="section-p1 section-m1">
      <div class="newstext">
        <h4>Sing Up For New Books</h4>
        <p>
          Get E-mail updates about our latest Books
          <span> & special offers.</span>
        </p>
      </div>
      <div class="form">
        <input type="text " placeholder="Your email address" />
        <button class="normal">Sing Up</button>
      </div>
    </section>
    </body>
</html>

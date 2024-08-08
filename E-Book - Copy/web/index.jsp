<%-- 
    Document   : index
    Created on : 27 Mar, 2024, 11:35:27 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! int row, columan;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="AllComponets/AllCss.jsp" %>
    </head>
    <body>
        <%@include file="AllComponets/header.jsp" %>
        <section id="hero">
            <h1 class="texti" style="color: rgb(227, 252, 252)">
                WELCOME TO<br /><span> ONLINE BOOK STORE</span>
            </h1>
            <p class="texti" style="color: rgb(212, 212, 255)">
                Save more Book with coupons & up to 70% off!
            </p>
            <button class="texti">
                <a href="AllBook.html" class="main_btn">Learn More</a>
            </button>
        </section>

        <section id="feature" class="section-p1">
            <div class="fe-box">
                <img src="AllComponets/img/f1.png" alt="" />
                <h6>free</h6>
            </div>
            <div class="fe-box">
                <img src="AllComponets/img/f2.png" alt="" />
                <h6>Save Time</h6>
            </div>
            <div class="fe-box">
                <img src="AllComponets/img/f3.png" alt="" />
                <h6>Save Money</h6>
            </div>
            <div class="fe-box">
                <img src="AllComponets/img/f4.png" alt="" />
                <h6>Promotions</h6>
            </div>
            <div class="fe-box">
                <img src="AllComponets/img/f5.png" alt="" />
                <h6>Heppy Sell</h6>
            </div>
            <div class="fe-box">
                <img src="AllComponets/img/f6.png" alt="" />
                <h6>F24/7 Support</h6>
            </div>
        </section>

        <section id="products1" class="section-p1">
            <h2>Featured Books</h2>
            <p>Best sell book in site</p>
            <div class="pro-container">
                 <% for (row = 1; row <= 8; row++) {%>
                <div class="pro">
                    <img src="AllComponets/img/arrival_2.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5>The Wright Brathers</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>₹1078</h4>
                    </div>
                    <a href="Add.html"><i class="fal fa-shopping-cart cart"></i></a>
                </div>
                <%}%>
            </div>
        </section>

        <section id="banner" class="section-m1">
            <a href="AllBookF/AllBook.html"
               ><button class="normal">Explore More</button></a
            >
        </section>
    </body>
</html>

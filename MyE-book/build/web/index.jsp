<%-- 
    Document   : index
    Created on : 28 Mar, 2024, 8:44:25 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
            />
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.css"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <section id="header">
            <a href="#"><img src="img/BookLogo.png" class="logo log" /></a>

            <label
                for="default-search"
                class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white"
                >Search</label
            >
            <div class="relative">
                <div
                    class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none"
                    >
                    <svg
                        class="w-4 h-4 text-gray-500 dark:text-gray-400"
                        aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 20 20"
                        >
                    <path
                        stroke="currentColor"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
                        />
                    </svg>
                </div>
                <input
                    style="width: 350px"
                    type="search"
                    id="default-search"
                    class="block w-full p-4 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    placeholder="Search Your Books..."
                    required
                    />
                <button
                    type="submit"
                    style="background-color: hsl(229, 100%, 76%); color: black"
                    class="text-white absolute end-2.5 bottom-2.5 bg-gray-700 hover:bg-gray-800 focus:ring-4 focus:outline-none focus:ring-gray-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-gray-600 dark:hover:bg-gray-700 dark:focus:ring-gray-800"
                    >
                    Search
                </button>
            </div>

            <div>
                <ul id="navbar">
                    <li><a class="active" href="index.html">Home</a></li>
                    <li><a href="/DiscountF/Discounts.html">Discounts%</a></li>
                    <li><a href="/NewBookF/NewBooks.html">NewBooks</a></li>
                    <li><a href="/AllBookF/AllBook.html">AllBook</a></li>
                    <li><a href="/Contact.html">Contact</a></li>
                    <li>
                        <a href="/Request.html">BookRequest</a>
                    </li>

                    <li id="lg-bag">
                        <a href="cart.html"><i class="far fa-shopping-bag"></i></a>
                    </li>
                    <a href="#" id="close1"><i class="far fa-times"></i></a>
                </ul>
            </div>
            <div id="mobile">
                <a href="cart.html"><i class="far fa-shopping-bag"></i></a>
                <i id="bar" class="fas fa-outdent"></i>
            </div>
            <div class="user" style="margin-left: 20px">
                <a href="Sign.html" class="active">
                    <svg
                        class="w-6 h-6 text-gray-800 dark:text-white"
                        aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg"
                        width="24"
                        height="24"
                        fill="currentColor"
                        viewBox="0 0 24 24"
                        >
                    <path
                        fill-rule="evenodd"
                        d="M12 20a7.966 7.966 0 0 1-5.002-1.756l.002.001v-.683c0-1.794 1.492-3.25 3.333-3.25h3.334c1.84 0 3.333 1.456 3.333 3.25v.683A7.966 7.966 0 0 1 12 20ZM2 12C2 6.477 6.477 2 12 2s10 4.477 10 10c0 5.5-4.44 9.963-9.932 10h-.138C6.438 21.962 2 17.5 2 12Zm10-5c-1.84 0-3.333 1.455-3.333 3.25S10.159 13.5 12 13.5c1.84 0 3.333-1.455 3.333-3.25S13.841 7 12 7Z"
                        clip-rule="evenodd"
                        />
                    </svg>
                </a>
            </div>
        </section>

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
                <img src="img/f1.png" alt="" />
                <h6>free</h6>
            </div>
            <div class="fe-box">
                <img src="img/f2.png" alt="" />
                <h6>Save Time</h6>
            </div>
            <div class="fe-box">
                <img src="img/f3.png" alt="" />
                <h6>Save Money</h6>
            </div>
            <div class="fe-box">
                <img src="img/f4.png" alt="" />
                <h6>Promotions</h6>
            </div>
            <div class="fe-box">
                <img src="img/f5.png" alt="" />
                <h6>Heppy Sell</h6>
            </div>
            <div class="fe-box">
                <img src="img/f6.png" alt="" />
                <h6>F24/7 Support</h6>
            </div>
        </section>

        <section id="products1" class="section-p1">
            <h2>Featured Books</h2>
            <p>Best sell book in site</p>
            <div class="pro-container">
                <div class="pro">
                    <img src="img/arrival_1.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5>The Gever lois lowry</h5>
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
                <div class="pro">
                    <img src="img/arrival_2.jpg" alt="" />
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
                <div class="pro">
                    <img src="img/arrival_3.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5>Radiacal Gardening</h5>
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
                <div class="pro">
                    <img src="img/arrival_4.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5>Red Queen</h5>
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
                <div class="pro">
                    <img src="img/arrival_5.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/arrival_6.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/arrival_7.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/arrival_8.webp" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
            </div>
        </section>

        <section id="banner" class="section-m1">
            <a href="AllBookF/AllBook.html"
               ><button class="normal">Explore More</button></a
            >
        </section>

        <section id="products1" class="section-p1">
            <h2>New Arrivals</h2>
            <p>New Books Added in this site</p>
            <div class="pro-container">
                <div class="pro">
                    <img src="img/book_1.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/book_2.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/book_3.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/book_4.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/book_5.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/book_6.jpg" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/book_7.png" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
                <div class="pro">
                    <img src="img/book_8.png" alt="" />
                    <div class="des">
                        <span>Best Book</span>
                        <h5></h5>
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
            </div>
        </section>

        <section id="banner3">
            <div class="banner-box">
                <h2>New Book SALE</h2>
                <h3>Book Collection -%50 OFF</h3>
            </div>
            <div class="banner-box banner-box2">
                <h2>NEW Book COLLECTION</h2>
                <h3>This Year/2024</h3>
            </div>
        </section>

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

        <footer class="section-p1">
            <div class="col">
                <img class="logo" src="" alt="" />
                <h4>Contact</h4>
                <p>
                    <strong>Address:</strong> 562Wellington Road,Street 32.San Francisco
                </p>
                <p><strong>Phone:</strong> +01 2222 365/(+91) 01 2345 6789</p>
                <p><strong>Hours:</strong> 10:00 - 18:00,Mon - Sat</p>
                <div class="follow">
                    <h4>Follow us</h4>
                    <div class="icon">
                        <i class="fab fa-facebook-f"></i>
                        <i class="fab fa-twitter"></i>
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-pinterest-p"></i>
                        <i class="fab fa-youtube"></i>
                    </div>
                </div>
            </div>
            <div class="col">
                <h4>About</h4>
                <a href="index.html">Home</a>
                <a href="/DiscountF/Discounts.html">Discounts%</a>
                <a href="/NewBookF/NewBooks.html">NewBooks</a>
                <a href="/AllBookF/AllBook.html">AllBook</a>
                <a href="Contact.html">Contact Us</a>
            </div>
            <div class="col">
                <h4>My Account</h4>
                <a href="Sign.html">Sing In</a>
                <a href="cart.html">View Cart</a>
                <a href="Request.html">Request a Book</a>
                <a href="#">Help</a>
            </div>
            <div class="col install">
                <h4>install App</h4>
                <p>Form App Store or Google Play</p>
                <div class="row">
                    <img src="img/app.jpg" alt="" />
                    <img src="img/play.jpg" alt="" />
                </div>
                <p>Secured Payment Getways</p>
                <img src="img/pay.png" />
            </div>
            <div class="copyright">
                <p>@ 2024, Mahir tech - HTML CSS Online Book Store</p>
            </div>
        </footer>

        <script src="script.js"></script>
    </body>
</html>

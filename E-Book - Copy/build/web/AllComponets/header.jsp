<%-- 
    Document   : header
    Created on : 28 Mar, 2024, 12:04:54 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="AllComponets/css/style.css"/>
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
                    <li><a href="AllComponets/Discounts.jsp">Discounts%</a></li>
                    <li><a href="AllComponets/NewBooks.html">NewBooks</a></li>
                    <li><a href="AllComponets/AllBook.html">AllBook</a></li>
                    <li><a href="AllComponets/Contact.html">Contact</a></li>
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

    </body>
</html>

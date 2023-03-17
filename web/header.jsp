<%-- 
    Document   : header
    Created on : Oct 26, 2022, 11:33:40 PM
    Author     : User
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/styleindex.css" />
        <link rel="stylesheet" href="./css/stylesHeader.css"/>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript">
            window.addEventListener("scroll", function (event) {
                var scroll = this.scrollY;
                const header = document.getElementById("header");

                if (scroll > 0) {
                    header.style.backgroundColor = 'white';
                    const nodeListA = document.querySelectorAll("a");
                    const nodeListLi = document.querySelectorAll("li");

                    for (var i = 0; i < nodeListA.length; i++) {
                        nodeListA[i].style.color = 'black';
                    }
                    for (var i = 0; i < nodeListLi.length; i++) {
                        nodeListLi[i].style.color = 'black';
                    }
                } else {
                    header.style.backgroundColor = 'transparent';
                    header.style.cursor = 'pointer';
                    const nodeListA = document.querySelectorAll("a");
                    const nodeListLi = document.querySelectorAll("li");

                    for (var i = 0; i < nodeListA.length; i++) {
                        nodeListA[i].style.color = 'white';
                    }
                    for (var i = 0; i < nodeListLi.length; i++) {
                        nodeListLi[i].style.color = 'white';
                    }
                }

            });
            function search() {
                var searchValue = document.getElementById("searchValue").value;
                var categoryId = (new URLSearchParams(window.location.search)).get('id'); // true;

                window.location = "search?id=" + categoryId + "&search=" + searchValue;
            }
     
        </script>
    </head>
    <body>
        <div class="boss-header" id="header">
            <div class="header">
                <div class="content-header">
                    <ul>
                        <li>
                            <a href="#"
                               ><i class="fa-solid fa-location-dot" id="icon"></i>
                                VIỆT NAM</a
                            >
                        </li>
                        <li>
                            <a href="contact.jsp"><i class="fa-solid fa-phone" id="icon"></i>0346049560</a>

                        </li>
                    </ul>
                </div>

                <div class="logo-header">
                    <img style="    margin-left: 238px;
" src="image/245309261_252790450136117_637511275479108975_n.jpg"/>
                </div>

                <div class="icon-header">

                    <div class="search">
                       <input type="text" class="searchInput" id="searchValue" name="search" placeholder="Hôm nay bạn cần gì">
                        <i  type="submit" onclick="search()" class="fa-solid fa-magnifying-glass"></i>
                    </div>
                    
                    
                    <br/>
                    <c:if test="${sessionScope.account == null}">
                        <a href="login.jsp"><i class="fa-solid fa-user" id="user"></i>Login/Register</a>
                    </c:if>

                    <c:if test="${sessionScope.account != null && sessionScope.account.roleID == 2}">   
                        <!--<a href="profile.jsp"><i class="fa-solid fa-user" id="user"></i>Tài Khoản</a>-->

                        <a href="profile?username=${sessionScope.account.username}"><i class="fa-solid fa-user" id="user"></i>${sessionScope.account.username}</a> 
                        <a href="logout">Log Out</a>
                        <a href="change.jsp">Change Password</a>
                        <a href="cart"><i class="fa-solid fa-cart-shopping" id="cart"></i></a>
                        </c:if>

                    <c:if test="${sessionScope.account != null && sessionScope.account.roleID == 1}">   
                        <!--<a href="profile.jsp"><i class="fa-solid fa-user" id="user"></i>Tài Khoản</a>-->
                        <a href="manager">Manager</a>

                        <a href="profile?username=${sessionScope.account.username}"><i class="fa-solid fa-user" id="user"></i>${sessionScope.account.username}</a> 
                        <a href="logout">Log Out</a>
                        <a href="change.jsp">Change Password</a>
                        <a href="viewcart"><i class="fa-solid fa-cart-shopping" id="cart"></i></a>
                        </c:if>

                    <div id="profile" style="display: none">
                        Username:${sessionScope.account.username}
                        <br/>
                        Role:${sessionScope.account.roleID}
                    </div>

                </div>
            </div>

            <div class="navigation">
                <ul>
                    <a href="home"><li>HOME</li></a>
                    <a href="#">
                        <li>INTRO</li>
                    </a>
                    <a href="all">
                        <li>PRODUCT</li>
                    </a>
                    <a href="#">
                        <li>NEWS</li>
                    </a>
                    <a href="contact.jsp">
                        <li>CONTACT</li>
                    </a>


            </div>
        </div>

    </body>

</html>

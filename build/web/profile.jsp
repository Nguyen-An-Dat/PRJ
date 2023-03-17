<%-- 
    Document   : profile
    Created on : Oct 25, 2022, 1:19:24 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/profile.css" />
        <title>Profile</title>
    </head>
    <body>
         <%--<jsp:include page="/header.jsp"/>--%>
         <input>
                <div id="main-card">
                <div class="cover-photo"></div>
                <div class="photo">
                    <img src="https://scontent.fhan5-9.fna.fbcdn.net/v/t39.30808-6/309009580_1758513004502002_1090087447782712280_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=WQ8-zM9S6jwAX9-m_o9&_nc_ht=scontent.fhan5-9.fna&oh=00_AfBmudE3wFs-YaV9ff5Wvl-wzbMJynb08Z7mGo6YnW05Ag&oe=63669A2D" 
                         alt="">
                </div>
                <div class="content">
                    <h2 class="name">Username: ${sessionScope.accountProfile.username}</h2>
                  <p class="fullstack">ID: ${sessionScope.accountProfile.roleID}<br />
                    <p class="fullstack">
                        Email: ${sessionScope.accountProfile.email}
                    </p>
                    <p class="fullstack">
                        Address: ${sessionScope.accountProfile.address}
                    </p>
                    <p class="fullstack">
                        DOB: ${sessionScope.accountProfile.date}
                    </p>
                </div>
                <div class="contact">
                    <h>${sessionScope.accountProfile.phone}</h>
                </div>
            </div>
<!--        <form action="profile" method="post">
        Username <input type="text" name="username" value="${sessionScope.accountProfile.username}" readonly="" />
        <br>
        RoleId <input type="text" name="roleID" value="${sessionScope.accountProfile.roleID}" readonly="" />
                <br>

        name <input type="text" name="name" value="${sessionScope.accountProfile.name}" readonly="" />
                <br>

        <button type="submit">Edit</button>
        </form>-->
    </body>
</html>

<%-- 
    Document   : top
    Created on : Oct 26, 2022, 2:51:36 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/stylesCategory.css"/>
        <!--<link rel="stylesheet" href="./css/category.css"/>-->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

        <title>Product</title>



    </head>
    <body>
        <jsp:include page="/header.jsp" />

        <div class="shirt-container">
            <c:forEach items="${requestScope.product}" var="c">
                <div  class="list-product">
                    <a href="detail?cid=${c.productID}" style="text-decoration: none">
                        <div class="product-card">
                            <img height="300px" width="300px" src="${c.image}" alt="product image" />
                            <p style="font-weight: bold" >${c.productName}</p>
                            <div class="price">
                                <strong>${c.price}Ð</strong>
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>      
        </div>

        <jsp:include page="/footer.jsp" />

    </body>
</html>

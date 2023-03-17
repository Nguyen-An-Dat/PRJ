<%-- 
    Document   : viewCart
    Created on : Nov 7, 2022, 11:00:07 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/stylesHeader.css"/>
        <title>JSP Page</title>
        <script>
            function removeProductCart(id) {
                $.ajax({
                    type: "POST",
                    url: "CartServlet",
                    data: {id: id},
                    success: function (responseText) {
                        location.reload();
                    }
                });
            }
            function updateCart(id) {
                var quality = document.getElementById("product" + id).value;
                $.ajax({
                    type: "POST",
                    url: "updatecart",
                    data: {id: id, quality: quality},
                    success: function (responseText) {
                        location.reload();
                    }
                });
            }

        </script>
    </head>
    <%--<jsp:include page="/header.jsp" />--%>
    <body style="background: #50d06f;">
        <jsp:include page="/header.jsp" />
        <div class="container">
            <h1 style="text-align: center; " >Cart</h1>
            <table style="margin-top: 180px;" border ="1px" width="100%">
                <tr>
                    <th>ProductName</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${sessionScope.cart}" var="c">
                    <c:set var="id" value="${c.productId}"/>
                    <tr>
                        <td style="text-align: center;">${c.productName}</td>
                        <td style="text-align: center;"><input type="number" id="product${c.productId}" class="" value="${c.quality}" min="1" max="10" step="1" onchange="updateCart(${c.productId})" data-decimals="0" required></td>
                        <td style="text-align: center;">${Integer.parseInt(c.price)*c.quality}</td>
                        <td style="text-align: center;"><img width="130px" height="130px" src="${c.image}" alt="ahihi"/></td>
                        <td style="text-align: center;">
                            <a href="#" onclick="removeProductCart('${c.productId}')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            Tong tien : ${sessionScope.total}<br/>
            <button type="button" style="background: black;"><a href="checkout" style="color: white;" value="Check Out"/>Check Out</button>

        </div>
    </body>
</html>

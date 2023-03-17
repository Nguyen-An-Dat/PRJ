<%-- 
    Document   : manager
    Created on : Oct 28, 2022, 11:09:17 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager</title>
        <link rel="stylesheet" href="./css/stylesManager.css">
        <style>
            a{
                text-decoration: none;
            }
            .container{
    padding: 200px 32px;
    background-color: #a5dc86;
}
        </style>
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("are you sure delete with id=" + id + "?")) {
                    window.location = "delete?id=" + id;
                }
            }
        </script>
    </head>
    <body>
        <jsp:include page="/header.jsp" />
        <div class="container">
            <h1 style="text-align: center;">List of Product</h1>
            <p><a href="add.jsp" style="font-size: 30px;">Add a new product</a>
            <table border="1px" width="100%">
                <tr>
                    <th>ProductName</th>
                    <th>Description</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>CategoryID</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${requestScope.data}" var="c">
                    <c:set var="id" value="${c.productID}"/>
                    <tr>
                        <td style="text-align: center;">${c.productName}</td>
                        <td style="text-align: center;">${c.description}</td>
                        <td style="text-align: center;">${c.quantily}</td>
                        <td style="text-align: center;">${c.price}</td>
                        <td style="text-align: center;">${c.categoryID}</td>
                        <td style="text-align: center;"><img width="100px" height="100px" src="${c.image}" alt="ahihi"/></td>
                        <td style="text-align: center;">
                            <a href="#" onclick="doDelete('${c.productID}')">Delete</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="update?id=${c.productID}">Update</a>
                        </td>

                    </tr>
                </c:forEach>
            </table>

        </div>
    </body>
</html>

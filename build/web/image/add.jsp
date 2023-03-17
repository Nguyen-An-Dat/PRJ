<%-- 
    Document   : new
    Created on : Sep 29, 2022, 11:20:48 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add a new Product</h1>
        <form action="add" method="get">
            enter name:<input type="text" name="productName"/><br/>
            enter desc:<input type="text" name="description"/><br/>
            enter quantity:<input type="text" name="quantily"/><br/>
            enter price:<input type="text" name="price"/><br/>
            enter cid:<input type="text" name="categoryID"/><br/>
            enter image<input type="text" name="image"/><br/>

            <input type="submit" value="Save"/>

        </form>
    </body>
</html>

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
        <title>Update</title>
        
    </head>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600);

* {
	margin:0;
	padding:0;
	box-sizing:border-box;
	-webkit-box-sizing:border-box;
	-moz-box-sizing:border-box;
	-webkit-font-smoothing:antialiased;
	-moz-font-smoothing:antialiased;
	-o-font-smoothing:antialiased;
	font-smoothing:antialiased;
	text-rendering:optimizeLegibility;
}

body {
	font-family:"Open Sans", Helvetica, Arial, sans-serif;
	font-weight:300;
	font-size: 12px;
	line-height:30px;
	color:#777;
	background:#0CF;
}

.container {
	max-width:400px;
	width:100%;
	margin:0 auto;
	position:relative;
}

#contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact input[type="url"], #contact textarea, #contact button[type="submit"] { font:400 12px/16px "Open Sans", Helvetica, Arial, sans-serif; }

#contact {
	background:#F9F9F9;
	padding:25px;
	margin:50px 0;
}

#contact h3 {
	color: #F96;
	display: block;
	font-size: 30px;
	font-weight: 400;
}

#contact h4 {
	margin:5px 0 15px;
	display:block;
	font-size:13px;
}

fieldset {
	border: medium none !important;
	margin: 0 6px 10px;
	min-width: 100%;
	padding: 10px;
	width: 100%;
}

#contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact input[type="url"], #contact textarea {
	width:100%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}

#contact input[type="text"]:hover, #contact input[type="email"]:hover, #contact input[type="tel"]:hover, #contact input[type="url"]:hover, #contact textarea:hover {
	-webkit-transition:border-color 0.3s ease-in-out;
	-moz-transition:border-color 0.3s ease-in-out;
	transition:border-color 0.3s ease-in-out;
	border:1px solid #AAA;
}

#contact textarea {
	height:100px;
	max-width:100%;
  resize:none;
}

#contact button[type="submit"] {
	cursor:pointer;
	width:100%;
	border:none;
	background:#0CF;
	color:#FFF;
	margin:0 0 5px;
	padding:10px;
	font-size:15px;
}

#contact button[type="submit"]:hover {
	background:#09C;
	-webkit-transition:background 0.3s ease-in-out;
	-moz-transition:background 0.3s ease-in-out;
	transition:background-color 0.3s ease-in-out;
}

#contact button[type="submit"]:active { box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.5); }

#contact input:focus, #contact textarea:focus {
	outline:0;
	border:1px solid #999;
}
::-webkit-input-placeholder {
 color:#888;
}
:-moz-placeholder {
 color:#888;
}
::-moz-placeholder {
 color:#888;
}
:-ms-input-placeholder {
 color:#888;
}

    </style>
    <body>
        <h1 style="text-align: center;">Update a product</h1>
            <form action="update" method="post" id="contact">
                <input type="text" hidden name="id" value="${requestScope.product.productID}"/><br/>
                <fieldset>enter name:<input type="text" name="productName" value="${requestScope.product.productName}"/><br/></fieldset>
                <fieldset>enter desc:<input type="text" name="description" value="${requestScope.product.description}"/><br/></fieldset>
                <fieldset>enter quantity:<input type="text" name="quantily"value="${requestScope.product.quantily}"/><br/></fieldset>
                <fieldset>enter price:<input type="text" name="price" value="${requestScope.product.price}"/><br/></fieldset>
                <fieldset>enter cid:<input type="text" name="categoryID" value="${requestScope.product.categoryID}"/><br/></fieldset>
                <fieldset>enter image<input type="text" name="image" value="${requestScope.product.image}"/><br/></fieldset>
                <fieldset><input type="submit" value="Save"/></fieldset>
                
            </form>
<!--            <div class="container">  
  <form id="contact" action="update" method="post">
    <h3>Update product</h3>
    <h4>Contact us today, and get reply with in 24 hours!</h4>
    <fieldset>
      <input placeholder="Your ID" type="text" tabindex="1" name="id" value="${requestScope.product.productID}" required autofocus>
    </fieldset>
    <fieldset>
      <input placeholder="Your proName" type="text" tabindex="2" name="productName" value="${requestScope.product.productName}" required>
    </fieldset>
    <fieldset>
      <input placeholder="Your proDescription" type="text" tabindex="3" name="description" value="${requestScope.product.description}" required>
    </fieldset>
    <fieldset>
      <input placeholder="Your quantily" type="text" tabindex="4" name="quantily" value="${requestScope.product.quantily}" required>
    </fieldset>
    <fieldset>
      <textarea placeholder="Price" type="text" tabindex="5" name="price" value="${requestScope.product.price}" required></textarea>
    </fieldset>
        <fieldset>
      <textarea placeholder="categoryID" type="text" tabindex="6" name="categoryID" value="${requestScope.product.categoryID}" required></textarea>
    </fieldset>
        <fieldset>
      <textarea placeholder="image" type="text" tabindex="7" name="image" value="${requestScope.product.image}" required></textarea>
    </fieldset>
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
    </fieldset>
<input  type="submit"  value="Save"/>
  </form>-->
 
  
</div>
    </body>
</html>

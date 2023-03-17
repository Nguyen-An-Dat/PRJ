<%-- 
    Document   : home
    Created on : Oct 20, 2022, 9:31:04 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/styleindex.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            />
        <title>SHOP CỦA ĐẠT</title>
        <!--        <script type="text/javascript">
                    
                    function show(){
                        var x = document.getElementById('profile');
                        if (x.style.display === "none") {
                            x.style.display="block";
                        }else{
                            x.style.display="none";
                        }
                    }
                </script>-->
    </head>
    <body>

        <jsp:include page="/header.jsp" />
        <div  class="banner">
            <video height="10px" loop muted autoplay src="image/19JPiwY7.mp4" type="image/mp4"></video>
        </div>
        
                <<h2 style="font-size: 50px; text-align: center;color: red;">Category</h2>


        <div class="product">
            <c:forEach items="${cate}" var="c">
                <div class="product-item">
                    <a href="category?id=${c.categoryID}" >
                        <img src="./image/${c.categoryName}.webp" />
                        <div class="category"><h1>${c.categoryName}</h1></div>
                    </a>
                </div>
            </c:forEach>
        </div>

        <!-- <div id="slideshow">
          <div class="slide-wrapper">
            <div class="slide"><img src="https://images.pexels.com/photos/9775889/pexels-photo-9775889.jpeg?auto=compress&cs=tinysrgb&w=800"></div>
            <div class="slide"><img src="https://images.pexels.com/photos/9775856/pexels-photo-9775856.jpeg?auto=compress&cs=tinysrgb&w=800"></div>
            <div class="slide"><img src="https://bizweb.sapocdn.net/100/438/408/products/tlm5041-den-2.jpg"></div>
          </div>
        </div> -->

        <div class="CSSgal">

            <!-- Don't wrap targets in parent -->
            <s id="s1"></s> 
            <s id="s2"></s>
            <!-- <s id="s3"></s>
            <s id="s4"></s> -->

            <div class="slider">
                <div class="slider-image" >
                    <img src="image/slider_story_1.png" >
                </div>
                <div  class="slider-image" >
                    <img src="image/slider_story_2.png" >
                </div >

            </div>

            <div class="prevNext">
                <div><a href="#s4"></a><a href="#s2"></a></div>
                <div><a href="#s1"></a><a href="#s3"></a></div>
                <div><a href="#s2"></a><a href="#s4"></a></div>
                <div><a href="#s3"></a><a href="#s1"></a></div>
            </div>

            <div class="bullets">
                <a href="#s1">1</a>
                <a href="#s2">2</a>
            </div>
        </div>

        <div class="Featured products"> 

        </div>

        <jsp:include page="/footer.jsp" />

    </body>
</html>

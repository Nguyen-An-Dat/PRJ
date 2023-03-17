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
        <link rel="stylesheet" href="./css/category.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

        <title>Shirt</title>
        <script src="../../../Documents/NetBeansProjects/MyStore/web/js/cart.js" type="text/javascript"></script>

    </head>
    <body>
        <jsp:include page="/header.jsp" />
<!--        <div class="shirt-container">
            <div class="list-product">
                <a href="#">
                    <div class="product-card">
                        <img src="" alt="product image" />
                        <p></p>
                        <div class="price">
                            <strong></strong>
                        </div>
                    </div>
                </a>
            </div>
        </div>-->
        <c:forEach items="${requestScope.product}" var="c">
            <div class="shirt-container">
                <div class="list-product">
                    <a href="#">
                        <div class="product-card">
                            <img src="${c.image}" alt="product image" />
                            <p>${c.productName}</p>
                            <div class="price">
                                <strong>${c.price}</strong>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </c:forEach>      

        <!--      <a href="#">
                <div class="product-card">
                  <img src="image/a32e71f1457e4915bfd7ac28008bcb4d_9366.png" alt="alt" />
                  <p>OWN THE RUN JACKET</p>
                  <div class="price">
                    <strong>1,000,000đ</strong>
                  </div>
                </div>
              </a>
        
              <a href="#">
              <div class="product-card">
                <img src="image/eugoods_05_449618.png" alt="alt" />
                <p>MUST HAVES 3-STRIPES WUJI JACKET</p>
                <div class="price">
                  <strong>2,000,000đ</strong>
                </div>
              </div>
        </a>
              <a href="#">
              <div class="product-card">
                <img src="image/6dffe491-5118-47b7-8486-144de46d76ad.png" alt="alt" />
                <p>Nike Sportswear Air</p>
                <div class="price">
                  <strong>800,000đ</strong>
                </div>
              </div>
        </a>
              <a href="#">
              <div class="product-card">
                <img src="image/7eaceb47-98fe-4104-8166-1ebbad948c89.png" alt="alt" />
                <p>Nike SB</p>
                <div class="price">
                  <strong>950,000đ</strong>
                </div>
              </div>
        </a>
              <a href="#">
              <div class="product-card">
                <img
                  src="image/S7442dc6857e0412d865e85645926c628F.jpg_200x200.png"
                  alt="alt"
                />
                <p>Nike Sportswear AF-1</p>
                <div class="price">
                  <strong>1,000,000đ</strong>
                </div>
              </div>
             </a> -->

        <jsp:include page="/footer.jsp" />
    </div>
</body>
</html>

<%-- 
    Document   : footer
    Created on : Oct 26, 2022, 11:33:47 PM
    Author     : User
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/styleindex.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <style>
            .site-footer {
                background-color: #d7b8ff;
                /*background-image: url("https://img4.thuthuatphanmem.vn/uploads/2020/06/05/hinh-anh-nen-cong-nghe-dep_103227664.jpg");*/
                padding: 45px 0 20px;
                font-size: 15px;
                line-height: 24px;
                color: #000000;
            }
            .site-footer hr {
                border-top-color: #bbb;
                opacity: 0.5;
            }
            .site-footer hr.small {
                margin: 20px 0;
            }
            .site-footer h6 {
                color: #fff;
                font-size: 16px;
                text-transform: uppercase;
                margin-top: 5px;
                letter-spacing: 2px;
            }
            .site-footer a {
                /*color: #737373;*/
                color: #fff;


            }
            .site-footer a:hover {
                color: #3366cc;
                text-decoration: none;
            }
            .footer-links {
                padding-left: 0;
                list-style: none;
            }
            .footer-links li {
                display: block;
            }
            .footer-links a {
                color: #737373;
                text-decoration: none;
            }
            .footer-links a:active,
            .footer-links a:focus,
/*            .footer-links a:hover {
                color: #3366cc;
                text-decoration: none;
            }*/
            .footer-links.inline li {
                display: inline-block;
            }
            .site-footer .social-icons {
                text-align: right;
            }
            .site-footer .social-icons a {
                width: 40px;
                height: 40px;
                line-height: 40px;
                margin-left: 6px;
                margin-right: 0;
                border-radius: 100%;
                /*background-color: #33353d;*/
            }
            .copyright-text {
                margin: 0;
            }
            @media (max-width: 991px) {
                .site-footer [class^="col-"] {
                    margin-bottom: 30px;
                }
            }
            @media (max-width: 767px) {
                .site-footer {
                    padding-bottom: 0;
                }
                .site-footer .copyright-text,
                .site-footer .social-icons {
                    text-align: center;
                }
            }
            .social-icons {
                padding-left: 0;
                margin-bottom: 0;
                list-style: none;
            }
            .social-icons li {
                display: inline-block;
                margin-bottom: 4px;
            }
            .social-icons li.title {
                margin-right: 15px;
                text-transform: uppercase;
                color: #96a2b2;
                font-weight: 700;
                font-size: 13px;
            }
            .social-icons a {
                background-color: #eceeef;
                color: #818a91;
                font-size: 16px;
                display: inline-block;
                line-height: 44px;
                width: 44px;
                height: 44px;
                text-align: center;
                margin-right: 8px;
                border-radius: 100%;
                -webkit-transition: all 0.2s linear;
                -o-transition: all 0.2s linear;
                transition: all 0.2s linear;
            }
            .social-icons a:active,
            .social-icons a:focus,
/*            .social-icons a:hover {
                color: #fff;
                background-color: #29aafe;
            }*/
            .social-icons.size-sm a {
                line-height: 34px;
                height: 34px;
                width: 34px;
                font-size: 14px;
            }
/*            .social-icons a.facebook:hover {
                background-color: #3b5998;
            }
            .social-icons a.twitter:hover {
                background-color: #00aced;
            }
            .social-icons a.linkedin:hover {
                background-color: #007bb6;
            }
            .social-icons a.dribbble:hover {
                background-color: #ea4c89;
            }*/
            @media (max-width: 767px) {
                .social-icons li.title {
                    display: block;
                    margin-right: 0;
                    font-weight: 600;
                }
            }

        </style>
    </head>
    <body>
        <!--         <div class="footer">
                    <div class="method">
                        <i class="fa-solid fa-truck-fast" id="icon-footer"></i>Ship COD toàn quốc
                        <br/>
                        <i class="fa-sharp fa-solid fa-gift" id="icon-footer"></i>FREESHIP đơn hàng từ 500.000đ
                    </div>
                    <div class="contact">
                        <i class="fa-solid fa-house-user" id="icon-footer"></i>APRILORDER STORE
                        <br/>
                        <i class="fa-solid fa-location-dot" id="icon-footer"></i>78 Thị trấn Chờ, Yên Phong, Bắc Ninh
                        <br/>
                        <i class="fa-solid fa-location-dot" id="icon-footer"></i>14 Nguyễn Trí Thanh, Yên Phong, Bắc Ninh
                        <br/>
                        <i class="fa-solid fa-envelope" id="icon-footer"></i>nguyen.an.dat775@gmail.com
                    </div>
                </div>-->

        <footer class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <h6>About</h6>
                        <p class="text-justify">Scanfcode.com <i>CODE WANTS TO BE SIMPLE </i>For those who love fashion, especially the liberal and modern street style, it is certainly not too strange with accessories such as bags, carrying practicality for both personal and professional needs. satisfy the feeling of being immersed in a distinct personality. Leading in the field of modern street fashion, with products fused by beauty and personality, MLB VietNam has always proven its position through its own bags with an identity inspired by inspired by ball sports</p>
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <h6>Categories</h6>
                        <ul class="footer-links">
                            <li><a href="https://www.maisononline.vn/collections/mlb?ref=BFL_Shopping&utm_source=Google_Conversion&utm_medium=BFL&utm_campaign=BFL_Shopping&utm_term=&gclid=CjwKCAjwh4ObBhAzEiwAHzZYU_lFt6yEI_Ku7VKAPGweMmlWMaTNQW-pQkaztvBLOEbifUsCOqrdeRoCwwwQAvD_BwE">MLB</a></li>
                            <li><a href="https://urbanmonkey.vn/">Urben Monkey</a></li>
                            <li><a href="https://thedenimstore.com.sg/">DENIM</a></li>
                            <li><a href="https://badhabitsstore.vn/collections/all?gclid=CjwKCAjwh4ObBhAzEiwAHzZYU4NNgBiKMMv6c5_4jFuEmwawArpl2atJeEQvqK2qA1iVZ_RpBZUEIhoCtOYQAvD_BwE">Bad Habbit</a></li>
                            <li><a href="https://goldievietnam.com/">GOLDIE</a></li>
                            <li><a href="https://levi.com.vn/">Levis</a></li>
                        </ul>
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <h6>Quick Links</h6>
                        <ul class="footer-links">
                            <li><a href="http://scanfcode.com/about/">About Us</a></li>
                            <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
                            <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
                            <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
                            <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
                <hr>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-6 col-xs-12">
                        <p class="copyright-text">Copyright &copy; 2022 All Rights Reserved by 
                            <a href="https://www.facebook.com/dat.nguyenan.77/">Nguyen An Dat</a>.
                        </p>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <ul class="social-icons">
                            <li><a class="facebook" href="https://www.facebook.com/dat.nguyenan.77/" style="background-color:#3b5998"><i class="fa-brands fa-facebook-f"></i></a></li>
                            <li><a class="twitter" href="#" style="background-color:#00aced"><i class="fa-brands fa-twitter" ></i></a></li>
                            <li><a class="dribbble" href="https://www.instagram.com/7thangs_8/" style="background-color:#ea4c89"><i class="fa-brands fa-instagram"></i></a></li>
                            <li><a class="linkedin" href="#" style="background-color:#007bb6"><i class="fa-brands fa-linkedin-in"></i></a></li>   
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>

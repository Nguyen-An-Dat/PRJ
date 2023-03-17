<%-- 
    Document   : login
    Created on : Oct 6, 2022, 9:54:26 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<link href="css/login.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
            <title>Login</title>

<html>
    <!--    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        </head>
        <body>
            <h1>Login Form</h1>
            <form action="login" method="post">
                Username:<input type="text" name="user"/><br/>
                Password<input type="password" name="pass"/><br/>
                <input type="submit" value="LOGIN"/>
            </form>
        </body>-->
    <form action="login" method="post">
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">

                                <div class="mb-md-5 mt-md-4 ">

                                    <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                                <p style="color:red">${requestScope.ms}</p>
                                    <p class="text-white-50 mb-5">Please enter your user and password!</p>

                                    <div class="form-outline form-white mb-4">
                                        <input type="text" id="user" name="user" class="form-control form-control-lg" placeholder="user" />
                                        <label class="form-label" for="typeEmailX" >Username</label>
                                    </div>

                                    <div class="form-outline form-white mb-4">
                                        <input type="password" id="pass" name="pass" class="form-control form-control-lg" placeholder="pass"/>
                                        <label class="form-label" for="typePasswordX">Password</label>
                                    </div>

                                    <!--<p class="small mb-4 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>-->

                                    <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>

<!--                                    <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                        <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                                        <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                        <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
                                    </div>-->

                                </div>

                                <div>
                                    <p class="mb-0">Don't have an account? <a href="register.jsp" class="text-white-50 fw-bold">Sign Up</a>
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</html>

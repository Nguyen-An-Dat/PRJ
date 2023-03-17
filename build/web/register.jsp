<%-- 
    Document   : register
    Created on : Oct 6, 2022, 11:59:51 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">\
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            />
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <title>Register</title>
        
    </head>
    <script>
        
    </script>
    <style>
        #success_message{
            display: none;
        }
    </style>
    <scr
        <body>
        <!--<h1>Register</h1>-->
        <p style="color:red">${requestScope.ms}</p>
        <!--        <form action="register" method="post">
                    Username:<input type="text" name="user" required/><br/>
                    Password<input type="password" name="pass" required/><br/>
                    name<input type="text" name="user" required/><br/>
                    dob<input type="text" name="dob" required/><br/>
                    email<input type="text" name="email" required/><br/>
                    phone<input type="text" name="phone" required/><br/>
                    address<input type="text" name="address" required/><br/>
                    <input type="submit" value="REGISTER"/>
                </form>-->
         <div class="container">
        <form class="well form-horizontal" action="register" method="post"  id="contact_form">
            <fieldset>

                <legend><center><h2><b>Register</b></h2></center></legend><br>
                <div class="form-group">
                    <label class="col-md-4 control-label" >Username</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input  name="user" placeholder="Username" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-md-4 control-label" >Password</label> 
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="pass" placeholder="Password" class="form-control"  type="password" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" >DOB</label> 
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="dob" placeholder="Password" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">E-Mail</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input name="email" placeholder="E-Mail Address" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Phone</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input name="phone" placeholder="E-Mail Address" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Address</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input name="address" placeholder="E-Mail Address" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>

                <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4"><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspREGISTER <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
                    </div>
                </div>
            </fieldset>
        </form>
         </div>
    </body>
</html>

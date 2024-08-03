<%-- 
    Document   : admin_login
    Created on : 15 Feb, 2023, 11:10:32 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <style type="text/css">
            label{
                color: brown;
            }
            .login-block{
                background: #6190E8;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #A7BFE8, #6190E8);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #A7BFE8, #6190E8); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

                float:left;
                width:100%;
                padding : 50px 0;
            }
            .banner-sec{background:url(images/admin_login.jpg)  no-repeat left bottom; background-size:cover; min-height:650px; border-radius: 0 10px 10px 0; padding:0;}
            .container{background:#fff; border-radius: 10px; box-shadow:15px 20px 0px rgba(0,0,0,0.1);}
            .carousel-inner{border-radius:0 10px 10px 0;}
            .carousel-caption{text-align:left; left:5%;}
            .login-sec{padding: 50px 30px; position:relative;}
            .login-sec .copy-text{position:absolute; width:80%; bottom:20px; font-size:13px; text-align:center;}
            .login-sec .copy-text i{color:#FEB58A;}
            .login-sec .copy-text a{color:#E36262;}
            .login-sec h2{margin-bottom:30px; font-weight:800; font-size:30px; color: #DE6262;}
            .login-sec h2:after{content:" "; width:100px; height:5px; background:#FEB58A; display:block; margin-top:20px; border-radius:3px; margin-left:auto;margin-right:auto}
            .btn-login{background: #DE6262; color:#fff; font-weight:600;}
            .banner-text{width:70%; position:absolute; bottom:40px; padding-left:20px;}
            .banner-text h2{color:#fff; font-weight:600;}
            .banner-text h2:after{content:" "; width:100px; height:5px; background:#FFF; display:block; margin-top:20px; border-radius:3px;}
            .banner-text p{color:#fff;}
        </style>
    </head>
    <body>
        <script src="validation.js"></script>
        <form action="admin_login" method="post">
            <section class="login-block">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 login-sec">
                            <h2 class="text-center">Admin login</h2>
                            <form class="login-form">
                                <div class="form-group">
                                    <label>Username:<span style="color: red">*</span></label>
                                    <input type="text" name="txt_username" placeholder="Enter Username" maxlength="50" class="form-control" required>

                                </div>
                                <div class="form-group">
                                    <label>Password:<span style="color: red">*</span></label>
                                    <input type="password" name="txt_pass" placeholder="Enter Password" maxlength="8" minlegth="8" class="form-control" required>
                                </div>


                                <div>
                                    <input type="submit" name="btn_login" value="Login" class="form-control btn btn-outline-success mt-3">
                                    <input type="reset" name="btn_Cancel" value="Cancel" class="form-control btn btn-outline-danger mt-3">
                                </div>

                            </form>
                            <div class="copy-text">No Account?<i class="fa fa-heart"></i>Create One.<a href="http://localhost:8080/Electronics_shop/admin_signup.jsp#">Click Here.</a>
                                <br>
                                <a class="" href="http://localhost:8080/Electronics_shop/forgot_password.jsp">forgot Password?</a>
                            </div>
                        </div>
                        <div class="col-md-8 banner-sec">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                </ol>
                                <div class="carousel-inner" role="listbox">
                                    <div class="carousel-item">
                                        <img class="d-block img-fluid" src="#" alt="First slide">
                                        <div class="carousel-caption d-none d-md-block">
                                            <div class="banner-text">
                                            </div>	
                                        </div>
                                    </div>
                                </div>	   
                            </div>
                        </div>
                    </div>
            </section>
        </form>
    </body>
</html>

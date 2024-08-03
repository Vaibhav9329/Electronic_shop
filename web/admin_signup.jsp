<%-- 
    Document   : index
    Created on : 11 Feb, 2023, 11:19:04 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Signup Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style type="text/css">
            #span2
            {
                margin: 30px auto 100px auto;
                padding: 0px auto auto auto;
                border: 2px solid white;
                border-radius: 12px;
                background-color: ivory;
            }

            #head{
                font-family: Tahoma, sans-serif;
                font-size: 36px;
                color: black;
                text-align: center;
            }

            label{
                color: brown;
            }

            body
            {
                background: #6190E8;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #A7BFE8, #6190E8);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #A7BFE8, #6190E8); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

            }

            #logo{
                height: 80px;
                margin-left: 44%;
            }

            hr{
                border-top: 3px solid red;
                border-style: dotted; 
                margin-bottom: 40px;
            }
            .text-center{
                margin-left: 0px; 
            }
            #gen{
                border: 1px solid white;
                margin-bottom: 0px;
                margin-top: 6px;
            }
        </style>
    </head>
    <body>
        <script src="validation.js"></script>
        <form action="adminSignup" method="post">
            <div class="container mt-3">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8 bg-light p-5" id="span2">
                        <img src="images/signlogo.png" id="logo"></img>
                        <h4 class="text-center">SignUp</h4>
                        <hr>
                        <div class="row mt-2">
                            <div class="col-sm-12">
                                <label>Full Name:<span style="color: red">*</span></label>
                                <input type="text" name="txt_fullname" placeholder="Enter Admin Name" class="form-control" onkeypress="javascript:return isString(event)"  maxlength="40" required>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-sm-6">
                                <label>Email:<span style="color: red">*</span></label>
                                <input type="email" name="txt_email" placeholder="Ex. abc123@gmail.com" class="form-control" maxlength="50" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Gender:<span style="color: red">*</span></label>
                                <br>
                                <hr id="gen">
                                <input type="radio" name="gender" value="male" required="required"> Male
                                <input type="radio" name="gender" value="female"> Female
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-sm-6">
                                <label>Profile Photo:<span style="color: red">*</span></label>
                                <input type="file" name="txt_photo" accept="image/png, image/jpeg" placeholder="Choose File"  class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Contact:<span style="color: red">*</span></label>
                                <input type="text" name="txt_contact" placeholder="+91 0000000000" class="form-control"  onkeypress="javascript:return isContactno(event)" maxlength="10" min="10" required>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-sm-12">
                                <label>Address:<span style="color: red">*</span></label>
                                <textarea  name="txt_address" cols="40" rows="2" class="form-control" placeholder="Enter Your Address" maxlength="200" required></textarea>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-sm-6">
                                <label>Username:<span style="color: red">*</span></label>
                                <input type="text" name="txt_username" placeholder="Enter Username" class="form-control" maxlength="50" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Password:<span style="color: red">*</span></label>
                                <input type="password" name="txt_pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Enter Password" class="form-control" min="8" maxlength="8" required>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <input type="checkbox" name="txt_terms" class="mt-4" required>  I Agree To the <span style="color: red">*</span><a href="terms.jsp">Terms&Conditions.</a>
                                </div>
                            </div>
                            <div class="row mt-4">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                    <input type="submit" name="btn_signup" value="SignUp" class="btn btn-outline-primary form-control">
                                </div>
                                <div class="col-sm-4">
                                    <input type="reset" name="btn_signup" value="Cancel" class="btn btn-outline-danger form-control">
                                </div>
                                <div class="col-sm-2"></div>
                            </div>
                            <div class="row mt-4">
                                <center><a href="http://localhost:8080/Electronics_shop/admin_login.jsp" class="btn btn-light text-success">LogIn Here.</a></center>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </form>
    </body>
</html>

<%-- 
    Document   : forgot_password
    Created on : 13 Mar, 2023, 10:00:40 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <title>forgot Password</title>
        <style type="text/css">
            hr {
                background: #4bc970;
                height: 1px;
                border: 0;
                border-top: 1px solid #ccc;
                padding: 0;
                text-align: right;
                width: 5%;
                float: center;
            }
            label {
                padding-top: 15px;
                font-weight: bold;
            }

            body {
                font-size: 13px;
                font-family: 'Nunito', sans-serif;
                color: #384047;
            }

            form {
                font-size: 16px;
                max-width: 300px;
                margin: 10px auto;
                padding: 10px 20px;
                background: #f4f7f8;
                border-radius: 0px;
            }

            h1 {
                padding-top: 2em;
                font-size: 32px;
                margin: 0 0 30px 0;
                text-align: center;
            }

            h3 {
                padding-top: 1em;
                font-size: 20px;
                margin: 0 0 30px 0;
                text-align: center;
            }


            input[type="email"],
            select {
                background: rgba(255,255,255,0.1);
                border: none;
                font-size: 16px;
                height: auto;
                margin: 0;
                outline: 0;
                padding: 15px;
                width: 100%;
                background-color: #e8eeef;
                color: #8a97a0;
                box-shadow: 0 1px 0 rgba(0, 0, 0, 0.03) inset;
                margin-bottom: 30px;
            }

            input[type="password"],
            select {
                background: rgba(255,255,255,0.1);
                border: none;
                font-size: 16px;
                height: auto;
                margin: 0;
                outline: 0;
                padding: 15px;
                width: 100%;
                background-color: #e8eeef;
                color: #8a97a0;
                box-shadow: 0 1px 0 rgba(0, 0, 0, 0.03) inset;
                margin-bottom: 30px;
            }

            #btnSubmit {
                padding: 12px 39px 13px 39px;
                color: #FFF;
                background-color: #4bc970;
                font-size: 18px;
                text-align: center;
                font-style: normal;
                border: 1px solid #3ac162;
                border-width: 1px 1px 3px;
                margin-bottom: 10px;
                overflow: hidden;
            }

            label {
                display: block;
                margin-bottom: 8px;
            }

            @media screen and (min-width: 480px) {
                form {
                    max-width: 480px;
                }
            }
        </style>
    </head>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $("#btnSubmit").click(function () {
                    var password = $("#txtPassword").val();
                    var confirmPassword = $("#txtConfirmPassword").val();
                    if (password != confirmPassword) {
                        alert("Passwords do not match.");
                        return false;
                    }
                    return true;
                });
            });
        </script>
    <body>
        <h1>Forgot your password?</h1>
        <hr></hr>
        <h3>Enter your email address to reset your password</h3>
        <form action="admin_forgot_pass" method="post">
            <label for="mail">Email:<span style="color: red">*</span></label></br>
            <input type="email" id="name" name="mail" placeholder="Enter your email address" maxlength="50" required onblur="validateName(name)" required> 
            <br>
            <label for="mail">New Password:<span style="color: red">*</span></label>
            <input type="password" id="txtPassword" name="new_p" placeholder="New Password" required onblur="validateName(name)" maxlength="8" minlength="8" required>
            <br>
            <label for="mail">Confirm Password:<span style="color: red">*</span></label>
            <input type="password" id="txtConfirmPassword" name="confirm_pass" placeholder="Confirm Password" required onblur="validateName(name)" maxlength="8" minlength="8" required>
            <br>
            <input type="submit" name="btn_submit" value="Submit" id="btnSubmit"></input>
        </form>  
    </body>
</html>

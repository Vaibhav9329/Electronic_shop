<%-- 
    Document   : Card
    Created on : 15 Feb, 2023, 9:23:34 PM
    Author     : harsh
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="validation.js"></script>

        <style>
            .container
            {
                border: solid 2px whitesmoke;
                margin-top: 40px;
                margin-bottom: 20px;
                width: 60%;
                padding-right: 60px;
                background-color: white;
                border-radius: 20px;
                padding: 20px;
                background-image: url("https://image-editing-services.com/wp-content/uploads/2018/10/about-us-background.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                margin-bottom: 100px;
            }
            span{
                color: gold;
            }
            h2{
                color: darkblue;
            }
            address{
                background-color: black;
                opacity: 75%;
                width: 300px;
                padding: 20px;
                border: 2px solid green;
                border-radius: 12px;
            }

        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <br>
        <form action="" method="post">
            <div class="container">

                <div class="mobile-contact-info">
                    <div class="logo">
                        <h2 class="display-1">Shree Siddhi Home Appliances</h2>
                    </div>
                    <br>
                    <address class="address">
                        <span>Address: Sankeshwar Road Gadhinglaj.</span>
                        <br>
                        <span>Call Us: 9123456789</span>
                        <br>
                        <span>Email: Offisiddhi123@gmail.com</span>
                    </address>
                    <br><br><br><br><br><br><br><br><br><br><br>
                </div>

            </div>
        </form>
    </body>
</html>
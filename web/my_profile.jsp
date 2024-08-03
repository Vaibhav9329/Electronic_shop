<%-- 
    Document   : my_profile
    Created on : 19 Apr, 2023, 1:27:42 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style>
            #row
            {
                width:60%;
                margin: auto auto auto auto;
                margin-top: 125px;
                border: 2px solid black;
                padding: 40px;
                background-image:url("https://img.freepik.com/free-vector/gradient-liquid-abstract-background_23-2148914626.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                border-radius: 26px;
                box-shadow: 10px 10px 5px #aaaaaa;
            }
            img
            {
                height: 200px;
                width: 200px;
                border: 7px solid greenyellow;
                border-radius: 50%;
            }
            #display-6{
                font-size: 40px;
                margin-left: 60px;
                color: white;
               
            }
            #col-sm-9
            {
                 margin-top:65px;
            }
            #email
            {
              margin-left: 65px;
              font-size: 20px;
              color: gold;
            }
            body
            {
                background-image:url("https://media.istockphoto.com/id/1212342896/vector/abstract-hexagon-wallpaper-white-background-3d-vector-illustration.jpg?s=612x612&w=0&k=20&c=ynRzXUZ4_Ga3Y7joKBABdXUQI4xBvrdHJnYueJWEiw8=");
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
         <br>
        <div class="container">
		<div class="row" id="row">
                    <div class="col-sm-3" id="col-sm-3">
                        <img src="https://img.freepik.com/premium-vector/young-man-avatar-character-vector-illustration-design_24877-18514.jpg?w=2000" alt="profile photo">
                    </div>
                    <div class="col-sm-8" id="col-sm-9">
                       <span class="display-6" id="display-6"><%=session.getAttribute("full_name")%></span>
                       <br>
                       <span id="email"><%=session.getAttribute("email")%></span>
                    </div>
		</div>
	</div>
    </body>
</html>

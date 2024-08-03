<%-- 
    Document   : view_feedback
    Created on : 7 Apr, 2023, 1:02:58 AM
    Author     : acer
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view feedback</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .Destination
            {
                margin: auto auto auto auto;
                width: 60%;
                border: 2px solid black;
                padding: 25px;
                background-color: whitesmoke;
                border-radius: 16px;
                margin-top: 50px;
            }
            body{
                background-image: url("https://e2grow.com/assets/corpo/img/graphics/legacy/pricing-3.png");
                background-size: cover;
                background-repeat: no-repeat;
            }
            b
            {
                color: brown;
            }

            .display-6
            {
                color: whitesmoke;
            }
            #feed_typ
            {
                background: #485563;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #29323c, #485563);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #29323c, #485563); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

                border:2px solid grey;
                border-radius: 16px;
                padding: 3px;
            }
        </style>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <%
                Connection cn = null;
                Statement st = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
                    st = cn.createStatement();
                    String sql = "Select * from tbl_feedback";
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()) {

            %>
            <div class="Destination">
                <div class="row">
                    <div class="col-sm-12" id="feed_typ">
                        <h2 class="display-6"><%=rs.getString("feed_type")%></h2>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-12">
                        <label><b>Description:</b></label>
                        <p><%=rs.getString("feed_describe")%>
                        </p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-6">
                        <span><b>Name: </b><%=rs.getString("full_name")%></span>
                    </div>
                    <div class="col-sm-6">
                        <span><b>Email: </b><%=rs.getString("feed_email")%></span>
                    </div>
                </div>
            </div> 
            <%

                    }
                } catch (Exception ex) {
                    System.out.println(ex.toString());
                }
            %>
        </div>
    </body>
</html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Offers</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            img
            {
                margin: auto auto auto auto;
            }
            .col-sm-12
            {
                padding: auto auto auto auto;
                background-image: url("https://img.freepik.com/free-vector/abstract-watercolor-pastel-background_87374-139.jpg");
                width: 1320px;
                height: 600px;
                border: 10px solid whitesmoke;
                background-repeat:no-repeat;
                background-size: contain;
                margin-top: 60px;

            }

            img
            {
                float: right;
            }

            #dte
            {
                color: whitesmoke;
                font-size: 20px;
                color: whitesmoke;
                font-size: 20px;
                background-color: brown;
                width: 290px;
                padding: 4px;
                border: 2px solid aqua;
                border-radius: 8px;

            }

            button
            {
                width: 200px;
                margin-left: 55px;
            }
            p
            {
                margin-left: 55px;
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <br>
        <div class="container">
            <%
                Connection cn = null;
                Statement st = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
                    st = cn.createStatement();
                    String sql = "Select * from tbl_add_offer";
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()) {

            %>

            <div class="Destination">
                <div class="row">
                    <div class="col-sm-12">
                        <img src="<%=rs.getString("offer_image")%>" height="580px" width="467px">
                        <p class="display-4 mt-3 text-dark"><strong><%=rs.getString("offer_name")%></strong></p>
                        <p class="display-2">On Top <%=rs.getString("cat_name")%></p>
                        <p class="display-3 text-dark"><b>Up to <%=rs.getString("offer_discount")%>% off</b></p>
                        <br>
                        <p id="dte"><u><%=rs.getString("offer_start_date")%></u> To <u><%=rs.getString("offer_end_date")%></u></p>
                        <br>

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
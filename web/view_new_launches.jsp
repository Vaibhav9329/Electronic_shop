
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View New Launches</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style type="text/css">
            span{
                margin-left: 200px;
            }
            .col-sm-6
            {
                padding: 20px;
            }
            #box
            {
                border: 2px solid black;
                margin-bottom: 50px;
                border-left: none;
                border-right: none;
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <%
                        Connection cn = null;
                        Statement st = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
                            st = cn.createStatement();
                            String sql = "Select * from tbl_new_launches";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {

                    %>
        <div class="row">
            <img src="<%=rs.getString("launch_image")%>" width="1050px" height="600px">
        </div>
        <div class="row" id="box">
             <div class="col-sm-6">
                 <span class="display-4"><%=rs.getString("launch_title")%></span>
             </div>
             <div class="col-sm-6">
                 <span class="display-4"><%=rs.getString("launch_date")%></span>
             </div>
        </div>
             <%
                            }
                        } catch (Exception ex) {
                            System.out.println(ex.toString());
                        }
           %>
    </body>
</html>

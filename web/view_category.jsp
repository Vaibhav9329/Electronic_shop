<%-- 
    Document   : view_category
    Created on : 7 Apr, 2023, 11:04:53 AM
    Author     : acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style type="text/css">
            .rows{
                margin-top: 100px;
            }


            #cat_name
            {
                text-align: left;
                margin-left: 0px;
                font-size: 24px;
                color: orange;
            }

            img
            {
                border: 2px solid whitesmoke;
            }

            body
            {
                background: #FFEEEE;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #DDEFBB, #FFEEEE);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #DDEFBB, #FFEEEE); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }


            .col-sm-3
            {
                margin-top: 37px;
                display:inline-block;
                border: 2px solid whitesmoke;
                border-right: none;
                padding: 10px;
                margin-bottom: 30px;
            }
            
            .container
            {
                margin-bottom: 192px;
            }

        </style>
    </head>
    <body>
         <%@include file="navbar.jsp" %>
         <br>
            <div class="container">
                <div class="row">
                    <%
                        Connection cn = null;
                        Statement st = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
                            st = cn.createStatement();
                            String sql = "Select * from tbl_add_category";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {

                    %>

                    <div class="col-sm-3 bg-light">
                        <form action="view_category" method="post">
                        <a href="#"><img src="<%=rs.getString("cat_image")%>" height="200px" width="309px"></a>
                        <br>
                        <br>
                        <p id="cat_name"><b><%=rs.getString("cat_name")%></b></p>
                        <input type="hidden" name="cname" value="<%=rs.getString("cat_name")%>">
                        <hr>
                        <p><b>Description:</b> <small><%=rs.getString("description")%> </small></p>
                        <hr>

                        <button class="btn btn-warning" name="btn_view" value="Add">View Products</button>
                         </form>
                    </div>
                    <%
                            }
                        } catch (Exception ex) {
                            System.out.println(ex.toString());
                        }
                    %>
                </div>
            </div>
       
    </body>
</html>

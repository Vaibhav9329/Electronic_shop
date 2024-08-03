<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>products</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style type="text/css">
            .container
            {
                margin-top: 100px;
            }

            small,#rs
            {
                font-size: 30px;
            }

            .col-sm-2
            {
                padding: 6px;
            }

            img
            {
                border: 5px solid whitesmoke;
            }

            body
            {
                background: #FFEEEE;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #DDEFBB, #FFEEEE);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #DDEFBB, #FFEEEE); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }

            .col-sm-8
            {
                padding-left: 40px;
            }
            .col-sm-1
            {
                background: #FFEEEE;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #DDEFBB, #FFEEEE);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #DDEFBB, #FFEEEE); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }

            button
            {
                width: 100px;
                float: right;
            }

            b
            {
                color: brown;
            }

            #product_name
            {
                color: slategray;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <%
                        Connection cn = null;
                        Statement st = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
                            st = cn.createStatement();
                            String sql = "Select * from tbl_add_product where cat_name='" + session.getAttribute("cname") + "'";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <form action="view_products" method="post">
            <div class="row bg-light">
                <div class="col-sm-3">
                    <img src="<%=rs.getString("product_image")%>"  width="300px">
                </div>
                <div class="col-sm-8">
                    <p id="cat_name"><b class="display-6 " id="product_name"><%=rs.getString("product_name")%></b></p><p><i class="bg-success text-light"><%=rs.getString("availability")%></i></p>
                    <input type="hidden" name="p_name" value="<%=rs.getString("product_name")%>">
                    <h6><b>Brand:</b>&nbsp <%=rs.getString("company")%></h6>
                    <hr>
                    <h6><b>Description: </b></h6>
                    <p><%=rs.getString("product_desc")%></p>
                    <hr>
                </div>
            </div>
            <div class="row bg-light">
                <div class="col-sm-3"><button class="btn btn-warning" name="btn_buy" value="Add">Buy Now</button></div>
                <div class="col-sm-8">
                    <p id="rs">Rs.<small class="text-success"><%=rs.getString("discounted_price")%>/-</small><small>&nbsp&nbsp&nbsp Rs.<s class="text-dark"><%=rs.getString("original_price")%></s>/-   </small></p>
                    <input type="hidden" name="price" value="<%=rs.getString("discounted_price")%>">
                </div>
            </div>
                    </form>
                <br><br>
                
                
                 <%

                            }
                        } catch (Exception ex) {
                            System.out.println(ex.toString());
                        }
                    %>
        </div>
    </body>
</html>

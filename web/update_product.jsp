<%-- 
    Document   : update_product
    Created on : 28 Mar, 2023, 2:48:03 PM
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
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <title>Update Product</title>
        <style type="text/css">
            body
            {
                background: #ff7e5f;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #feb47b, #ff7e5f);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #feb47b, #ff7e5f); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

            }
            #siz
            {
                padding:25px;
                margin-top: 50px;
                border: 2px solid white;
                border-radius: 14px;
            }
            label{
                color: brown;
            }
        </style>
    </head>
    <body>
        <script src="validation.js"></script>
        <form action="Add_product" method= "post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8  bg-light" id="siz">
                        <div class="row" id="bx2">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8" id="bx">
                                <h3 class=" display-6 fw-bold"><center>Update Product</center></h3>
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Product category:<span style="color: red">*</span></label>
                                <select  name="category" class="form-control" required="required">
                                    <option selected disabled value="">select</option>                   <%
                            Connection cn = null;
                            Statement st = null;
                           


                            String sql = " ";
                            String name = request.getParameter("cat_name");
                            String event = request.getParameter("btn");

                           
                                sql = "select * from tbl_add_category ";
                        

                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
                                st = cn.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                        %>
                                    
                                    <option><%=rs.getString("cat_name")%></option>
                                     <%
                                }
                            } catch (Exception ex) {
                                out.println(ex.toString());
                            }

                        %>
                                </select>
                            </div>
                            <div class="col-sm-6">
                                <label>Product Name:<span style="color: red">*</span></label>
                                <input type="text" name="txt_productname" placeholder="Enter Products Name" value="<%=request.getParameter("pname")%>" onkeypress="javascript:return isString(event)" maxlength="50" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-6">
                                <label>Company Name:<span style="color: red">*</span></label>
                                <input type="text" name="txt_company_name" placeholder="Enter Company Name" value="<%=request.getParameter("company")%>" onkeypress="javascript:return isString(event)" maxlength="50" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Product Image:<span style="color: red">*</span></label>
                                <input type="file" name="img_product" placeholder="Choose Image" value="<%=request.getParameter("prod_img")%>" class="form-control">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-6">
                                <label>Product Description:<span style="color: red">*</span></label>
                                <textarea rows="2" class="form-control" name="txt_productdescription" placeholder="Describe Product" maxlength="300" required><%=request.getParameter("prod_desc")%></textarea>
                            </div>
                            <div class="col-sm-6 mt-1">
                                <label>Availability:<span style="color: red">*</span></label>
                                <select name="txt_availability" value="<%=request.getParameter("avail")%>" class="form-control" required>
                                    <option selected disabled value="">Not Selected</option>
                                    <option value="Available">Available</option>
                                    <option value="Few In Stock">Few In Stock</option>
                                    <option value="Out Of Stock">Out Of Stock</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-sm-6">
                                <label>Original Price:<span style="color: red">*</span></label>
                                <input type="text" name="txt_original_price" placeholder="Original(M.R.P)" value="<%=request.getParameter("o_price")%>" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Discounted Price:<span style="color: red">*</span></label>
                                <input type="text" name="txt_discounted_price" placeholder="Discounted Price" value="<%=request.getParameter("d_price")%>" class="form-control" required>
                            </div>
                        </div>

                        <div class="row mt-5">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-3">
                                <input type="submit" name="txt_add" value="Update" class="btn btn-success form-control">
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" name="txt_add" value="Delete" class="btn btn-danger form-control">
                            </div>
                             <div class="col-sm-3"></div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-5"></div>
                            <div class="col-sm-6">
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
    </form>
</body>
</html>


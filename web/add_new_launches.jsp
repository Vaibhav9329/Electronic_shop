<%-- 
    Document   : add_new_launches
    Created on : 15 Feb, 2023, 10:59:42 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Launches</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
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
            #mov
            {
                margin-right: 0px;
            }
            label{
                color: brown;
            }
            #logcol{
                background: linear-gradient(to right,  #dc2430 0%, #7b4397 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <script src="validation.js"></script>
        <form action="addNewLaunches" method= "post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8  bg-light" id="siz">
                        <div class="row" id="bx2">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8" id="bx">
                                <h3 class=" display-7 text-dark fw-bold" id="logcol"><center>Add New Launches</center></h3>
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Launch Title:<span style="color: red">*</span></label>
                                <input type="text" name="txt_Launchtitle" placeholder="Enter Launch Title" onkeypress="javascript:return isString(event)" maxlength="50" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Launch Image:<span style="color: red">*</span></label>
                                <input type="File" name="img_launch"  class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-4">
                                <label>Category Name:<span style="color: red">*</span></label>
                                <input type="text" name="category_name" placeholder="Category" maxlength="50" class="form-control" required>
                            </div>
                            <div class="col-sm-4 ">
                                <label>Product Name:<span style="color: red">*</span></label>
                                <input type="text" name="product_name" placeholder="Product name" maxlength="50" class="form-control" required>   
                            </div>
                            <div class="col-sm-4">
                                <label>Launch Date:<span style="color: red">*</span></label>
                                <input type="date" name="dte_end" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-8">
                                <label>Launch Description:<span style="color: red">*</span></label>
                                <textarea rows="2" class="form-control" name="txt_launch_disc" placeholder="Describe Here" maxlength="200" required></textarea>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <div class="row mt-5">
                            
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                                <input type="submit" name="btn_add" value="Add" class="btn btn-success form-control">
                            </div>
                            <div class="col-sm-4">
                            </div>
                            
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                                <a href="http://localhost:8080/Electronics_shop/manage_launches.jsp" class="btn btn-dark form-control">Manage Launches</a>
                            </div>
                            <div class="col-sm-4"></div>
                        </div> 
                   </div>
                </div>
        </form>
    </body>
</html>

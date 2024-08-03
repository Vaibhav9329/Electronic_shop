<%-- 
    Document   : add_category
    Created on : 15 Feb, 2023, 10:53:34 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <title>Add Catagory</title>
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
                margin-top: 40px;
                margin-bottom: 100px;
                border: 2px solid white;
                border-radius: 14px;
            }
            label{
                color: brown;
            }
            #LogCol{
                background: linear-gradient(to right,  #dc2430 0%, #7b4397 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <script src="validation.js"></script>
        <form action="addCategory" method= "post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6 border bg-light" id="siz">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3 class=" display-7 fw-bold" id="LogCol">Add Category</h3>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-12">
                                <label>Category Name:<span style="color: red">*</span></label>
                                <input type="text" name="txt_catname" placeholder="Enter Category Name" onkeypress="javascript:return isString(event)" maxlength="50" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-12">
                                <label>Category Image:<span style="color: red">*</span></label>
                                <input type="file" name="cat_image" placeholder="Choose Image" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-sm-12">
                                <label>Category Description:<span style="color: red">*</span></label>
                                <textarea rows="2" name="cat_description" class="form-control" maxlength="200" placeholder="Describe About Category" required></textarea>
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                                <input type="submit" name="btn_add" value="Add" class="btn btn-success form-control">
                            </div>
                            <div class="col-sm-4">
                            </div>
                            <!--                            <div class="col-sm-3">
                                                            <input type="submit" name="btn_add" value="Search" class="btn btn-warning form-control text-light">
                                                        </div>-->
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                                <a href="http://localhost:8080/Electronics_shop/manage_category.jsp" class="btn btn-dark form-control">Manage Category</a>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <div class="col-sm-3"></div>
                    </div>
                    </form>
                    </body>
                    </html>

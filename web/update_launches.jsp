<%-- 
    Document   : update_launches
    Created on : 28 Mar, 2023, 3:36:46 PM
    Author     : acer
--%>

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
        <title>Update Launches</title>
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
        </style>
    </head>
    <body>
        <script src="validation.js"></script>
        <form action="addNewLaunches" method= "post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8  bg-light" id="siz">
                        <div class="row" id="bx2">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8" id="bx">
                                <h3 class=" display-7 text-dark fw-bold"><center>Update Launches</center></h3>
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Launch Title:<span style="color: red">*</span></label>
                                <input type="text" name="txt_Launchtitle" placeholder="Enter Launch Title" value="<%=request.getParameter("title")%>" onkeypress="javascript:return isString(event)" maxlength="50" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Launch Image:<span style="color: red">*</span></label>
                                <input type="File" name="img_launch" value="<%=request.getParameter("launch_img")%>" class="form-control">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-4">
                                <label>Category Name:<span style="color: red">*</span></label>
                                <input type="text" name="category_name" placeholder="Category" value="<%=request.getParameter("Cat")%>" maxlength="50" class="form-control" required>
                            </div>
                            <div class="col-sm-4 ">
                                <label>Product Name:<span style="color: red">*</span></label>
                                <input type="text" name="product_name" placeholder="Product name" value="<%=request.getParameter("product")%>" maxlength="50" class="form-control" required>   
                            </div>
                            <div class="col-sm-4">
                                <label>Launch Date:<span style="color: red">*</span></label>
                                <input type="date" name="dte_end" value="<%=request.getParameter("date")%>" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-8">
                                <label>Launch Description:<span style="color: red">*</span></label>
                                <textarea rows="2" class="form-control" name="txt_launch_disc" placeholder="Describe Here" maxlength="200" required><%=request.getParameter("desc")%></textarea>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <div class="row mt-5">
                            
                            <div class="col-sm-3">
                                
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" name="btn_add" value="Update" class="btn btn-success form-control">
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" name="btn_add" value="Delete" class="btn btn-danger form-control">
                            </div>
                            <div class="col-sm-3">
                               
                            </div>
                            
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-5"></div>
                            <div class="col-sm-6">
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                    </div>
                </div>
        </form>
    </body>
</html>

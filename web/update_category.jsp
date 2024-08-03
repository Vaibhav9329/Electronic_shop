<%-- 
    Document   : update_category
    Created on : 28 Mar, 2023, 3:20:26 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <title>Update Category</title>
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
        <script src="validation.js"></script>
        <form action="addCategory" method= "post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6 border bg-light" id="siz">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3 class=" display-7 fw-bold" id="LogCol">Update Category</h3>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-12">
                                <label>Category Name:<span style="color: red">*</span></label>
                                <input type="text" name="txt_catname" value="<%=request.getParameter("cname")%>"  placeholder="Enter Category Name"  onkeypress="javascript:return isString(event)" maxlength="50" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-12">
                                <label>Category Image:<span style="color: red">*</span></label>
                                <input type="file" name="cat_image" value="<%=request.getParameter("img")%>"  placeholder="Choose Image" class="form-control">
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-sm-12">
                                <label>Category Description:<span style="color: red">*</span></label>
                                <textarea rows="2" name="cat_description" class="form-control" maxlength="200" placeholder="Describe About Category" required><%=request.getParameter("des")%></textarea>
                            </div>
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
                            <div class="col-sm-4"></div>
                            <div class="col-sm-6">
                            </div>
                            <div class="col-sm-3"></div>
                        </div>
                        <div class="col-sm-3"></div>
                    </div>
                    </form>
                    </body>
                    </html>


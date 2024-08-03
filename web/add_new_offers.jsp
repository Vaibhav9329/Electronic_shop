<%-- 
    Document   : add_new_offers
    Created on : 15 Feb, 2023, 11:07:08 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Offers</title>
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
            label{
                color: brown;
            }
            #mov
            {
                margin-right: 0px;
            }
            #logcol{
                background: linear-gradient(to right,  #dc2430 0%, #7b4397 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }
        </style>
        <script src="validation.js"></script>
    </head>
    <body>
        <form action="addNewOffers" method= "post">
            <%@include file="header.jsp" %>
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8  bg-light" id="siz">
                        <div class="row" id="bx2">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4" id="bx">
                                <h3 class=" display-7 text-dark fw-bold" id="logcol"><center>Add New Offers</center></h3>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Offer Name:<span style="color: red">*</span></label>
                                <input type="text" name="txt_offername" placeholder="Enter offer Name" onkeypress="javascript:return isString(event)" maxlength="50" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Offer Image:<span style="color: red">*</span></label>
                                <input type="File" name="img_offer"  class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Start Date:<span style="color: red">*</span></label>
                                <input type="date" name="dte_start" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>End Date:<span style="color: red">*</span></label>
                                <input type="date" name="dte_end"  class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Discount:<span style="color: red">*</span></label>
                                <input type="text" name="txt_discount" placeholder="Enter Discount" maxlength="2" class="form-control" required onkeypress="javascript:return isNumber(event)">
                            </div>
                            <div class="col-sm-6">
                                <label>Category:<span style="color: red">*</span></label>
                                <input type="text" name="txt_category" placeholder="Category"  class="form-control" maxlength="50" required>
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
                                <a href="http://localhost:8080/Electronics_shop/manage_offers.jsp" class="btn btn-dark form-control">Manage Offers</a>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>

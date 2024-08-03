<%-- 
    Document   : add_customer_care
    Created on : 15 Feb, 2023, 11:03:53 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Customer Care</title>
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
        <%@include file="header.jsp" %>
        <script src="validation.js"></script>
        <form action="addCustomerCare" method= "post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6  bg-light" id="siz">
                        <div class="row" id="bx2">
                            <div class="col-sm-12" id="bx">
                                <h3 class=" display-7 text-dark fw-bold"><center>Add Customer Care</center></h3>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-12">
                                <label>Customer Care Title:</label>
                                <input type="text" name="txt_caretitle" placeholder="Enter Launch Title"  onkeypress="javascript:return isString(event)" maxlength="50" class="form-control">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-6">
                                <label>Email:</label>
                                <input type="Email" name="txt_email"  placeholder="Ex. abc123@gmail.com" class="form-control">
                            </div>
                            <div class="col-sm-6 ">
                                <label>Contact:</label>
                                <input type="text" name="txt_Contact" placeholder="+91 0000000000" maxlength="10" class="form-control">
                            </div>
                        </div>
                         <div class="row mt-5">
                                <div class="col-sm-3">
                                    <input type="submit" name="btn_update" value="Update" class="btn btn-success form-control">
                                </div>
                                <div class="col-sm-3">
                                    <input type="submit" name="btn_Cancel" value="Cancel" class="btn btn-danger form-control">
                                </div>
                                <div class="col-sm-3">
                                </div>
                                <div class="col-sm-3">
                                </div>
                            </div>
                        <div class="col-sm-3"></div>
                    </div>
                </div>
        </form>
    </body>
</html>

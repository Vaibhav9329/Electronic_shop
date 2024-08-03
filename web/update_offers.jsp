<%-- 
    Document   : update_offers
    Created on : 28 Mar, 2023, 3:27:48 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Offer</title>
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
        </style>
    </head>
    <body>
        <script src="validation.js"></script>
        <form action="addNewOffers" method= "post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8  bg-light" id="siz">
                        <div class="row" id="bx2">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4" id="bx">
                                <h3 class=" display-7 text-dark fw-bold"><center>Update Offer</center></h3>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Offer Name:<span style="color: red">*</span></label>
                                <input type="text" name="txt_offername" placeholder="Enter offer Name" value="<%=request.getParameter("offer")%>"  onkeypress="javascript:return isString(event)" maxlength="50" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Offer Image:<span style="color: red">*</span></label>
                                <input type="File" name="img_offer" value="<%=request.getParameter("offer_img")%>"  class="form-control">
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Start Date:<span style="color: red">*</span></label>
                                <input type="date" name="dte_start" value="<%=request.getParameter("start_date")%>"  class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>End Date:<span style="color: red">*</span></label>
                                <input type="date" name="dte_end" value="<%=request.getParameter("end_date")%>"   class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Discount:<span style="color: red">*</span></label>
                                <input type="text" name="txt_discount" placeholder="Enter Discount" value="<%=request.getParameter("discount")%>"  onkeypress="javascript:return isNumber(event)" maxlength="2" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Category:<span style="color: red">*</span></label>
                                <input type="text" name="txt_category" placeholder="Category" value="<%=request.getParameter("cat")%>" maxlength="50" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" name="btn_add" value="Update" class="btn btn-warning form-control">
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" name="btn_add" value="Delete" class="btn btn-danger form-control">
                            </div>
                            <div class="col-sm-3">
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
>

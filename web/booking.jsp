<%-- 
    Document   : booking
    Created on : 15 Feb, 2023, 11:12:21 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <title>booking</title>
        <style type="text/css">
            body
            {
                 background: #FFEEEE;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #DDEFBB, #FFEEEE);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #DDEFBB, #FFEEEE); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

            }
            #siz
            {
                padding:25px;
                margin-top: 50px;
                border: 2px solid white;
                border-radius: 14px;
            }
        </style>
        <script>
            
            function cal()
            {
                var a=document.getElementById("price").value;
                var b=document.getElementById("qty").value;
                 
                 
                document.getElementById("tamount").value=a*b;
                 
                
            }
        </script>
        <script type="text/javascript">
            window.onload=function(){
                var today = new Date().toISOString().split('T')[0];
                document.getElementsByName("txt_datetime")[0].setAttribute('min', today);
                document.getElementsByName("txt_datetime")[0].setAttribute('max', today);
            }

        </script>

    </head>
    <body>
        <script src="validation.js"></script>
        <form action="Booking" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8  bg-light" id="siz">
                        <div class="row" id="bx2">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4" id="bx">
                                <h3 class=" display-6 text-danger fw-bold"><center>Booking</center></h3>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <label>Full Name:</label>
                                <input type="text" name="txt_fullname" placeholder="Enter Full Name" value="<%=session.getAttribute("full_name")%>" onkeypress="javascript:return isString(event)" maxlength="40" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <label>Address: </label>
                                <textarea name="address" rows="2" class="form-control" placeholder="Address" maxlength="500" required></textarea>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-6 mt-1">
                                <label>Email: </label>
                                <input type="email" name="txt_email" placeholder="Enter Email" value="<%=session.getAttribute("email")%>" maxlength="30" class="form-control required" required>
                            </div>
                            <div class="col-sm-6 mt-1">
                                <label>Contact: </label>
                                <input type="text" name="txt_contact" placeholder="+91 0000000000" onkeypress="javascript:return isContactno(event)" maxlength="10" class="form-control required" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-4">
                                <label>Products Name:</label>
                                <input type="text" name="product_name" placeholder="Enter Products Name" value="<%=session.getAttribute("p_name")%>" onkeypress="javascript:return isString(event)" maxlength="50"class="form-control" required>
                            </div>
                            <div class="col-sm-4">
                                <label>Price:</label>
                                <input type="text" name="txt_price" id="price" placeholder="Enter price" value="<%=session.getAttribute("price")%>" onkeypress="javascript:return isNumber(event)" onkeyup="cal()" maxlength="5" class="form-control" required>
                            </div>
                            <div class="col-sm-4">
                                <label>Quantity:</label>
                                <input type="text" name="txt_Qty" id="qty" placeholder="Qty" onkeypress="javascript:return isNumber(event)" onkeyup="cal()" maxlength="1"  class="form-control" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-sm-4">
                                <label>Total Amount:</label>
                                <input type="text" name="txt_totalamount" id="tamount" placeholder="Total Amount" onkeypress="javascript:return isNumber(event)" onkeyup="cal()"  maxlength="6" class="form-control" required>

                            </div>
                            <div class="col-sm-4">
                                <label>Date:</label>
                                <input type="date" name="txt_datetime"  class="form-control" required>
                            </div>
                            <div class="col-sm-4">
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" name="btn_proceed" value="Proceed" class="btn btn-primary form-control">
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" name="btn_cancel" value="Cancel" class="btn btn-danger form-control">
                            </div>
                            <div class="col-sm-3">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </form>
    </body>
</html>

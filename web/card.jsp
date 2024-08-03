<%-- 
    Document   : Card
    Created on : 15 Feb, 2023, 9:23:34 PM
    Author     : harsh
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Debit/Credit Card</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="validation.js"></script>

        <style>
            .container
            {
                border: solid 2px whitesmoke;
                margin-top: 40px;
                margin-bottom: 20px;
                width: 60%;
                padding-right: 60px;
                background-color: white;
                border-radius: 20px;
                padding: 20px;
                background-image: url("https://cdn.dribbble.com/users/6163565/screenshots/14794845/media/f48d1277d487aa7a697e2c1b022736bb.png?compress=1&resize=1000x750&vertical=top");
                background-repeat: no-repeat;
                background-size: cover;
            }
            body
            {


            }

            label{
                color: black;

            }
        </style>
    </head>
    <body>
        <form action="cardpay" method="post">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-8">
                        <h1 style="color: whitesmoke"><b>Debit/Credit Card</b></h1>
                    </div>
                </div><br><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-9">
                        <label>Card Holder Name: </label>
                        <input type="text" name="txt_name"  placeholder="Cardholder Name" width="100%" value="" class="form-control" maxlength="50" required>            
                    </div>
                    <div class="col-md-1"></div>
                </div><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-2"><label>Card Number:<span style="color: red">*</span></label></div>
                    <div class="col-md-4"></div>
                    <div class="col-md-3">
                        <label>Expiry Date:<span style="color: red">*</span></label>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-5">
                        <input type="text" name="txt_no"  placeholder="Enter Card No" class="form-control"onkeypress="javascript:return isNumber(event)"maxlength="12" required>            
                    </div>

                    <div class="col-md-2">
                        <select class="form-control"  name="txt_month" required>
                            <option>Month</option>
                            <option>January</option>
                            <option>February</option>
                            <option>March</option>
                            <option>April</option>
                            <option>May</option>
                            <option>June</option>
                            <option>July</option>
                            <option>August</option>
                            <option>September</option>
                            <option>October</option>
                            <option>November</option>
                            <option>December</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <select  class="form-control" name="txt_year" required>
                            <option>year</option>
                            <option>2023</option>
                            <option>2024</option>
                            <option>2025</option>
                            <option>2026</option>
                            <option>2027</option>
                            <option>2028</option>
                            <option>2029</option>
                            <option>2030</option>
                            <option>2031</option>
                            <option>2032</option>
                            <option>2033</option>
                            <option>2034</option>
                            <option>2035</option>
                            <option>2036</option>
                            <option>2037</option>
                            <option>2038</option>
                            <option>2039</option>
                            <option>2040</option>
                            <option>2041</option>
                            <option>2042</option>
                            <option>2043</option>
                            <option>2044</option>
                            <option>2045</option>
                        </select>

                    </div>
                </div><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-5">
                        <label>Cvv No:<span style="color: red">*</span></label>
                        <input type="password" name="txt_number" placeholder="Enter Cvv"  class="form-control" onkeypress="javascript:return isNumber(event)" maxlength="3" minlength="3" required>            
                    </div>
                    <div class="col-md-4">
                        <label>Total Amount:</label>
                        <input type="text" name="txt_amount" placeholder="Amount" value="<%=session.getAttribute("total_amount")%>" class="form-control" onkeypress="javascript:return isNumber(event)" maxlength="10" required>            
                    </div>
                </div><br><br><br>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3">
                        <input type="submit" name="txt_btn" value="Pay" class="btn btn-light text-success form-control">
                    </div>
                    <div class="col-md-3">
                        <input type="submit" name="txt_btn" value="Cancel" class="btn btn-light text-danger form-control">
                    </div>
                    <div class="col-md-3"></div>
                </div><br>
                
            </div>
        </form>
    </body>
</html>
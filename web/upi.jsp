
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPI</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="validation.js"></script>
        <style>
            .container
            {
                border: solid 2px whitesmoke;
                width: 30%;
                height: 400px;
                margin: auto auto auto auto;
                border-radius: 12px;
                padding: 20px;
                margin-top: 60px;
                background-color: darkseagreen;
                background-repeat: no-repeat;
                background-size: cover;
            }
            
            label{
                color:black;
            }
        </style>
    </head>
    <body><form action="upipay" method="post">
        <div class="container">
            <div class="row">
                  <div class="col-md-12">
                      <center><h1 style="color: white">UPI</h1></center> 
                  </div>
            </div><br>
            <div class="row">
                 <div class="col-md-12">
                    <label>UPI Id: <span style="color: red">*</span></label>
                    <input type="text" name="txt_upi" required="" placeholder="Enter UPI Id" value="rprohit136@okaxis" class="form-control" maxlength="30">
                </div>
            </div><br>
             <div class="row">
                  <div class="col-md-12">
                    <label>Amount:</label>
                    <input type="text" name="txt_amount" placeholder="Amount" value="<%=session.getAttribute("total_amount")%>" class="form-control" onkeypress="javascript:return isFloat(event)"maxlength="20">
                </div>
             </div><br><br><br>
            <div class="row">
                <div class="col-md-3"></div>
                 <div class="col-md-3">
                     <input type="submit" name="txt_btn" value="Pay" class="btn btn-success form-control">
                 </div>
                <div class="col-md-3"> <input type="reset" name="txt_btn" value="Cancel" class="btn btn-danger form-control">
                </div>
                <div class="col-md-3"></div>
            </div><br>
        </div>
       </form>
    </body>
</html>
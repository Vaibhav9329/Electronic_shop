<%-- 
    Document   : view_reports.jsp
    Created on : 9 May, 2023, 11:18:20 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <title>View Reports</title>
        <style>
            .conatiner
            {
                padding: 100px;
                background-color: white;
            }
            hr
            {
                width: 309px;
            }
            .row
            {
                background-color: white;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <h1><b><center class="display-1 text-primary mt-5">View Reports</center></b></h1>
        <form action="Report.jsp" method="post">
            <div class="conatiner">
                <div class="row">
                    <div class="col-sm-3 bg-light">
                        <a href="#"><img src="https://media.istockphoto.com/id/1322384899/vector/documents-icon-stack-of-paper-sheets-confirmed-or-approved-document-business-icon-3d-vector.jpg?s=612x612&w=0&k=20&c=5_cmAiEuef6MnGt9TX4XaIbmEr4SlCBe_a341w6laMk=" height="200px" width="309px"></a>
                        <br>
                        <br>
                        <p id="cat_name"><b>Added Category Report</b></p>
                        <hr>
                        <input type="submit" class="btn btn-warning" name="btn_view" value="Category Report" >
                    </div>

                    <div class="col-sm-3 bg-light">
                        <a href="#"><img src="https://kit8.net/wp-content/uploads/edd/2022/06/spending_statistics_preview.jpg" height="200px" width="309px"></a>
                        <br>
                        <br>
                        <p id="cat_name"><b>Added Products Report</b></p>
                        <hr>
                        <input type="submit" class="btn btn-warning" name="btn_view" value="Products Report" >
                    </div>

                    <div class="col-sm-3 bg-light">
                        <a href="#"><img src="https://kit8.net/wp-content/uploads/edd/2022/06/laptop_preview.jpg" height="200px" width="309px"></a>
                        <br>
                        <br>
                        <p id="cat_name"><b>Added Launch Report</b></p>
                        <hr>
                        <input type="submit" class="btn btn-warning" name="btn_view" value="Launch Report" >
                    </div>

                    <div class="col-sm-3 bg-light">
                        <a href="#"><img src="https://kit8.net/wp-content/uploads/edd/2022/06/control_panel_preview.jpg" height="200px" width="309px"></a>
                        <br>
                        <br>
                        <p id="cat_name"><b>Added Offers Report</b></p>
                        <hr>
                        <input type="submit" class="btn btn-warning" name="btn_view" value="Offer Report" >
                    </div>

                </div>
                <br>
                <BR>
                <div class="row">
                    <div class="col-sm-3 bg-light">
                        <a href="#"><img src="data:image/jpeg;base64,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" height="200px" width="309px"></a>
                        <br>
                        <br>
                        <p id="cat_name"><b>All Orders Report</b></p>
                        <hr>
                        <input type="submit" class="btn btn-warning" name="btn_view" value="Orders Report" >
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>

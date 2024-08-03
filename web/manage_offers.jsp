<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manage offers</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                background: #fff;
                padding: 20px 25px;
                border-radius: 3px;
                min-width: 1000px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {        
                padding-bottom: 15px;
                background: #435d7d;
                color: #fff;
                padding: 16px 30px;
                min-width: 100%;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-title .btn-group {
                float: right;
            }
            .table-title .btn {
                color: #fff;
                float: right;
                font-size: 13px;
                border: none;
                min-width: 50px;
                border-radius: 2px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }	
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
                outline: none !important;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #F44336;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }	
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {        
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }    
            /* Custom checkbox */
            .custom-checkbox {
                position: relative;
            }
            .custom-checkbox input[type="checkbox"] {    
                opacity: 0;
                position: absolute;
                margin: 5px 0 0 3px;
                z-index: 9;
            }
            .custom-checkbox label:before{
                width: 18px;
                height: 18px;
            }
            .custom-checkbox label:before {
                content: '';
                margin-right: 10px;
                display: inline-block;
                vertical-align: text-top;
                background: white;
                border: 1px solid #bbb;
                border-radius: 2px;
                box-sizing: border-box;
                z-index: 2;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                content: '';
                position: absolute;
                left: 6px;
                top: 3px;
                width: 6px;
                height: 11px;
                border: solid #000;
                border-width: 0 3px 3px 0;
                transform: inherit;
                z-index: 3;
                transform: rotateZ(45deg);
            }
            .custom-checkbox input[type="checkbox"]:checked + label:before {
                border-color: #03A9F4;
                background: #03A9F4;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                border-color: #fff;
            }
            .custom-checkbox input[type="checkbox"]:disabled + label:before {
                color: #b8b8b8;
                cursor: auto;
                box-shadow: none;
                background: #ddd;
            }
            /* Modal styles */
            .modal .modal-dialog {
                max-width: 400px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal .modal-content {
                border-radius: 3px;
                font-size: 14px;
            }
            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 3px 3px;
            }
            .modal .modal-title {
                display: inline-block;
            }
            .modal .form-control {
                border-radius: 2px;
                box-shadow: none;
                border-color: #dddddd;
            }
            .modal textarea.form-control {
                resize: vertical;
            }
            .modal .btn {
                border-radius: 2px;
                min-width: 100px;
            }	
            .modal form label {
                font-weight: normal;
            }	
        </style>
        <script>
            $(document).ready(function(){
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();
	
                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function(){
                    if(this.checked){
                        checkbox.each(function(){
                            this.checked = true;                        
                        });
                    } else{
                        checkbox.each(function(){
                            this.checked = false;                        
                        });
                    } 
                });
                checkbox.click(function(){
                    if(!this.checked){
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>
    </head>
    <body>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Offers</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="add_new_offers.jsp" class="btn btn-success"><i class="material-icons">&#xE147;</i>  Add New Offer</a>						
                            </div>
                        </div>
                    </div>
                    <form action="manage_offers.jsp" method="post">
                        <div class="row">
                            <div class="col-sm-12">
                                <input type="text" name="offer_name" placeholder="Offer Name" class="from-control">
                                <input type="submit" name="btn" value="Search" class="btn btn-primary">
                            </div>
                        </div>
                    </form>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Offer Id:</th>
                                <th>Offer Name:</th>
                                <th>Category:</th>
                                <th>Offer Image:</th>
                                <th>Start Date</th>
                                <th>End Date:</th>
                                <th>Discount(%):</th>
                                <th>Action:</th>
                            </tr>
                        </thead>
                        <%
                            Connection cn = null;
                            Statement st = null;
                            int counter = 1;
                            
                            String sql = " ";
                            String name = request.getParameter("offer_name");
                            String event = request.getParameter("btn");

                            if (event != null) {
                                sql = "select * from tbl_add_offer where offer_name='" + name + "' ";
                            } else {
                                sql = "select * from tbl_add_offer ";
                            }
                            
                            
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
                                st = cn.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                        %>
                        <tbody>
                            <tr>
                        <form action="update_offers.jsp" method="post">
                            <th scope="row" ><%=counter++%></th>
                            <td><%=rs.getString("offer_name")%></td>
                            <input type="hidden" name="offer" value="<%=rs.getString("offer_name")%>">
                            <td><%=rs.getString("cat_name")%></td>
                            <input type="hidden" name="cat" value="<%=rs.getString("cat_name")%>">
                            <td><%=rs.getString("offer_image")%></td>
                            <input type="hidden" name="offer_img" value="<%=rs.getString("offer_image")%>">
                            <td><%=rs.getString("offer_start_date")%></td>
                            <input type="hidden" name="start_date" value="<%=rs.getString("offer_start_date")%>">
                            <td><%=rs.getString("offer_end_date")%></td>
                            <input type="hidden" name="end_date" value="<%=rs.getString("offer_end_date")%>">
                            <td><%=rs.getString("offer_discount")%></td>
                            <input type="hidden" name="discount" value="<%=rs.getString("offer_discount")%>">
                            <td>
                                <button type="submit" name="btn_add" class="material-icons btn-outline-warning">
                                    <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                </button>
                                <button type="submit" name="btn_add" class="material-icons  btn-outline-danger">
                                    <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                </button>
                            </td>
                        </form>
                        </tr>


                        </tbody>
                        <%
                                }
                            } catch (Exception ex) {
                                out.println(ex.toString());
                            }

                        %>
                    </table>
                    <div class="clearfix">
                        <ul class="pagination">
                            <li class="page-item disabled"><a href="#">Previous</a></li>
                            <li class="page-item active"><a href="#" class="page-link">1</a></li>
                            <li class="page-item"><a href="#" class="page-link">2</a></li>
                            <li class="page-item "><a href="#" class="page-link">3</a></li>
                            <li class="page-item"><a href="#" class="page-link">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>        
        </div>
    </body>
</html>

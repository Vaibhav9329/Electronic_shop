<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Method</title>
        <link rel="stylesheet" href="bootstrap.min.css">

        <style>
            .container
            {
                border: solid 2px white;
                border-radius: 12px;
                margin-top: 80px;
                margin-bottom: 20px;
                width: 55%;
                background-color: white;
                background-image: url("https://mindster.com/mindster-blogs/wp-content/uploads/2020/01/2018-11-29-1.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                padding: 20px;
            }
            body
            {         
                background-color: whitesmoke;
            }

            a
            {
                background-color: orange;
                box-shadow: 0 5px 0 darkred;
                color: white;
                padding: 1em 1.5em;
                position: relative;
                text-decoration: none;
                text-transform: uppercase; 
            }

            a:hover {
                background-color: #03fc07;
            }

            #btn_cod{
                color: whitesmoke;
                background-color: orange;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <form action="payment" method="post">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-5">
                        <h1 style="color: whitesmoke">Payment Method</h1>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-4">
                    </div>
                </div><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-4">
                        <a href="card.jsp">Debit/Credit Card</a>            
                    </div>
                </div><br><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-4">
                        <a href="upi.jsp">UPI Payment</a>            
                    </div>
                </div><br><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-4"> 
                        <input type="submit" name="btn_cod" value="Cash On Delivary" id="btn_cod" class="form-control btn btn-warning">
                    </div>
                </div><br><br>
            </form>
        </div>

    </body>
</html>

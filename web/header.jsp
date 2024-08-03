<%-- 
    Document   : header
    Created on : 29 Mar, 2023, 5:22:25 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Navbar</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">SHREE ELECTRONICS</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarColor02">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link active" href="view_orders.jsp">VIEW ORDERS
                                <span class="visually-hidden">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="add_category.jsp">ADD CATEGORY</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="add_product.jsp">ADD PRODUCT</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="add_new_offers.jsp">ADD OFFERS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="add_new_launches.jsp">ADD NEW LAUNCHES</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">MORE</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="view_reports.jsp">VIEW ALL REPORTS</a>
                                <a class="dropdown-item" href="view_feedback.jsp">CUSTOMER'S FEEDBACK</a>
                                <a class="dropdown-item" href="view_users.jsp">VIEW USERS</a>
                                <a class="dropdown-item" href="index.html">LOG OUT</a>
                                <!--            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                          </div>-->
                        </li>
                    </ul>
                    <!--      <form class="d-flex">
                            <input class="form-control me-sm-2" type="search" placeholder="Search">
                            <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                          </form>-->
                </div>
            </div>
        </nav>
    </body>
</html
<%-- 
    Document   : navbar
    Created on : 31 Mar, 2023, 4:09:01 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHREE ELECTRONICS</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">SHREE  ELECTRONICS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="view_category.jsp">CATEGORY
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view_offers.jsp">OFFERS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view_new_launches.jsp">NEW LAUNCHES</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="About_us.jsp">ABOUT US</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact_us.jsp">CONTACT US</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">MORE</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="my_orders.jsp">MY ORDERS</a>
            <a class="dropdown-item" href="my_profile.jsp">MY ACCOUNT</a>
            <a class="dropdown-item" href="feedback.jsp">FEEDBACK</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="index.html">LOG OUT</a>
          </div>
        </li>
      </ul>
    </div>
  </div>
</nav>
    </body>
</html>

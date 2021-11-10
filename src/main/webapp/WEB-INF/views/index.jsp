<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
 
 <!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />

    <title>Home Page</title>
    <!-- <style>
      body {
        background-color: rgb(240, 240, 152);
      }
    </style> -->
  </head>

  <body>
   
   <jsp:include page="header.jsp"></jsp:include>

    <div id="demo" class="carousel slide" data-ride="carousel">
      <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0"></li>
        <li data-target="#demo" data-slide-to="1" class="active"></li>
        <li data-target="#demo" data-slide-to="2"></li>
      </ul>
      <div class="carousel-inner">
        <div class="carousel-item">
          <img src="${pageContext.request.contextPath}/resources/images/back.jpeg" alt="Los Angeles" width="100%" height="550" />
          <div class="carousel-caption">
          </div>
        </div>
        <div class="carousel-item  active">
          <img src="${pageContext.request.contextPath}/resources/images/slider1.jpg" alt="Chicago" width="100%" height="550" />
          <div class="carousel-caption">
          </div>
        </div>
        <div class="carousel-item">
          <img src="${pageContext.request.contextPath}/resources/images/pizza.jpeg" alt="New York" width="100%" height="550" />
          <div class="carousel-caption">
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>

    <br />
    <br />
    <br />

    <div class="container" style="margin-bottom: 2%">
      <div class="row">
        <div class="col-sm">
          <div class="card" style="width: 19rem">
            <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/hakka.jpeg" alt="Card image cap" />
            <h5 class="card-header">Chinese</h5>
            <div class="card-body">
              <p class="card-text">
                Hakka noodles tossed with stir fried veggies and simple
                Indo-Chinese flavors. And including many more varities of 
                chinese.
              </p>
            </div>
          </div>
        </div>
        
        <div class="col-sm">
        <div class="card" style="width: 19rem;">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/shake.jpeg" alt="Card image cap">
          <h5 class="card-header">Smoothies and Shakes</h5>
          <div class="card-body">
            <p class="card-text">Fresh and thick shakes are available for you. Soft smoothies with dry fruits will give you a different joy.</p>
          </div>
        </div>
      </div>
      <div class="col-sm">
        <div class="card" style="width: 19rem;">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/pizza3.jpeg" alt="Card image cap">
          <h5 class="card-header">Pizza</h5>
          <div class="card-body">

            <p class="card-text">Freshly baked cheese loaded Pizzas available here. You will get variety of toppings includind cheese burst in your selected Pizza.
    
            </p>
          </div>
        </div>
      </div>
        
       </div>
      <br />
      <br />
      
      <div class="row">
      <div class="col-sm">
        <div class="card" style="width: 19rem;">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/burger.jpeg" alt="Card image cap">
          <h5 class="card-header">Burger and Fries</h5>
          <div class="card-body">

            <p class="card-text">Best Burger and Fries combo available for you. Mac Maharaja Burger with cheese mayo
              Fries experimented by our chef.</p>

          </div>
        </div>
      </div>
      <div class="col-sm">
        <div class="card" style="width: 19rem;">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/whitepasta.jpeg" alt="Card image cap">
          <h5 class="card-header">Pasta</h5>
          <div class="card-body">

            <p class="card-text">Hot and sizzling Pasta and Macroni available. Sizzling Italian style pasta available here with variety of sauces. </p>

          </div>
        </div>
      </div>
      <div class="col-sm">
        <div class="card" style="width: 19rem;">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/doracake.jpeg" alt="Card image cap">
          <h5 class="card-header">Deserts</h5>
          <div class="card-body">
           <p class="card-text">Variety of mouth watering deserts are available here. Waffels, Dora cakes, Pasteries, Hot Chocolate Brownies and many more.</p>

          </div>
        </div>
      </div>
    </div>
      
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
 
 
    
    
 <%-- <html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
</head>
<body>
<h2>${hello}</h2>
<form action="login" method="post">
Number: <input type="text" name="number"><br>
Password:<input type="text" name="password"><br>
<input type="submit" class="btn btn-success"> 
</form>

<a class="btn btn-primary"  href="<c:url value="register"/>">Register</a>

<a href="<c:url value="uploadform"/>">Upload Image</a><br> 

<img src='${pageContext.request.contextPath}/resources/images/101.png'>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  

</body>
</html> --%>

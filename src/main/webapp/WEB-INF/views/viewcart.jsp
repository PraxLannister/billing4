<%@page import="com.gera.billing.model.Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Cart</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- <link rel="stylesheet"href="main.css"> -->

    <script
      src="https://kit.fontawesome.com/332a215f17.js"
      crossorigin="anonymous"
    ></script>

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />

    <style>
      .cart .table {
        margin-bottom: 30px;
        border-bottom: 1px solid #fff;
      }
      .cart .table thead tr th {
        border-top: 0px;
        font-size: 16px;
        font-weight: bold;
        border-bottom: 0px;
      }
      .cart .table thead tr td {
        padding-top: 30px;
        padding-bottom: 30px;
        vertical-align: middle;
        align-self: center;
      }

      .cart .table tbody tr td h6 {
        font-size: 16px;
        color: #000;
        margin-bottom: 0px;
      }

      .checkout ul {
        border: 2px solid #ebebeb;
        background: #f3f3f3;
        padding-left: 25px;
        padding-right: 25px;
        padding-top: 16px;
        padding-bottom: 20px;
      }
      .checkout ul li {
        list-style: none;
        font-size: 16px;
        font-weight: bold;
        color: #252525;
        text-transform: uppercase;
        overflow: hidden;
      }
      .checkout ul li.subtotal {
        font-weight: bold;
        text-transform: capitalize;
        border-bottom: 1px solid #fff;
        padding-bottom: 14px;
      }
      .checkout ul li.subtotal span {
        font-weight: bold;
      }
      .checkout ul li.cart-total {
        padding-top: 10px;
      }
      .checkout ul li.cart-total span {
        color: #e7ab3c;
      }
      .checkout ul li span {
        float: right;
      }
      .checkout .proceed-btn {
        font-size: 15px;
        font-weight: bold;
        color: #fff;
        background: #252525;
        text-transform: uppercase;
        padding: 15px 25px 14px 25px;
        display: block;
        text-align: center;
      }
    </style>
  </head>
  <body>
  
  <jsp:include page="userheader.jsp"></jsp:include>
  
    <section>
      <div class="container" style="margin-top: -4%">
        <div class="px-4 py-5 my-5 text-center">
          <h1 class="display-5 fw-bold">YOUR CART ITEMS !</h1>
          <div class="col-lg-6 mx-auto"></div>
        </div>
      </div>
    </section>

    <section class="mt-5">
      <div class="container" style="margin-top: -2%">
        <div class="cart">
          <div class="table-responsive">
            <table class="table">
              <thead class="thead-dark">
                <tr>
                  <th scope="col" class="text-white">Id</th>
                  <th scope="col" class="text-white">Product</th>
                  <th scope="col" class="text-white">Price</th>
                  <th scope="col" class="text-white">Quantity</th>
                  <th scope="col" class="text-white">Total</th>
                  <th scope="col" class="text-white">Remove</th>
                </tr>
              </thead>
              <tbody>
          <c:forEach items="${cartList}" var="cart">     
                <tr>
                  <td>
                    <h5>${cart.pid}</h5>
                  </td>
                  <td>
                    <h5>${cart.name}</h5>
                  </td>
                  <td>
                    <h6>Rs. ${cart.price/cart.quant}</h6>
                  </td>
                  <td>
                    <h6>${cart.quant}</h6>
                  </td>
                  <td>
                    <h6>Rs. ${cart.price}</h6>
                  </td>
                  <td>
                  	<h6> <a href="<c:url value="/deletecart/${cart.cartid}"/>">Remove</a></h6>
                  </td>
                  
                </tr>
				
			</c:forEach>	
              
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>
    <div class="col-lg-4 offset-lg-4">
      <div class="checkout">
        <ul>
          <li class="cart-total">Total <span>Rs. ${bill}</span></li>
        </ul>
        <a href="<c:url value="userpage"/>" onclick="window.open('checkout');" class="proceed-btn" >Proceed to Checkout</a>
      </div>
    </div>
	<br>
	<br>
	<br>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
  
  
  
  
  <%-- 
<!DOCTYPE HTML>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Cart</title>
</head>
<body>

${message}
<br>
 <c:forEach items="${cartList}" var="cart">
 
 ${cart.pid} &nbsp;&nbsp; ${cart.name}&nbsp;&nbsp; ${cart.quant}&nbsp;&nbsp;  ${cart.price/cart.quant} &nbsp; ${cart.price}&nbsp;&nbsp;
  <a href="<c:url value="/deletecart/${cart.cartid}"/>">Delete</a>&nbsp;&nbsp;
 <br>
</c:forEach>



 Total Amount : ${bill}<br>
<a href="<c:url value="/checkout"/>">Checkout</a>
</body>
</html> --%>
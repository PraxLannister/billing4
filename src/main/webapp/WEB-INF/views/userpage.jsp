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
    <style>
      .container {
        position: relative;
        text-align: center;
        color: white;
      }

      .top-left1 {
        position: absolute;
        top: 15px;
        left: 25px;
      }

      .top-left2 {
        position: absolute;
        top: 25px;
        left: 25px;
      }

      .top-right {
        position: absolute;
        top: 15px;
        right: 25px;
      }

      .demo-wrap {
        overflow: hidden;
        position: relative;
      }

      .demo-bg {
        opacity: 0.9;
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
      }

      .demo-content {
        position: relative;
      }
    </style>
  </head>

  <body>
  
  <jsp:include page="userheader.jsp"></jsp:include>
     
     <div class="demo-wrap">
      <div class="demo-content">
        <div class="container rounded">
        <br>
       <h5 style="color: red">${message}</h5> 
        
        <div class="row my-5">
        <%int c=1; %>
     
		<c:forEach items="${productList}" var="p">

		<div class="col-sm-4">
              <img
                src='${pageContext.request.contextPath}/resources/product/${p.image}'
                alt="Snow"
                class="rounded-top"
                style="width: 350px; height: 250px"
              />

              <div class="top-left1 text-dark bg-white rounded">
                <h6>${p.name}</h6>
              </div>
              <div class="top-left2 text-dark bg-white rounded my-4">
                @ ${p.price} only/-
              </div>
              <div class="top-right text-dark bg-white rounded">
                <a href="<c:url value="/addtocart/${p.id}"/>"
                  ><button type="button" class="btn btn-outline-danger btn-">
                    Add to Cart
                  </button></a>
              </div>
            </div>
            
            <%
            if(c%3==0)
			{
				out.println("</div><div class=\"row my-5\">");
			}
            c++;
		%>
         
		</c:forEach>
		<br>
		<br>
	
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
  
 
  
  
  
<%--   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Page</title>
</head>
<body>


<!-- <a href="/billing/temp.jsp">Temp File</a> -->
 ${message}
<br>
<c:forEach items="${productList}" var="p">
 ${p.id} &nbsp;&nbsp; ${p.name}&nbsp;&nbsp; ${p.quant}&nbsp;&nbsp; ${p.price}&nbsp;&nbsp;
 <img src='${pageContext.request.contextPath}/resources/product/${p.image}'>&nbsp;&nbsp;
  <a href="<c:url value="/addtocart/${p.id}"/>">Add to Cart</a>&nbsp;&nbsp;<br>
 </c:forEach>

 
  <a href="<c:url value="/adminedit/${s.id}"/>">Edit</a><br> 


<a href="<c:url value="/viewcart/"/>">View Cart</a>

<% out.print(session.getAttribute("userid")); %>
<a href="<c:url value="/test/${object.argument}" />" >hello</a>

<form action="logout" method="post">
<input type="submit" Value= "Logout"> 
</form>

</body>
</html> --%>
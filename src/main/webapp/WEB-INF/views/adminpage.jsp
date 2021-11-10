<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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
        .top-right2 {
            position: absolute;
            top: 30px;
            right: 25px;
        }

        

    </style>

</head>

<body>


    <nav class="navbar navbar-expand-lg navbar-light bg-info">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample08"
            aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
            <ul class="navbar-nav">
                <li class="nav-item active">
                   
                        <h2 > Admin Home</h2> <span class="sr-only">(current)</span>
                  
                </li>
            </ul>
           
        </div>
        <ul class="nav navbar-nav navbar-right">
           
            <div class="mx-2">
                <a href="<c:url value="adminlogout"/>" class="btn btn-danger" >Logout</a>
            </div>
        </ul>
    </nav>



    <div class="container rounded">
    <br>
     <h5 style="color: red; margin-right: 2%;">${message}</h5> 
     <br>
     
        <div class="row my-5">
        <%int c=1; %>
        <!-- LOOp -->
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
                   <a href="<c:url value="/adminedit/${p.id}"/>"><button type="button" class="btn btn-success btn-">Edit</button></a>
                </div>
                <div class="top-right2 text-dark bg-white rounded my-4">
                     <a href="<c:url value="/admindelete/${p.id}"/>"><button type="button" class="btn btn-danger btn-">Delete</button></a>
                </div>

            </div>
            
             <%
            if(c%3==0)
			{
				out.println("</div><div class=\"row my-5\">");
			}
            c++;
		%>
          
          <!-- LOOP END -->
       </c:forEach>
          
      
       
		
	
        </div> 
           
        </div>
    </div>

<br>
<br>
    <div class="container" style="margin-left: 10%; margin-bottom: 4%;">
        <a href="<c:url value="/adminadd"/>"><button type="button" class="btn btn-danger btn-lg">ADD NEW ITEM +</button></a>

    </div>


   




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>

</html>





<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>



 <a href="<c:url value="/adminadd"/>"> Add New Product</a>

<!-- <a href="/billing/temp.jsp">Temp File</a> -->
 ${message}
<br>
<c:forEach items="${productList}" var="p">
 ${p.id} &nbsp;&nbsp; ${p.name}&nbsp;&nbsp; ${p.quant}&nbsp;&nbsp; ${p.price}&nbsp;&nbsp;
 <img src='${pageContext.request.contextPath}/resources/product/${p.image}'>&nbsp;&nbsp;
  <a href="<c:url value="/adminedit/${p.id}"/>">Edit</a>&nbsp;&nbsp;
 
<a href="<c:url value="/admindelete/${p.id}"/>">Delete</a><br><br>
 
  <a href="<c:url value="/adminedit/${s.id}"/>">Edit</a><br> 
</c:forEach>



<a href="<c:url value="/test/${object.argument}" />" >hello</a>

<form action="adminlogout" method="post">
<input type="submit" Value= "Logout"> 
</form>

</body>
</html> --%>
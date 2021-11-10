<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

    
    
  <nav class="navbar navbar-expand-lg navbar-light bg-warning">
       <a class="navbar-brand" href="<c:url value="#"/>"
          >JAVA CAFE
          </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="userpage">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">Contact Us</a>
            </li>
          </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
          <div class="mx-2">
            <a href="<c:url value="viewcart"/>"
              ><button type="button" class="btn btn-secondary">
                Go to Cart
              </button></a
            >
            <a href="<c:url value="logout"/>"
              ><button type="button" class="btn btn-primary">Logout</button></a
            >
          </div>
        </ul>
      </div>
    </nav>
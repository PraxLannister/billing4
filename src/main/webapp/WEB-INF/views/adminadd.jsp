<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="true"%>
    
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

    <title>Add Product</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-info">
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarsExample08"
        aria-controls="navbarsExample08"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div
        class="collapse navbar-collapse justify-content-md-center"
        id="navbarsExample08"
      >
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">
              <h3>Add Product</h3>
              <span class="sr-only">(current)</span>
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container" style="margin-top: 5%">
      <h2>Product Details:</h2>
      <br />
      <form class="form-horizontal"  method="post" action="addProduct" enctype="multipart/form-data">
      
        <div class="form-group my-2">
          <label class="control-label" for="quantity"
            ><h5>Product Name:</h5></label
          >
          <div class="col-lg-6">
            <input
              type="text"
              class="form-control"
              id="productname"
              placeholder="Product Name"
              name="name"
            />
          </div>
        </div>
        <div class="form-group my-2">
          <label class="control-label" for="price">Price:</label>
          <div class="col-lg-6">
            <input
              type="text"
              class="form-control"
              id="price"
              placeholder="price"
              name="price"
            />
          </div>
        </div>

        <div class="form-group my-2">
          <label class="control-label" for="quantity">Quantity:</label>
          <div class="col-lg-6">
            <input
              type="text"
              class="form-control"
              id="quantity"
              placeholder="Quantity"
              name="quant"
            />
          </div>
        </div>

        <div class="form-label-group my-2 col-lg-6">
          <label class="form-label" for="customFile">Product Image:</label>
          <input type="file" class="form-control" id="customFile" name="file" />
        </div>
        <br />
        <div class="form-group my-2">
            <input type="submit" class="btn btn-lg btn-danger" value="Add Product">
              
        </div>
      </form>
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

    
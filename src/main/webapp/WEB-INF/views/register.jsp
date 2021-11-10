<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>User Sign Up !</title>
</head>

<body>
    
    <jsp:include page="header.jsp"></jsp:include>
    
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xl-7 mx-auto">
                <div class="card card-signin flex-row my-5">
                    <div class="card-img-left d-none d-md-flex">
                        
                    </div>
                    <div class="card-body">
                        <h2 class="card-title text-center text-dark"><span> Registeration Form:</span></h2>
                        <form class="form-signin" action="registeruser" method="post">
                            <div class="form-label-group my-2">
                                <label for="firstname"><h6>First Name:</h6></label>
                                <input type="text" id="firstname" class="form-control" placeholder="First Name" name="fname" required
                                    autofocus>
                            </div>
                            <div class="form-label-group my-2">
                                <label for="lastname"><h6>Last Name:</h6></label>
                                <input type="text" id="lastname" class="form-control" placeholder="Last Name" name="lname" required
                                    autofocus>
                            </div>
                            <div class="form-label-group my-2">
                                <label for="mobilenumber"><h6>Mobile Number:</h6></label>
                                <input type="text" id="mobilenumber" class="form-control" placeholder="9123456708" name="number"
                                    required autofocus>
                            </div>

                            <div class="form-label-group my-2">
                                <label for="inputEmail"><h6>Email address:</h6></label>
                                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="mailid"
                                    required>
                            </div>
                            <div class="form-label-group my-2">
                                <label for="inputPassword"><h6>Password:</h6></label>
                                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass"
                                    required>
                            </div>
							
							<div class="form-label-group my-2">
                            <input
                                class="btn btn-lg btn-primary btn-block text-uppercase my-4"
                                type="submit" value="Register">
                            
							</div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
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
<%-- 
    Document   : login
    Created on : Jul 15, 2019, 6:50:17 AM
    Author     : M.Dani Setiawan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login </title>

    <!-- My Css -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

    <!-- Bootstrap Font Awesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/dashboard.css">

</head>
<body>

<section id="nav-bar" class="bg-gradient">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#">
                <img src="img/coffee.png" alt="Coffe">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp#home">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp#services">SERVICES</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp#about-us">ABOUT US</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp#testimonials">TESTIMONIAL</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp#footer">CONTACT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">LOGIN</a>
                    </li>
                </ul>
            </div>
        </nav>
    </section>


<!------------------- Services Section --------------->
<section id="services">
            <div class="card o-hidden border-0 shadow-lg my-4 col-lg-6 mx-auto">
                    <div class="card-body p-0">
                      <!-- Nested Row within Card Body -->
                      <div class="row">
                        <div class="col-lg">
                          <div class="p-5">
                            <div class="text-center">
                              <h1 class="h4 text-gray-900 mb-4">Login Account !</h1>
                            </div>
                              <form class="user" action="Login?proses=login" method="post">
                                <div class="form-group">
                                  <input type="email" name="email"  class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address..." required>
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password_akun" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" minlength="6" required>
                                </div>
                                <button class="btn btn-primary btn-user btn-block">
                                  Login
                                </button>
                          </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="register.jsp">Don't have an Account? Register Now ! </a>
                  </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
</section>
</body>
</html>


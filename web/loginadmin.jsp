<%-- 
    Document   : login
    Created on : Jul 15, 2019, 6:50:17 AM
    Author     : M.Dani Setiawan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="stylesheet" href="css/dashboard.css">
  <link rel="stylesheet" href="css/style.css">



    <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/dashboard.css">

  <title>Login</title>


  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link rel="stylesheet" href="css/dashboard.css">

</head>

<body>

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-lg-7">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Hello Admin !</h1>
                  </div>
                  <form class="user" action="LoginAdmin?proses=login" method="post">
                    <div class="form-group">
                      <input type="text" name="username"  class="form-control form-control-user" placeholder="Enter Username..." required>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password_admin" class="form-control form-control-user" placeholder="Password" required>
                    </div>
                      <button class="btn bg-gradient btn-user btn-block" style="color: white;">
                      Login
                    </button>
                  </form>
                  <hr>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

</body>

</html>


<%-- 
    Document   : belikopi
    Created on : Jul 17, 2019, 3:37:04 PM
    Author     : hanas_bp
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CoffeeModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Buy Coffe</title>

    <!-- My Css -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

    <!-- Bootstrap Font Awesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    

</head>
<body>

<section id="nav-bar">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#">
                <img src="img/coffee.png" alt="Coffe">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                   <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600"> Welcome <%=session.getAttribute("nama")%> ♥</span>
                <img class="img-profile rounded-circle" src="img/admin2.ico">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-gray-400" href="#" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>
                </ul>
            </div>
        </nav>
    </section>



</div>
<%           
            CoffeeModel km = new CoffeeModel();
            List<CoffeeModel> data = new ArrayList<CoffeeModel>();
            data = km.CoffeeDetail();
             if (data.size() > 0) {
            %>   
<!------------------- Services Section --------------->
<section id="services">
    <div class="container text-center">
        <h1 class="title">Select Your Coffee <%=session.getAttribute("nama")%> ♥</h1>
        <div class="row text-center">
            <div class="col-md-4 services">
                <img src="img/brown.png" class="service-img">
                <h4>Mocha</h4>
                <p>A mocha is a mix between a cappuccino and a hot chocolate. It is made by putting mixing chocolate powder with an espresso shot and then adding steamed milk and micro-foam into the beverage.</p>
                <p><b>Rp. 20.000</b></p>
                <div class="form-group">
                    <div class="mx-auto">
     <form  action="TransactionController?data=transaction&proses=input-transaction" method="post">
        <div class="container text-center">
        <div class="row text-center">
            <input class="form-control" type="hidden" placeholder="id_akun" name="id_akun" value="<%=session.getAttribute("id_akun")%>" required>
            <input class="one form-control" type="hidden" placeholder="idcoffee" name="id_coffee" value="<%=data.get(0).getId()%>" required>
            <input class="form-control" type="hidden" placeholder="Name" name="nama" value="<%=session.getAttribute("nama")%>" required>
            <input class="one form-control" type="hidden" placeholder="Coffee Name" name="coffee_name" value="<%=data.get(0).getCoffee_name()%>" required>
            <input class="one form-control" type="hidden" placeholder="price" id="txt1" name="price" value="<%=data.get(0).getPrice()%>" onkeyup="sum();" required>
            <label for="quantity">Quantity :</label>
            <input class="form-control" type="text" placeholder="Quantity" id="txt2" name="qty" onkeyup="sum();" required>
            <label for="quantity">Total Price :</label>
            <input class="form-control" type="text" placeholder="Total Price" id="txt3" name="total_price">
            <label for="address">Address :</label>
            <textarea class="form-control" name="address" required></textarea>
            <input class="form-control" type="hidden" name="date_of_purchase" id="todayDate" required>
            <button class="btn btn-primary btn-user btn-block" style="margin-top: 20px;">BUY</button>         
        </div>
    </div>
</form>
                    </div>
                   
                </div>
            </div>
            <div class="col-md-4 services">
                <img src="img/old.png" class="service-img">
                <h4>Café Latte</h4>
                <p>A café latte, or “latte” for short, is an espresso based drink with steamed milk and micro-foam added to the coffee. This coffee is much sweeter compared to an espresso due to the steamed milk.</p>
                <p><b>Rp. 35.000</b></p>
                <div class="form-group">
                    <div class="mx-auto">
        <form  action="TransactionController?data=transaction&proses=input-transaction" method="post">
        <div class="container text-center">
        <div class="row text-center">
            <input class="form-control" type="hidden" placeholder="id_akun" name="id_akun" value="<%=session.getAttribute("id_akun")%>" required>
            <input class="one form-control" type="hidden" placeholder="idcoffee" name="id_coffee" value="<%=data.get(1).getId()%>" required>
            <input class="form-control" type="hidden" placeholder="Name" name="nama" value="<%=session.getAttribute("nama")%>" required>
            <input class="one form-control" type="hidden" placeholder="Coffee Name" name="coffee_name" value="<%=data.get(1).getCoffee_name()%>" required>
            <input class="one form-control" type="hidden" placeholder="price" id="txt12" name="price" value="<%=data.get(1).getPrice()%>" onkeyup="sum2();" required>
            <label for="quantity">Quantity :</label>
            <input class="form-control" type="text" placeholder="Quantity" id="txt22" name="qty" onkeyup="sum2();" required>
            <label for="quantity">Total Price :</label>
            <input class="form-control" type="text" placeholder="Total Price" id="txt32" name="total_price" required>
            <label for="address">Address :</label>
            <textarea class="form-control" name="address" required></textarea>
            <input class="form-control" type="hidden" name="date_of_purchase" id="todayDate2" required>
            <button class="btn btn-primary btn-user btn-block" style="margin-top: 20px;">BUY</button>         
        </div>
    </div>
</form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 services">
                <img src="img/cup.png" class="service-img">
                <h4>Affogato</h4>
                <p>An affogato is a simple dessert coffee that is treat during summer and after dinner. It is made by placing one big scoope of vanilla ice cream within a single or double shot of espresso, and then this coffee is one of the best</p>
                <p><b>Rp. 45.000</b></p>
                <div class="form-group">
                    <div class="mx-auto">
<form  action="TransactionController?data=transaction&proses=input-transaction" method="post">
        <div class="container text-center">
        <div class="row text-center">
            <input class="form-control" type="hidden" placeholder="id_akun" name="id_akun" value="<%=session.getAttribute("id_akun")%>" required>
            <input class="one form-control" type="hidden" placeholder="idcoffee" name="id_coffee" value="<%=data.get(2).getId()%>" required>
            <input class="form-control" type="hidden" placeholder="Name" name="nama" value="<%=session.getAttribute("nama")%>" required>
            <input class="one form-control" type="hidden" placeholder="Coffee Name" name="coffee_name" value="<%=data.get(2).getCoffee_name()%>" required>
            <input class="one form-control" type="hidden" placeholder="price" id="txt13" name="price" value="<%=data.get(2).getPrice()%>" onkeyup="sum3();" required>
            <label for="quantity">Quantity :</label>
            <input class="form-control" type="text" placeholder="Quantity" id="txt23" name="qty" onkeyup="sum3();" required>
            <label for="quantity">Total Price :</label>
            <input class="form-control" type="text" placeholder="Total Price" id="txt33" name="total_price" required>
            <label for="address">Address :</label>
            <textarea class="form-control" name="address" required></textarea>
            <input class="form-control" type="hidden" name="date_of_purchase" id="todayDate3" required>
            <button class="btn btn-primary btn-user btn-block" style="margin-top: 20px;">BUY</button>         
        </div>
    </div>
</form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!----------------------- Smooth Scrool -------------------->
<!----------------------- Smooth Scroll -------------------->  

<script src="js/jquery-1.10.2.js"></script>
<script src="js/smooth-scroll.js"></script>
<script>
   var scroll = new SmoothScroll('a[href*="#"]');
</script>
<script src="js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script src="js/datesum.js"></script>

</body>
<%}%>
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="index.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>
</html>
<%-- 
    Document   : dashboard.jsp
    Created on : Jul 15, 2019, 5:49:30 AM
    Author     : M.Dani Setiawan
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CoffeeModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>

  <title>E - Coffee Dashboard</title>

  <link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="css/dashboard.css">

</head>

<body id="page-top">

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.jsp">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-coffee"></i>
        </div>
        <div class="sidebar-brand-text mx-3">E - Coffee</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="dashboard.jsp">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>
    
      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="tablesakun.jsp">
          <i class="fas fa-fw fa-users"></i>
          <span>Coffee Account</span></a>
      </li>
      
     <li class="nav-item">
        <a class="nav-link" href="tablescoffee.jsp">
          <i class="fas fa-coffee"></i>
          <span>Coffee Details</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="tablestransaction.jsp">
          <i class="fas fa-shopping-cart"></i>
          <span>Transaction</span></a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="tablessubcriber.jsp">
          <i class="fas fa-fw fa-table"></i>
          <span>Subcriber</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
    </ul>
   
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <ul class="navbar-nav ml-auto">

            <div class="topbar-divider d-none d-sm-block"></div>

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"> Welcome <%=session.getAttribute("username")%> ♥</span>
                <img class="img-profile rounded-circle" src="img/admin.ico">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">E-Coffee Transaction</h1>
          </div>

          <!-- Content Row -->
         
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">E-Coffee Transaction</h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                  </div>
                   <form class="user" action="TransactionController?data=transaction&proses=update-transaction" method="post">
                       <%
                  String ket = request.getParameter("id_transaction");
                  CoffeeModel km = new CoffeeModel();
                  km.setId_transaction(ket);
                  List<CoffeeModel> data = new ArrayList<CoffeeModel>();
                  data = km.cariIdTransaction();
                  if (data.size() > 0) {
              %>
              
                <div class="form-group">
                    <input type="hidden" class="form-control" name="id_transaction" value="<%=data.get(0).getId_transaction()%>">
                </div>
              
              <div class="form-group">
                    <input type="hidden" class="form-control"  name="id_akun" placeholder="Coffee Name" value="<%=data.get(0).getId_akun()%>" required>
                </div>
                <div class="form-group">
                  <input type="hidden" class="form-control"  name="id_coffee" placeholder="Stock" value="<%=data.get(0).getId_coffee()%>" required>
                </div>
                <div class="form-group">
                    <label for="pir"><b>Name</b></label>
                    <input type="text" class="form-control"   name="nama" placeholder="Price" value="<%=data.get(0).getNama()%>" required>
                </div>
                 <div class="form-group">
                  <label for="uname"><b>Coffee Name</b></label>
                    <input type="text" class="form-control"  name="coffee_name" placeholder="Coffee Name" value="<%=data.get(0).getCoffee_name()%>" required>
                </div>
                <div class="form-group">
                    <label for="st"><b>Price</b></label>
                  <input type="text" class="form-control"  name="price" placeholder="Stock" value="<%=data.get(0).getPrice()%>" required>
                </div>
                <div class="form-group">
                    <label for="pir"><b>Quantity</b></label>
                    <input type="text" class="form-control"   name="qty" placeholder="Price" value="<%=data.get(0).getQty()%>" required>
                </div>
                 <div class="form-group">
                  <label for="uname"><b>Total Price</b></label>
                    <input type="text" class="form-control"  name="total_price" placeholder="Coffee Name" value="<%=data.get(0).getTotal_price()%>" required>
                </div>
                <div class="form-group">
                    <label for="st"><b>Address</b></label>
                  <input type="text" class="form-control"  name="address" placeholder="Stock" value="<%=data.get(0).getAddress()%>" required>
                </div>
                <div class="form-group">
                    <label for="pir"><b>Date Of Purchase</b></label>
                    <input type="date" class="form-control"   name="date_of_purchase" placeholder="Price" value="<%=data.get(0).getDate_of_purchase()%>" required>
                </div>
                <button type="submit" class="btn bg-gradient btn-user btn-block" value="Update" style="color: white;" >Update</button>
                <%}%>
                <hr>
              </form>
                </div>
              </div>
          </div>
      </div>

      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; E-Coffee 2019</span>
          </div>
        </div>
      </footer>

    </div>

  </div>

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
          <a class="btn btn-primary" href="loginadmin.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <script src="assets/jquery/jquery.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>


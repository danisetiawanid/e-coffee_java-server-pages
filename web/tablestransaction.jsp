<%-- 
    Document   : tables.jsp
    Created on : Jul 15, 2019, 5:52:55 AM
    Author     : M.Dani Setiawan
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CoffeeModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>E - Coffee Account</title>

  <link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
  <link href="assets/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/dashboard.css">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
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

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <ul class="navbar-nav ml-auto">
            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Welcome <%=session.getAttribute("username")%> ♥</span>
                <img class="img-profile rounded-circle" src="img/admin.ico">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                
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
          <h1 class="h3 mb-2 text-gray-800">E-Coffee Account</h1>
          <p class="mb-4">This is table coffee transaction</p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">E-Coffee Transaction</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID Transaction</th>
                      <th>ID Account</th>
                      <th>ID Coffee</th>
                      <th>Name</th>
                      <th>Coffee Name</th>
                      <th>Price</th>
                      <th>Quantity</th>
                      <th>Total Price</th>
                      <th>Address</th>
                      <th>Date Of Purchase</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>ID Transaction</th>
                      <th>ID Account</th>
                      <th>ID Coffee</th>
                      <th>Name</th>
                      <th>Coffee Name</th>
                      <th>Price</th>
                      <th>Quantity</th>
                      <th>Total Price</th>
                      <th>Address</th>
                      <th>Date Of Purchase</th>
                      <th>Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                   <%
                  CoffeeModel km = new CoffeeModel();
                  List<CoffeeModel> data = new ArrayList<CoffeeModel>();
                  String ket = request.getParameter("ket");
                  if (ket == null) {
                      data = km.CoffeeTransaction();
                  } 
                  for (int x = 0; x < data.size(); x++) {
              %>
                    <tr>
                  <td><%=data.get(x).getId_transaction()%></td>
                  <td><%=data.get(x).getId_akun()%></td>
                  <td><%=data.get(x).getId_coffee()%></td>
                  <td><%=data.get(x).getNama()%></td>
                  <td><%=data.get(x).getCoffee_name()%></td>
                  <td><%=data.get(x).getPrice()%></td>
                  <td><%=data.get(x).getQty()%></td>
                  <td><%=data.get(x).getTotal_price()%></td>
                  <td><%=data.get(x).getAddress()%></td>
                  <td><%=data.get(x).getDate_of_purchase()%></td>
                  <td>
                      <a href="TransactionController?proses=edit-transaction&id_transaction=<%=data.get(x).getId_transaction()%>"><button class="btn btn-primary">Edit</button></a>
                      <a href="TransactionController?proses=hapus-transaction&id_transaction=<%=data.get(x).getId_transaction()%>"><button class="btn btn-danger">Delete</button></a>
                  </td>
                    </tr>
                    <%}%>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; E-Coffee 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
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

  <!-- DataTable JavaScript-->
  <script src="assets/jquery/jquery.min.js"></script>
  <script src="assets/datatables/jquery.dataTables.min.js"></script>
  <script src="assets/datatables/dataTables.bootstrap4.min.js"></script>
  <script src="js/datatables.js"></script>
  <script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
<?php
 session_start();
  if (!isset($_SESSION['user'])) {
    header("location: login.php");
  }
  $user = $_SESSION['user'];

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CEPROCOM</title>
    <link rel="icon" type="image/ico" href="assets/img/logo.ico"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="libraries/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" type="text/css" href="libraries/alertifyjs/css/themes/default.css">
    <link rel="stylesheet" type="text/css" href="libraries/toastr/toastr.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="index.php" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <!--<span class="logo-mini"><b>A</b>LT</span>-->
          <span class="logo-mini"><img class="imagen" width="30" heigth="30" src="assets/img/logo.png"></span>
          <!-- logo for regular state and mobile devices -->
          <!--<span class="logo-lg"><b>Admin</b>LTE</span>-->
          <span class="logo-lg"><b>CEPROCOM</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success"></span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">Mensajes...</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                    </ul>
                  </li>
                  <li class="footer"><a href="#">Ver todos los mensajes...</a></li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <!-- Indicar de numero de notificaciones existentes-->
                  <span class="label label-warning"></span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">Notificaciones</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger"></span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">Tareas</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">Ver todas las tareas</a>
                  </li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <span class="hidden-xs">Usuario: <?php echo strtoupper($user);?></span>
                </a>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="signOut.php" class="btn btn-danger"><i class="fa fa-close"></i><span class="hidden-xs">  Cerrar Sesion</span></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="assets/img/man.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><?php echo strtoupper($user);?></p>
            </div>
          </div>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Navegacion Principal</li>
            <li class="active treeview">
              <a href="resources/participantes/tabla_participante.php" id="td">
                <i class="fa fa-user"></i> <span>Participante</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
            </li>
            <li class="active treeview">
              <a href="#" id="usuarios">
                <i class="fa fa-group"></i> <span>Usuarios</span>
              </a>
            </li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!--<div class="container">
		      <div id="tabla"></div>
	      </div>-->
      </div>
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2019 <a href="">CEPROCOM</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->

    <!-- jQuery 3.2.1 -->
    <script src="libraries/jquery-3.2.1.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="libraries/bootstrap/js/bootstrap.min.js"></script>
    <!-- Toastr-->
    <script src="libraries/toastr/toaster.min.js"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <!--<script src="dist/js/pages/dashboard.js"></script>-->
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <!-- DataTables -->
    <!--<script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/funciones_participante.js"></script>-->
  </body>
</html>
<!--<script>
  $(document).ready(function(){
    $('#td').click(function(event){
      $('#tabla').load('resources/participantes/tabla_participante.php');
    });
  });
</script>-->


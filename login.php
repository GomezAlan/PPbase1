<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <link rel="shortcut icon" href="assets/img/logo.ico">
  <style type="text/css">
    body {
      background: #8ba987 url('assets/img/fondo.jpg') no-repeat center center;
      background-size: cover;
      height: 100vh;
    }
  </style>
  <title>Ingreso ERP-Ceprocom</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="libraries/toastr/toastr.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="libraries/alertifyjs/css/alertify.css">
  <!-- fin bootstrap -->
</head>

<body onload="document.getElementById('empresa').focus();">
  <div class="modal-dialog container">
    <br><br>
    <div class="modal-content">
      <div class="modal-heading">
        <img src="assets/img/logotipo.png" class="img-responsive" alt="Cinque Terre">
      </div>
      <hr />
      <div class="modal-body">
        <!--<form  id="form1" name="form1" method="POST" action="">-->
        <div class="form-group">
          <label>Empresa:</label><br>
          <input type="text" class="form-control" name="empresa" id="empresa" value="CEPROCOM" tabindex="1" />
        </div>
        <div class="form-group">
          <label>Nombre:</label><br>
          <input type="text" class="form-control" name="nombreusuario" id="nombreusuario" tabindex="2" placeholder="Ingresa tu Usuario" />
        </div>
        <div class="form-group">
          <label>Password:</label><br>
          <input type="password" class="form-control" name="password" id="password" placeholder="Ingresa tu Contraseña" tabindex="3" />
        </div>
        <input name="button" class="btn btn-primary btn-block" id="ingresar" value="Iniciar" tabindex="4" />
        <!--</form>-->
      </div>
    </div>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="libraries/toastr/toaster.min.js"></script>
  <script src="libraries/alertifyjs/alertify.js"></script>
</body>

</html>

<script>
  $(document).ready(function() {
    $('#ingresar').click(function() {
      if ($('#nombreusuario').val() == "") {
        alertify.alert("Debes ingresar el usuario");
        return false;
      } else if ($('#password').val() == "") {
        alertify.alert("Debes ingresar una contraseña");
        return false;
      }

      cadena = "nombreusuario=" + $('#nombreusuario').val() +
        "&password=" + $('#password').val();

      $.ajax({
        type: "POST",
        url: "ingresar.php",
        data: cadena,

        success: function(r) {
          if (r == 1) {
           window.location = "index.php";
          } else {
             toastr.error("Error al ingresar al sistema... Intentelo de Nuevo");
          }
        }
         

      });
    });

  });
</script>
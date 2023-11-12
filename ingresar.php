<?php

    session_start();
    include_once('db_connection.php');

    $connection = conexion();

    $usuario = $_POST['nombreusuario'];
    $pass = $_POST['password'];

    $sql = "SELECT * from users where username = '$usuario' and password='$pass'";
	$result = mysqli_query($connection, $sql);


	if (mysqli_num_rows($result) > 0) {
		$_SESSION['user'] = $usuario;
		echo 1;
	}else{
		echo 0;
	}
?>
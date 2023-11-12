<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<form id="uploadimage" action="" method="post" enctype="multipart/form-data">
		<input type="file" name="file" id="file" required />
		<br>
		<input type="text" name="nombre" id="nombre" required />
		<br>
		<input type="submit" value="Upload" class="submit" />
		
	</form>
	<div id="respuesta"></div>

	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>

	<script>
		$(function(){
			$("input[name='file']").on("change", function(){
				var formData = new FormData($("#uploadimage")[0]);
				var ruta = "imagen-ajax.php";
				$.ajax({
					url: ruta,
					type: "POST",
					data: formData,
					contentType: false,
					processData: false,
					success: function(datos)
					{
						$("#respuesta").html(datos);
					}
				});
			});
		});
	</script>
</body>
</html>



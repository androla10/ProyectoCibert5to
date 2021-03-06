<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sistema de Gestion de Incidencias</title>
<link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="../css/bootstrap/bootstrap-theme.min.css" />
<link rel="stylesheet" href="../css/animate/animate.css" />
<link rel="stylesheet" href="../css/font-awesome/font-awesome.min.css" />
<link rel="stylesheet" href="../css/estilos.css" />

</head>
<body class="container-fluid">
	<h2 class="text-center">Bienvenido al sistema de Gesti�n De
		Incidencias</h2>
	<br>
	<div class="row">
		<div class="col-sm-4 col-sm-offset-4">
			<div class="jumbotron frmLogin">
				<div class="container">
					<p>Ingrese sus credenciales</p>
					<hr>
					<form action="Login" method="post">
						<div class="form-group">
							<label for="usuario"><span
								class="glyphicon glyphicon-user"></span> Usuario</label> <input
								type="text" id="usuario" name="usuario.usuario"
								class="form-control" placeholder="Ingrese Usuario" required>
						</div>
						<div class="form-group">
							<label for="clave"><span class="glyphicon glyphicon-lock"></span>
								Password</label> <input type="password" id="clave"
								name="usuario.password" class="form-control"
								placeholder="Ingrese Password" required>
						</div>
						<button type="submit" class="btn btn-primary">Ingresar</button>
					</form>
					<small class="mensajeError animated bounceInLeft"><s:property
							value="msjError" /></small>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema de Gestion de Incidencias</title>
<link rel="stylesheet" href="../css/estilos.css" />
<link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="../css/bootstrap/bootstrap-theme.min.css" />
</head>
<body class="container-fluid">
	<h2 class="text-center">Bienvenido al sistema de Gesti�n De Incidencias</h2>
	<div class="row">
		<div class="col-sm-4 col-sm-offset-4">
			<form action="Login" method="post">
				<div class="form-group">
					<label for="usuario">Usuario</label> <input type="text" id="usuario"
						name="usuario.usuario" class="form-control"
						placeholder="Ingrese Usuario">
				</div>
				<div class="form-group">
					<label for="clave">Password</label> <input type="password" id="clave"
						name="usuario.password" class="form-control"
						placeholder="Ingrese Password">
				</div>
				<button type="submit" class="btn btn-primary">Ingresar</button>
			</form>
			<!--<s:form action="Login">
				<s:textfield name="usuario.usuario"/>
				<s:password name="usuario.password"/>
				<s:submit value="Ingresar"/>
			</s:form>-->
		</div>
	</div>
</body>
</html>
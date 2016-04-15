<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/estilos.css" />
<link rel="stylesheet" href="css/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap/bootstrap-theme.min.css" />
</head>
<body class="container-fluid">
	<h2 class="text-center">Bienvenido al sistema de GVP</h2>
	<form action="Login">
		<div class="form-group">
			<label for="usuario">Usuario</label> <input type="text" id="usuario"
				name="usuario.usuario" class="form-control"
				placeholder="Ingrese Usuario">
		</div>
		<div class="form-group">
			<label for="clave"></label> <input type="password" id="clave"
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
</body>
</html>

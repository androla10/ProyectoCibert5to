<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="container-fluid" style="position: relative;">
	<h3>
		<i class="fa fa-user fa-1x"></i> Usuarios
	</h3>
	<hr>
	<div class="row animated fadeIn">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div style="margin-bottom: 5px" class="btn-group" role="group" aria-label="">
				<s:a  class="btn btn-link" href="../Usuario/RegistroUsuario"><i class="fa fa-user-plus"></i> Agregar</s:a>
			</div>
			<table class="table table-hover table-striped">
				<tr>
					<th>C�digo</th>
					<th>Usuario</th>
					<th>Nombres</th>
					<th>Apellidos</th>
					<th>Fecha de Registro</th>
					<th>Estado</th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<td>1000</td>
					<td>bvillarreal</td>
					<td>Zeler Benji</td>
					<td>Villarreal Marcelo</td>
					<td>08/02/2016</td>
					<td>Activado</td>
					<td>b</td>
					<td>b</td>
				</tr>
				<tr>
					<td>1001</td>
					<td>zvillarreal</td>
					<td>Zeler Benji</td>
					<td>Villarreal Marcelo</td>
					<td>08/02/2016</td>
					<td>Activado</td>
					<td>b</td>
					<td>b</td>
				</tr>
			</table>
		</div>
	</div>


</div>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="container-fluid">
	<h1 class="text-center">Incidencias Reportadas</h1>
	<br>
	<div class="panel-primary">
		<div class="panel-heading">
			<i class="fa fa-list fa-1x"></i>&nbsp;Incidencias
		</div>
		<div class="panel-body">
			<table class="table table-striped table-hover table-bordered">
			</table>
			<table class="table table-hover table-striped">
				<tr>
					<th>C�digo de Incidencia</th>
					<th>Usuario Creador</th>
					<th>Tipo de Incidencia</th>
					<th>Estado</th>
					<th>Fecha Creaci�n</th>
					<th>Fecha Asignaci�n</th>
					<th>Titulo</th>
				</tr>
				</tr>
				<s:if test="!listaIncidenciaAsignadas.isEmpty">
					<s:iterator value="listaIncidenciaAsignadas">
						<tr>
							<s:url action="../Incidencia/AtencionIncidencia" var="urlt">
								<s:param name="idIncidencia" value="%{idIncidencia}"/>
							</s:url>
							<td><s:a href="%{urlt}"><s:property value="idIncidencia" /></s:a></td>
							<td><s:property value="sNombreCompleto" /></td>
							<td><s:property value="sTipoIncidencia" /></td>
							<td><s:property value="sEstado" /></td>
							<td><s:property value="fechaCreacion" /></td>
							<td><s:property value="fechaAsignacion" /></td>
							<td><s:property value="titulo" /></td>
						</tr>
					</s:iterator>
				</s:if>
				<s:else>
<!-- 					<tr> -->
<!-- 						<td>1001</td> -->
<!-- 						<td>zvillarreal</td> -->
<!-- 						<td>Zeler Benji</td> -->
<!-- 						<td>Villarreal Marcelo</td> -->
<!-- 						<td>08/02/2016</td> -->
<!-- 						<td>Activado</td> -->
<!-- 						<td>b</td> -->
<!-- 						<td>b</td> -->
<!-- 					</tr> -->
				</s:else>
			</table>
		</div>
	</div>
</div>
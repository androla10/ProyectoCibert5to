<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="container-fluid">
	<h1 class="text-center">Incidencias Reportadas</h1>
	<br>
	<div class="panel-primary">
		<div class="panel-heading">
			<i class="fa fa-list fa-1x"></i>&nbsp;Incidencias
		</div>
		<div class="panel-body">
			<s:if test="!listaIncidenciaAsignadas.isEmpty">
				<table class="table table-hover table-striped">
					<tr>
						<th>Código de Incidencia</th>
						<th>Usuario Creador</th>
						<th>Tipo de Incidencia</th>
						<th>Estado</th>
						<th>Fecha Creación</th>
						<th>Fecha Asignación</th>
						<th>Titulo</th>
						<th>Operativo</th>
					</tr>
					<s:iterator value="listaIncidenciaAsignadas">
						<tr>
							<s:url action="../Incidencia/AtencionIncidencia" var="urlt">
								<s:param name="idIncidencia" value="%{idIncidencia}" />
							</s:url>
							<td><s:a href="%{urlt}">
									<s:property value="idIncidencia" />
								</s:a></td>
							<td><s:property value="sNombreCompleto" /></td>
							<td><s:property value="sTipoIncidencia" /></td>
							<td><s:property value="sEstado" /></td>
							<td><s:property value="fechaCreacion" /></td>
							<td><s:property value="fechaAsignacion" /></td>
							<td><s:property value="titulo" /></td>
							<td><s:property value="usuario" /></td>
						</tr>
					</s:iterator>

				</table>
			</s:if>
			<s:else>
				<h3>No existe incidencias Reportadas</h3>
			</s:else>
		</div>
	</div>
</div>
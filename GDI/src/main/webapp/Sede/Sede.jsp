<style>
.contenedorTabla {
	overflow-y: auto;
	overflow-x: auto;
	height: 400px;
}
</style>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="container-fluid" style="position: relative;">
	<h3>
		<i class="fa fa-user fa-1x"></i> Sede
	</h3>
	<hr>
	<div class="row animated fadeIn">
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<div style="margin-bottom: 5px" class="btn-group" role="group"
				aria-label="">
				<s:a class="btn btn-link" href="../Usuario/RegistroUsuario">
					<i class="fa fa-user-plus"></i> Agregar</s:a>
			</div>
			<s:form>
				<div class="form-group">
					<label for="Nombre">Nombre de Agencia</label> <input type="text"
						class="form-control" name="usuario.nombre" id="Nombre" />
				</div>
				<div class="form-group">
					<label for="Nombre">Provincia</label> <select class="form-control"
						name="usuario.idGenero" id="Genero">
						<s:iterator value="listarComboGenero">
							<option value=<s:property value="idGenero" />><s:property
									value="Genero" /></option>
						</s:iterator>
					</select>
				</div>
				<div class="form-group">
					<label for="Nombre">Departamento</label> <select
						class="form-control" name="usuario.idGenero" id="Genero">
						<s:iterator value="listarComboGenero">
							<option value=<s:property value="idGenero" />><s:property
									value="Genero" /></option>
						</s:iterator>
					</select>
				</div>
				<div class="form-group">
					<label for="Nombre">Distrito</label> <select class="form-control"
						name="usuario.idGenero" id="Genero">
						<s:iterator value="listarComboGenero">
							<option value=<s:property value="idGenero" />><s:property
									value="Genero" /></option>
						</s:iterator>
					</select>
				</div>
				<div class="form-group">
					<label for="Nombre">Direccion</label> <input type="text"
						class="form-control" name="usuario.nombre" id="Nombre" />
				</div>
				<button type="submit" class="btn btn-primary">Registrar
					Sede</button>
			</s:form>
			<br>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<h4>Listado de Sedes</h4>
			<div class="contenedorTabla">
				<table class="table table-hover table-striped">
					<tr>
						<th>Código</th>
						<th>Sede</th>
					</tr>
					<s:if test="!lSede.isEmpty">
						<s:iterator value="lSede">
							<tr>
								<td><s:property value="idSede" /></td>
								<td><s:property value="sDescripcion" /></td>
							</tr>
						</s:iterator>
					</s:if>
					<s:else>
						<tr>
							<td>100</td>
							<td>San juan de lurigancho</td>
						</tr>
					</s:else>
				</table>
			</div>
		</div>


	</div>


</div>
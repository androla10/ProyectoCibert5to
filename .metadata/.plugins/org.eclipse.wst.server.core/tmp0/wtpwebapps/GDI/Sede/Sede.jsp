<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#country').change(
								function(event) {
									var country = $("select#country").val();
									$.getJSON('ajaxAction', {
										countryName : country
									}, function(jsonResponse) {
										$('#ajaxResponse').text(
												jsonResponse.dummyMsg);
										var select = $('#states');
										select.find('option').remove();
										$.each(jsonResponse.stateMap, function(
												key, value) {
											$('<option>').val(key).text(value)
													.appendTo(select);
										});
									});
								});

						var CargarProvincias = function() {
							$.getJSON('../Geo/listarProvincia', function(json) {
								console.log(json);
								var selectProvincia = $('#Provincia');
								selectProvincia.find('option').remove();
								$.each(json.provinciaMap, function(key, value) {
									$('<option>').val(key).text(value).appenTo(
											selectProvincia);
								});
							});
						};

						$('#Provincia')
								.change(
										function() {
											var position = document
													.getElementById('Provincia').options.selectedIndex;
											var idProvincia = document
													.getElementById('Provincia').options[position].value;
											CargarDepartamentos(idProvincia);
										});

						var CargarDepartamentos = function(idProvincia) {
							$.getJSON('../Geo/listarDepartamento', {
								idProvincia : idProvincia
							}, function(json) {
								// 						var selectProvincia = $('#Provincia');
								// 						selectProvincia.find('option').remove();
								// 						$.each(json.listarProvincias, function(key, value) {
								// 							selectProvincia.append("<option value="+value.idGeo+">"+value.sDescripcion+"</option>");
								// 						});
								console.log(json);
							});

						};

						var CargarProvincias = function() {
							$
									.getJSON(
											'../Geo/listarProvincia',
											function(json) {
												console.log(json);
												var selectProvincia = $('#Provincia');
												selectProvincia.find('option')
														.remove();
												$
														.each(
																json.listarProvincias,
																function(key,
																		value) {
																	selectProvincia
																			.append("<option value="+value.idGeo+">"
																					+ value.sDescripcion
																					+ "</option>");
																});
											});
						};
						CargarProvincias();
					});
</script>
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
			<s:form>
				<div class="form-group">
					<label for="Nombre">Nombre de Agencia</label> <input type="text"
						class="form-control" name="agencia.nombre" id="Nombre" />
				</div>
				<div class="form-group">
					<label for="Nombre">Provincia</label> <select class="form-control"
						name="agencia.idProvincia" id="Provincia">
					</select>
				</div>
				<div class="form-group">
					<label for="Nombre">Departamento</label> <select
						class="form-control" name="agencia.idDepartamentos"
						id="Departamento">
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
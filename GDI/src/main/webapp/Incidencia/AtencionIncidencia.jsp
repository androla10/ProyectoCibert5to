<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/Incidencia/query.js"></script>
<div class="container-fluid">
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Derivaci�n</h4>
	      </div>
	      <div class="modal-body">
	      		<div class="row">
	      			<div class="col-sm-6 col-sm-offset-3">
			      		<form action="">
			      			<div class="form-group">
								<label for="Area">�rea</label>
								<select class="form-control" name="derivacion.idArea" id="Area">
									<optgroup label="Sucursal Lima Centro">
										<option>Tecnolog�a</option>
										<option>Helpdesk</option>
									</optgroup>
									<optgroup label="Sucursal Ate Provincia">
										<option>Riesgo</option>
										<option>Helpdesk</option>
									</optgroup>
								</select>
							</div>
			        		<div class="form-group">
								<label for="Operacion">Operaci�n</label>
								<select class="form-control" name="derivacion.idOperacion" id="Operacion"></select>
							</div>
			        		<div class="form-group">
			      				<label id="Descripcion">Descripci�n</label>
			        			<textarea rows="4" cols="4" id="Descripcion" class="form-control" name="derivacion.descripcion"></textarea>
			        		</div>
			      		</form>
		      		</div>
	      		</div>
	      		
	        	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
	        <button type="button" class="btn btn-primary">Derivar</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<h1 class="text-center">Atenci�n de Incidencia</h1>
	<br>
	<div class="panel-primary">
		<div class="panel-heading">
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-9 col-lg-9">
					<h4>
						<i class="fa fa-user fa-1x"></i>&nbsp; Atenci�n de Incidencia
					</h4>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
					<h4>
						Estado :
						<s:property value="atencion.sEstado" />
					</h4>
				</div>
			</div>
		</div>
		<div class="panel-body">
			<form action="../Incidencia/RegIncidencia"
				id="formRegistroIncidencia" enctype="multipart/form-data"
				method="POST">
				<div class="row">
					<div class="col-sm-12 col-sm-offset-0 col-md-2 col-md-offset-5">
						<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" id="derivar">
							<i class="fa fa-user fa-1x"></i>&nbsp;Derivar
						</button>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="form-group">
							<label for="codIncidencia">C�digo de Incidencia</label> <input
								type="text" class="form-control"
								value='<s:property value="atencion.idIncidencia" />'
								id="codIncidencia" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="Titulo">Titulo</label> <input type="text"
								class="form-control"
								value='<s:property value="atencion.titulo" />' id="Titulo"
								disabled="disabled">
						</div>
						<div class="form-group">
							<label for="TipoIncidencia">Tipo Incidencia</label> <select
								class="form-control" id="TipoIncidencia" disabled="disabled">
								<option value="1" selected="selected" />
								<s:property value="atencion.sTipoIncidencia" />
								</option>
							</select>
						</div>
						<div class="form-group">
							<label for="descripcion">Descripci�n</label>
							<textarea class="form-control" id="descripcion" rows="8" cols="9"
								disabled="disabled"><s:property
									value="atencion.sDescripcion" /></textarea>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="row">
							<div class="col-sm-12 col-sm-offset-0 col-md-2 col-md-offset-5">
								<button type="button" class="btn btn-success" id="comenzar"
									<s:if test="atencion.idEstado == 3">disabled="disabled"</s:if>
									<s:else></s:else>
									onclick="comenzar(<s:property value="atencion.idIncidencia" />)">
									<i class="fa fa-user fa-1x"></i>&nbsp;Comenzar
								</button>
							</div>
						</div>
						<br>
						<div class="form-group">
							<label for="Usuario">Usuario</label> <input type="text"
								class="form-control" id="Usuario"
								value='<s:property value="atencion.usuario"/>'
								disabled="disabled">
						</div>
						<div class="form-group">
							<label for="Nombre">Nombres</label> <input type="text"
								class="form-control"
								value='<s:property value="atencion.nombre"/>' id="Nombre"
								disabled="disabled">
						</div>

						<div class="form-group">
							<label for="Apellido">Apellidos</label> <input type="text"
								class="form-control"
								value='<s:property value="atencion.apellido"/>' id="Apellido"
								disabled="disabled">
						</div>
						<div class="form-group">
							<label for="Matricula">Matricula</label> <input type="text"
								class="form-control"
								value='<s:property value="atencion.matricula"/>' id="Matricula"
								disabled="disabled">
						</div>
						<div class="form-group">
							<label for="Anexo">Anexo</label> <input type="text"
								class="form-control"
								value='<s:property value="atencion.anexo"/>' id="Anexo"
								disabled="disabled">
						</div>
						<div class="form-group">
							<label for="Telefono">Telefono</label> <input type="text"
								class="form-control"
								value='<s:property value="atencion.telefono"/>' id="Telefono"
								disabled="disabled">
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-12 col-sm-offset-0 col-md-2 col-md-offset-5">
						<button type="button" class="btn btn-danger"
							<s:if test="atencion.idEstado == 1 || atencion.idEstado == 2">
						disabled="disabled"
							</s:if>
							<s:else></s:else>>
							<i class="fa fa-user fa-1x"></i>&nbsp;Terminar
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$('#comenzar').click(function(){
		var idIncidencia = 
		comenzar()
	});
function comenzar(idIncidencia) {
	var url = "../Incidencia/comenzarAtencionIncidencia"
	var data = {
		idIncidencia : idIncidencia
	};

	$.getJSON(url, data).done(function(json) {
		// var selectArea = $('#Area');
		// selectArea.find('option').remove();
		// $.each(json.listarArea, function(key,
		// value) {
		// selectArea.append("<option
		// value="+value.idResidenciaArea+">"+value.sDescripcion+"</option>");
		// });
		console.log()
	}).fail(function(jqxhr, textStatus, error) {
		var err = textStatus + ", " + error;
		console.log("Request Failed: " + err);
	});
};

});
</script>
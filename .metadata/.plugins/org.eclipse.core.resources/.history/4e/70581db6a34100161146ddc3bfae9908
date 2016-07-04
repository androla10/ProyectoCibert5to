<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">
	$('#file-es').fileinput({
		language : 'es',
		uploadUrl : '#',
		allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
	});

	$(document).ready(function() {
		$("#input-2").fileinput({
			showUpload : false,
			maxFileCount : 10,
			mainClass : "input-group-lg"
		});

	});
</script>
<link rel="stylesheet"
	href="https://rawgit.com/enyo/dropzone/master/dist/dropzone.css">
<div class="container-fluid">
	<h1 class="text-center">Registrar Incidencia</h1>
	<br>
	<div class="panel-primary">
		<div class="panel-heading">
			<i class="fa fa-user fa-1x"></i>&nbsp;Registrar Incidencia
		</div>
		<div class="panel-body">
			<form action="../Incidencia/RegIncidencia"
				id="formRegistroIncidencia" enctype="multipart/form-data" method="POST">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="form-group">
							<label for="tipoIncidencia">Tipo Incidencia</label> <select
								class="form-control" name="incidencia.idTipoIncidencia"
								id="tipoIncidencia">
								<option value="1">Hardware</option>
								<option value="2">Software</option>
							</select>
						</div>
						<div class="form-group">
							<label for="descripcion">Descripción</label>
							<textarea class="form-control"
								name="incidencia.descripcion" id="descripcion" rows="8" cols="9"></textarea>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="form-group">
							<label for="archivo"><i class="fa fa-file-image-o fa-1x"></i>&nbsp;Agregar
								Fotografía</label>
							<hr>
							<div class="form-group">
								<input id="input-2" name="incidencia.foto" type="file"
									class="file" multiple="multiple" data-show-upload="false"
									data-show-caption="true" />
							</div>
							<br />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 col-sm-offset-0 col-md-2 col-md-offset-5">
						<button type="submit" class="btn btn-danger">
							<i class="fa fa-user fa-1x"></i>&nbsp;Grabar Incidencia
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
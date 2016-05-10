<script type="text/javascript">
	$(window).load(function() {

		$(function() {
			$('#file-input').change(function(e) {
				addImage(e);
			});

			function addImage(e) {
				var file = e.target.files[0], imageType = /image.*/;

				if (!file.type.match(imageType))
					return;

				var reader = new FileReader();
				reader.onload = fileOnload;
				reader.readAsDataURL(file);
			}

			function fileOnload(e) {
				var result = e.target.result;
				$('#imgSalida').attr("src", result);
			}
		});
	});

	// 	$(function() {

	// 		$('#dropzone').on('dragover', function() {
	// 			$(this).addClass('hover');
	// 		});

	// 		$('#dropzone').on('dragleave', function() {
	// 			$(this).removeClass('hover');
	// 		});

	// 		$('#dropzone input')
	// 				.on(
	// 						'change',
	// 						function(e) {
	// 							var file = this.files[0];

	// 							$('#dropzone').removeClass('hover');

	// 							if (this.accept
	// 									&& $.inArray(file.type, this.accept
	// 											.split(/, ?/)) == -1) {
	// 								return alert('File type not allowed.');
	// 							}

	// 							$('#dropzone').addClass('dropped');
	// 							$('#dropzone img').remove();

	// 							if ((/^image\/(gif|png|jpeg)$/i).test(file.type)) {
	// 								var reader = new FileReader(file);

	// 								reader.readAsDataURL(file);

	// 								reader.onload = function(e) {
	// 									var data = e.target.result, $img = $(
	// 											'<img />').attr('src', data)
	// 											.fadeIn();

	// 									$('#dropzone div').html($img);
	// 								};
	// 							} else {
	// 								var ext = file.name.split('.').pop();

	// 								$('#dropzone div').html(ext);
	// 							}
	// 						});
	// 	});
</script>
<style>
#dropzone {
	position: relative;
	border: 10px dotted #ccc;
	border-radius: 20px;
	color: white;
	font: bold 24px/200px arial;
	height: 200px;
	margin: 30px auto;
	text-align: center;
	width: 200px;
}

#dropzone.hover {
	border: 10px solid #FE5;
	color: #FE5;
}

#dropzone.dropped {
	background: #222;
	border: 10px solid #444;
}

#dropzone div {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

#dropzone img {
	border-radius: 10px;
	vertical-align: middle;
	max-width: 95%;
	max-height: 95%;
}

#dropzone [type="file"] {
	cursor: pointer;
	position: absolute;
	width: 200px;
	opacity: 0;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
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
			<form action="" id="formRegistroIncidencia">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="form-group">
							<label for="tipoIncidencia">Tipo Incidencia</label> <select
								class="form-control" name="incidencia.TipoIncidencia"
								id="tipoIncidencia">
								<option value="1">Hardware</option>
								<option value="2">Software</option>
							</select>
						</div>
						<div class="form-group">
							<label for="descripcion">Descripci�n</label>
							<textarea type="text" class="form-control"
								name="usuario.apellido" id="descripcion" rows="8" cols="9"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Registrar</button>
					</div>
					<div class="col-xs-12 col-sm-12 col-sm-6 col-lg-6">
						<div class="form-group">
							<label for="archivo"><i class="fa fa-file-image-o fa-1x"></i>&nbsp;Agregar
								Fotograf�a</label> <input name="file-input" id="file-input" type="file" />
							<br />
							<div class="contenedorDeImagenes" style="width: auto;">
								 <img id="imgSalida" width="30%" height="30%" src="" />
								 <img id="imgSalida1" width="30%" height="30%" src="" />
								 <img id="imgSalida2" width="30%" height="30%" src="" />
							</div>
						</div>
					</div>
				</div>
			</form>
			<form action="/upload-target" class="dropzone"></form>
		</div>
	</div>
</div>
<style>
#seguimiento {
	background-color: #fff;
	width: 100%;
	height: auto;
}
</style>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
	var consumoService = [ {
		codIncidencia : "INA001",
		fIncidencia : "10-01-2014",
		iEstado : 1
	}, {
		codIncidencia : "INA002",
		fIncidencia : "12-06-2014",
		iEstado : 2
	}, {
		codIncidencia : "INA003",
		fIncidencia : "14-03-2015",
		iEstado : 4
	}, {
		codIncidencia : "INA004",
		fIncidencia : "05-11-2015",
		iEstado : 3
	} ];

	for (var i = 1; i < consumoService.length; i++) {
		var objeto = consumoService[i];
		console.log(objeto);
	}

	function cargar(id) {
		var Canvas = new objeto(id);
		Canvas.cargarCanvas();
	}

	var objeto = function(id) {
		var elemento = document.getElementById(id);
		var activo = "#fff";
		var inactivo = "#ccc";
		var bordes = "#ccc";
		var fillactive = "#FF920F";
		var fillinactive = "#fff";
		var fillinactivepaso="#96968F";
		var inactivepaso="#fff";
		var colorLetra = "#737167";
		var iEstado = 2;
		this.size = {
			width : elemento.offsetWidth,
			height : elemento.offsetHeight
		};
		this.cargarCanvas = function() {
			if (elemento.getContext("2d")) {
				lienzo = elemento.getContext("2d");
				
				lienzo.beginPath();
				lienzo.fillStyle = iEstado == 1 ? fillactive : iEstado > 1 ? fillinactivepaso : fillinactive ;
				lienzo.strokeStyle = bordes;
				lienzo.arc(100, 100, 40, 0, Math.PI * 2, true);
				lienzo.lineTo(250, 100);
				lienzo.fill();
				lienzo.stroke();
				lienzo.closePath();

				lienzo.beginPath();
				lienzo.fillStyle = iEstado == 2 ? fillactive : iEstado > 2 ? fillinactivepaso : fillinactive;
				lienzo.arc(300, 100, 40, 0, Math.PI * 2, true);
				lienzo.lineTo(450, 100);
				lienzo.fill();
				lienzo.stroke();
				lienzo.closePath();

				lienzo.beginPath();
				lienzo.fillStyle = iEstado == 3 ? fillactive : iEstado > 3 ? fillinactivepaso : fillinactive;
				lienzo.arc(500, 100, 40, 0, Math.PI * 2, true);
				lienzo.lineTo(650, 100);
				lienzo.fill();
				lienzo.stroke();
				lienzo.closePath();

				lienzo.beginPath();
				lienzo.fillStyle = iEstado == 4 ? fillactive : iEstado > 3 ? fillinactivepaso : fillinactive;
				lienzo.arc(700, 100, 40, 0, Math.PI * 2, true);
				lienzo.fill();
				lienzo.stroke();
				lienzo.closePath();

				/*Buenas*/
				lienzo.beginPath();
				lienzo.fillStyle = iEstado == 1 ? activo : iEstado > 1 ? inactivepaso : inactivo;
				lienzo.moveTo(120, 85);
				lienzo.lineTo(95, 115);
				lienzo.lineTo(85, 105);
				lienzo.lineTo(90, 100);
				lienzo.lineTo(95, 105);
				lienzo.lineTo(115, 85);
				lienzo.fill();
				lienzo.closePath();
				
				lienzo.beginPath();
				lienzo.fillStyle = iEstado == 2 ? activo : iEstado > 2 ? inactivepaso : inactivo;
				lienzo.moveTo(320, 85);
				lienzo.lineTo(295, 115);
				lienzo.lineTo(285, 105);
				lienzo.lineTo(290, 100);
				lienzo.lineTo(295, 105);
				lienzo.lineTo(315, 85);
				lienzo.fill();
				lienzo.closePath();

				lienzo.beginPath();
				lienzo.fillStyle = iEstado == 3 ? activo : iEstado > 3 ? inactivepaso : inactivo;
				lienzo.moveTo(520, 85);
				lienzo.lineTo(495, 115);
				lienzo.lineTo(485, 105);
				lienzo.lineTo(490, 100);
				lienzo.lineTo(495, 105);
				lienzo.lineTo(515, 85);
				lienzo.fill();
				lienzo.closePath();

				lienzo.beginPath();
				lienzo.fillStyle = iEstado == 4 ? activo : iEstado > 4 ? inactivepaso : inactivo;
				lienzo.moveTo(720, 85);
				lienzo.lineTo(695, 115);
				lienzo.lineTo(685, 105);
				lienzo.lineTo(690, 100);
				lienzo.lineTo(695, 105);
				lienzo.lineTo(715, 85);
				lienzo.fill();
				lienzo.closePath();

				lienzo.beginPath();
				lienzo.fillStyle = colorLetra;
				lienzo.font = "16px Calibri Light";
				lienzo.fillText("Creado", 75, 175);

				lienzo.font = "16px Calibri Light";
				lienzo.fillText("Observado", 268, 175);

				lienzo.font = "16px Calibri Light";
				lienzo.fillText("En proceso", 467, 175);

				lienzo.font = "16px Calibri Light";
				lienzo.fillText("Finalizado", 670, 175);
			} else {
				alert("El canvas no soporta");
			}
		};

	};
</script>
<div class="container-fluid">
	<h3>
		<i class="fa fa-line-chart" aria-hidden="true"></i> Seguimiento
	</h3>
	<hr>
	<br>
	<section class="row animated fadeIn">
<!-- 	zoomIn -->
		<article>
			<div class="col-xs-12 col-sm-3 col-md-4 col-lg-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<small>Incidencia Nro : 00001</small>
					</div>
					<table class="table">
							<tr>
								<th>Estado</th>
								<th>Fecha</th>
							</tr>
							<tr>
								<td>Creado</td>
								<td>03/05/2016 03:24:08 pm</td>
							</tr>
							<tr>
								<td>Observador</td>
								<td>03/05/2016 03:28:51 pm</td>
							</tr>
							<tr>
								<td>En proceso</td>
								<td>03/05/2016 03:31:01 pm</td>
							</tr>
							<tr>
								<td>Finalizado</td>
								<td>03/05/2016 03:50:51 pm</td>
							</tr>
					</table>
				</div>
			</div>
			<div class="col-xs-12 col-sm-9 col-md-8 col-lg-8">
				<canvas id="seguimiento" width="800" height="300">
				Su navegador no soporta el elemento html5
			</canvas>
			</div>
		</article>
	</section>
	<script type="text/javascript">
		var Canvas = new objeto("seguimiento");
		Canvas.cargarCanvas();
	</script>
</div>
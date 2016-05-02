<style>
#seguimiento {
	background-color: #fff;
}
</style>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
	var objeto = function(id) {
		var elemento = document.getElementById(id);
		var activo = "#fff";
		var inactivo = "#ccc";
		var bordes = "#ccc";
		var fillactive = "#FF920F";
		var fillinactive = "#fff";
		this.size = {
			width : elemento.offsetWidth,
			height : elemento.offsetHeight
		};
		this.cargarCanvas = function() {
			if (elemento.getContext("2d")) {
				lienzo = elemento.getContext("2d");
				lienzo.beginPath();
				lienzo.fillStyle = fillactive;
				lienzo.strokeStyle = bordes;
				lienzo.arc(100, 100, 40, 0, Math.PI * 2, true);
				lienzo.lineTo(250, 100);
				lienzo.fill();
				lienzo.closePath();
				lienzo.stroke();

				lienzo.beginPath();
				lienzo.fillStyle = fillactive;
				lienzo.arc(300, 100, 40, 0, Math.PI * 2, true);
				lienzo.lineTo(450, 100);
				lienzo.closePath();
				lienzo.stroke();

				lienzo.beginPath();
				lienzo.fillStyle = fillactive;
				lienzo.arc(500, 100, 40, 0, Math.PI * 2, true);
				lienzo.lineTo(650, 100);
				lienzo.closePath();
				lienzo.stroke();

				lienzo.beginPath();
				lienzo.fillStyle = fillactive;
				lienzo.arc(700, 100, 40, 0, Math.PI * 2, true);
				lienzo.closePath();
				lienzo.stroke();

				/*Buenas*/
				lienzo.beginPath();
				lienzo.fillStyle = activo;
				lienzo.moveTo(120, 85);
				lienzo.lineTo(95, 115);
				lienzo.lineTo(85, 105);
				lienzo.lineTo(90, 100);
				lienzo.lineTo(95, 105);
				lienzo.lineTo(115, 85);
				lienzo.fill();

				lienzo.beginPath();
				lienzo.fillStyle = inactivo;
				lienzo.moveTo(320, 85);
				lienzo.lineTo(295, 115);
				lienzo.lineTo(285, 105);
				lienzo.lineTo(290, 100);
				lienzo.lineTo(295, 105);
				lienzo.lineTo(315, 85);
				lienzo.fill();

				lienzo.beginPath();
				lienzo.fillStyle = inactivo;
				lienzo.moveTo(520, 85);
				lienzo.lineTo(495, 115);
				lienzo.lineTo(485, 105);
				lienzo.lineTo(490, 100);
				lienzo.lineTo(495, 105);
				lienzo.lineTo(515, 85);
				lienzo.fill();

				lienzo.beginPath();
				lienzo.fillStyle = inactivo;
				lienzo.moveTo(720, 85);
				lienzo.lineTo(695, 115);
				lienzo.lineTo(685, 105);
				lienzo.lineTo(690, 100);
				lienzo.lineTo(695, 105);
				lienzo.lineTo(715, 85);
				lienzo.fill();

				lienzo.strokeStyle = "red";
				lienzo.font = "bold 15px Calibri Light";
				lienzo.fillText("Creado", 75, 175);

				lienzo.font = "bold 15px Calibri Light";
				lienzo.fillText("Observado", 275, 175);

				lienzo.font = "bold 15px Calibri Light";
				lienzo.fillText("En proceso", 475, 175);

				lienzo.font = "bold 15px Calibri Light";
				lienzo.fillText("Finalizado", 675, 175);
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
	<section class="row animated zoomIn">
		<div id="main" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<canvas id="seguimiento" width="800" height="300">
				Su navegador no soporta el elemento html5
			</canvas>
		</div>
	</section>
	<script type="text/javascript">
		var Canvas = new objeto("seguimiento");
		Canvas.cargarCanvas();
	</script>
	<script type="text/javascript">
		// 		window.addEventListener("resize", handleResize);
		// 		function handleResize() {
		// 			var w = window.innerWidth - 2; // -2 accounts for the border
		// 			var h = window.innerHeight - 2;
		// 			Canvas.width = w;
		// 			Canvas.height = h;

		// 			var ratio = 100 / 100; // 100 is the width and height of the circle content.
		// 			var windowRatio = w / h;
		// 			var scale = w / 100;
		// 			if (windowRatio > ratio) {
		// 				scale = h / 100;
		// 			}
		// 			// Scale up to fit width or height
		// 			c.scaleX = c.scaleY = scale;

		// 			// Center the shape
		// 			c.x = w / 2;
		// 			c.y = h / 2;

		// 			// 	    stage.update();
		// 		}

		// 		handleResize();
// 		$(document).ready(function() {
// 			//Get the canvas &
// 			var c = $('#seguimiento');
// 			var ct = c.get(0).getContext('2d');
// 			var container = $(c).parent();

// 			//Run function when browser resizes
// 			$(window).resize(respondCanvas);

// 			function respondCanvas() {
// 				c.attr('width', $(container).width()); //max width
// 				c.attr('height', $(container).height()); //max height
// 			}
// 			//Initial call 
// 			respondCanvas();

// 		});
	</script>
</div>
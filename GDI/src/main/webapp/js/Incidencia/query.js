$(document).ready(function() {
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
	
	$("#derivar").click(function(){
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
	});

});

//var comenzar=function(idIncidencia){
//		alert(idIncidencia);
//}
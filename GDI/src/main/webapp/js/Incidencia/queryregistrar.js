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
		function esconderCodigo(){
			$("#alertarcodigo").removeClass("zoomIn");
			$("#alertarcodigo").addClass("zoomOut");
// 			$("#alertarcodigo").hide();
 		}
		
		function mostrarCodigo(){
			var codigo = $("#codigoAutogenerado").val();
			console.log(codigo);
			if(codigo == 0){
				$("#alertarcodigo").hide();
			}
			else{
				$("#alertarcodigo").addClass("zoomIn");
				$("#alertarcodigo").show();
				setTimeout(esconderCodigo,5000);
			}
		};
		
		mostrarCodigo();
 		
		
		
	});
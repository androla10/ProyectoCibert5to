$(function() {

	// var dispositivo = navigator.userAgent.toLowerCase();
	// console.log(dispositivo.search(/iphone|ipod|ipad|android/));
	// if (dispositivo.search(/iphone|ipod|ipad|android/) === -1) {
	// $('.aside').hover(function() {
	// $('.palabra').css('display', 'inline-block');
	// $(this).css('width', '180px');
	// $('body').css('padding-left', '180px');
	// }, function() {
	// // vuelve a dejar el <div> como estaba al hacer el "mouseout"
	// $('.palabra').css('display', 'none');
	// $(this).css('width', '50px');
	// $('body').css('padding-left', '50px');
	// });
	// }

	/* Validar Registro Usuario */
	$('#formRegistroUsuario')
			.formValidation(
					{
						framework : 'bootstrap',
						icon : {
							valid : 'glyphicon glyphicon-ok',
							invalid : 'glyphicon glyphicon-remove',
							validating : 'glyphicon glyphicon-refresh'
						},
						fields : {
							'usuario.nombre' : {
								validators : {
									notEmpty : {
										message : 'El campo nombre es requerido'
									},
									stringLength : {
										min : 2,
										max : 35,
										message : 'Solo puede aceptar nombres desde 2 a 30 caracteres'
									},
									regexp : {
										regexp : /^[a-zA-Z\s]+$/,
										message : 'El nombre solo debe contener letras'
									}
								}
							},
							'usuario.apellido' : {
								validators : {
									notEmpty : {
										message : 'El campo apellido es requerido es requerido'
									},
									stringLength : {
										min : 6,
										max : 35,
										message : 'Solo puede aceptar apellidos desde 6 a 30 caracteres'
									},
									regexp : {
										regexp : /^[a-zA-Z\s]+$/,
										message : 'El nombre solo debe contener letras'
									}
								}
							},
							'usuario.genero' : {
								validators : {
									notEmpty : {
										message : 'El campo genero es requerido es requerido'
									}
								}
							},
							'usuario.dni' : {
								validators : {
									notEmpty : {
										message : 'El campo DNI es requerido es requerido'
									},
									stringLength : {
										min : 8,
										max : 8,
										message : 'El dni debe contener 8 caracteres'
									},
									regexp : {
										regexp : /^[0-9]+$/,
										message : 'El dni solo debe contener numeros'
									}
								}
							},
							'usuario.telefono' : {
								validators : {
									stringLength : {
										min : 7,
										max : 7,
										message : 'El campo telefono debe contener 7 caracteres'
									},
									regexp : {
										regexp : /^[0-9]+$/,
										message : 'El campo telefono solo debe contener numeros'
									}
								}
							},
							'usuario.celular' : {
								validators : {
									stringLength : {
										min : 9,
										max : 9,
										message : 'El campo celular debe contener 9 caracteres'
									},
									regexp : {
										regexp : /^[0-9]+$/,
										message : 'El campo celular solo debe contener numeros'
									}
								}
							},
							'usuario.correo' : {
								validators : {
									notEmpty : {
										message : 'El campo email es requerido'
									},
									emailAddress : {
										message : 'El correo es invalido'
									}
								}
							},
							'usuario.tipoUsuario' : {
								validators : {
									notEmpty : {
										message : 'Por favor seleccione tipo de usuario'
									}
								}
							}
						}
					});

});
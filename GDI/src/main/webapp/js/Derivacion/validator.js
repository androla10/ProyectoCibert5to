$('#formDerivacion').formValidation({
	framework : 'bootstrap',
	icon : {
		valid : 'glyphicon glyphicon-ok',
		invalid : 'glyphicon glyphicon-remove',
		validating : 'glyphicon glyphicon-refresh'
	},
	fields : {
		'incidencia.idUsuario' : {
			validators : {
				notEmpty : {
					message : 'El campo nombre es requerido'
				}
			}
		},
		'incidencia.idArea' : {
			validators : {
				notEmpty : {
					message : 'El campo apellido es requerido es requerido'
				}
			}
		},
		'incidencia.descripcion' : {
			validators : {
				notEmpty : {
					message : 'El campo descripcion es obligatorio'
				},
				stringLength : {
					min : 2,
					max : 50,
					message : 'Solo se acepta el titulo de 2 a 100 caracteres'
				},
				regexp : {
					regexp : /^[a-zA-Z\s]+$/,
					message : 'El titulo solo debe contener letras'
				}
			}
		}
	}
});
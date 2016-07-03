<%@ taglib prefix="s" uri="/struts-tags"%>
<style>
.detalle {
	font-size: 13px;
	font-family: 'Raleway', sans-serif;
	font-weight: lighter;
}
</style>
<div class="container-fluid">
	<hr>
	<div class="panel-primary">
		<div class="panel-heading">
			<i class="fa fa-user fa-1x"></i>&nbsp;Registrar Usuario
		</div>
		<div class="panel-body">
			<s:form action="Registrar" namespace="Usuario"
				id="formRegistroUsuario">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="form-group">
							<label for="Nombre">Nombres</label> <input type="text"
								class="form-control" name="usuario.nombre" id="Nombre" />
						</div>
						<div class="form-group">
							<label for="Apellido">Apellidos</label> <input type="text"
								class="form-control" name="usuario.apellido" id="Apellido" />
						</div>
						<div class="form-group">
							<label for="Dni">N�mero de DNI</label> <input type="text"
								class="form-control" name="usuario.dni" id="Dni" />
						</div>
						<div class="form-group">
							<label for="Correo" class="control-label">Correo</label>
							<div class="input-group">
								<span class="input-group-addon">@</span> <input type="email"
									class="form-control" name="usuario.correo" id="Correo" />
							</div>
						</div>
						<div class="form-group">
							<label for="Genero">Genero</label> <select class="form-control"
								name="usuario.idGenero" id="Genero">
								<s:iterator value="listarComboGenero">
									<option value=<s:property value="idGenero" />><s:property
											value="Genero" /></option>
								</s:iterator>
							</select>
						</div>

						<div class="form-group">
							<label for="TipoUsuario">Tipo de Usuario</label> <select
								class="form-control" name="usuario.idTipo" id="TipoUsuario">
								<s:iterator value="listarComboTipoUsuario">
									<option value=<s:property value="idTipoUsuario" />><s:property
											value="TipoUsuario" /></option>
								</s:iterator>
							</select>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-sm-6 col-lg-6 detalle">
						<div class="form-group">
							<label for="Dni">Matr�cula</label> <input type="text"
								class="form-control" name="usuario.matricula" id="Dni" />
						</div>
						<div class="form-group">
							<label for="Telefono">Telefono</label> <input type="text"
								class="form-control" name="usuario.telefono" id="Telefono" />
						</div>
						<div class="form-group">
							<label for="Celular">Celular</label> <input type="text"
								class="form-control" name="usuario.celular" id="Celular" />
						</div>
						<div class="form-group">
							<label for="Celular">Anexo</label> <input type="text"
								class="form-control" name="usuario.anexo" id="Celular" />
						</div>
						<div class="form-group">
							<label for="Residencia">Residencia</label> <select  
								class="form-control" name="usuario.idResidencia" id="Residencia">
								<s:iterator value="listarResidencia">
									<option value=<s:property value="idResidencia" />><s:property
											value="sDescripcion" /></option>
								</s:iterator>
							</select>
						</div>
						<div class="form-group">
							<label for="Area">�rea</label> <select
								class="form-control" name="usuario.idArea" id="Area">
							</select>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-sm-12 col-lg-12">
						<button type="submit" class="btn btn-primary">Registrar</button>
					</div>
				</div>
			</s:form>
			<small class="mensajeError animated bounceInLeft"><s:actionmessage /></small>

		</div>
	</div>
</div>
<script type="text/javascript" src="../js/Usuario/query.js"></script>
<script type="text/javascript" src="../js/Usuario/validator.js"></script>
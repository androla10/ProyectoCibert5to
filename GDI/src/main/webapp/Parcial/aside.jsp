<%@page import="com.cibertec.Model.UsuarioModel"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	UsuarioModel usuario = (UsuarioModel) session.getAttribute("user");
%>
<div class="list-group">
	<%-- 	<s:a href="../Parcial/FormularioPrincipal" class="list-group-item opcionesGenerales"><i class="fa fa-home fa-ws" aria-hidden="true"></i>&nbsp; <div class="palabra">Inicio</div></s:a>  --%>
	<%
		/*Es administrador*/
		if (usuario.getIdTipo() == 1) {
	%>
	<s:a href="../Parcial/FormularioAdministrador"
		class="list-group-item opcionesGenerales">
		<i class="fa fa-book fa-ws" aria-hidden="true"></i>&nbsp; <div
			class="palabra">Administrar</div>
	</s:a>
	<%
		/*Usuario Generador*/
		} else if (usuario.getIdTipo() == 2) {
	%>
	<s:a href="../Incidencia/RegistrarIncidencia"
		class="list-group-item opcionesGenerales">
		<i class="fa fa-pencil fa-ws" aria-hidden="true"></i>&nbsp; <div
			class="palabra">Registrar Incidencia</div>
	</s:a>
	<s:a href="../Seguimiento/Seguimiento"
		class="list-group-item opcionesGenerales">
		<i class="fa fa-cog fa-ws" aria-hidden="true"></i>&nbsp; <div
			class="palabra">Seguimiento Incidencia</div>
	</s:a>
	<%
		}
	/*Operador*/
		else if(usuario.getIdTipo() == 3){
	%>
	<s:a href="../Incidencia/ListarIncidencia"
		class="list-group-item opcionesGenerales">
		<i class="fa fa-list fa-ws" aria-hidden="true"></i>&nbsp; <div
			class="palabra">Atenci�n de Incidencias</div>
	</s:a>
	<%
	
	/*Supervisor*/
		}
		else{
	%>
	<s:a href="../Incidencia/IncidenciasReportadasSup"
		class="list-group-item opcionesGenerales">
		<i class="fa fa-flag fa-ws" aria-hidden="true"></i>&nbsp; <div
			class="palabra">Incidencias Reportadas</div>
	</s:a>
	<s:a href="../Incidencia/ConsultaIncidencia"
		class="list-group-item opcionesGenerales">
		<i class="fa fa-flag fa-ws" aria-hidden="true"></i>&nbsp; <div
			class="palabra">Consultar Incidencia</div>
	</s:a>
	<%
		}
	%>
</div>
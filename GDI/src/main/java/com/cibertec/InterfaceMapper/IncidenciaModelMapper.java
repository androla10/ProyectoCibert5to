package com.cibertec.InterfaceMapper;

import java.sql.SQLException;

import com.cibertec.Model.IncidenciaModel;
import java.util.*;

public interface IncidenciaModelMapper {

	public int RegistrarIncidencia(IncidenciaModel incidencia) throws SQLException;

	public int ModificarIncidencia(IncidenciaModel incidencia) throws SQLException;

	public List<IncidenciaModel> ListarIncidencia() throws SQLException;

	public int EliminarIncidencia(int codigoIncidencia) throws SQLException;
	
	public List<IncidenciaModel> ListarIncidenciasAsignadas(int idUsuario) throws SQLException;
	
}

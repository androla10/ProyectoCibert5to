package com.cibertec.InterfaceMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cibertec.Model.UsuarioModel;

public interface UsuarioModelMapper {
	public int Registrar() throws Exception;

	public int Modificar() throws Exception;

	public int Eliminar() throws Exception;

	public UsuarioModel Obtener(int idUsuario) throws Exception;

	public List<UsuarioModel> ObtenerListado() throws Exception;
	
	public UsuarioModel ValidarUsuario(@Param("usuario") String usuario,@Param("clave") String clave)throws Exception;
}

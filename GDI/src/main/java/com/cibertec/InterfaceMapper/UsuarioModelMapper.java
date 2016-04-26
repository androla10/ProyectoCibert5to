package com.cibertec.InterfaceMapper;

import java.util.List;

import com.cibertec.Model.UsuarioModel;

public interface UsuarioModelMapper {
	public int Registrar() throws Exception;

	public int Modificar() throws Exception;

	public int Eliminar() throws Exception;

	public UsuarioModel Obtener(int idUsuario) throws Exception;

	public List<UsuarioModel> Obtener() throws Exception;
}
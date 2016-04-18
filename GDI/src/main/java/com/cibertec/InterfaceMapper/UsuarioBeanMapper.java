package com.cibertec.InterfaceMapper;

import java.util.List;

import com.cibertec.Bean.UsuarioBean;

public interface UsuarioBeanMapper {
	public int Registrar() throws Exception;

	public int Modificar() throws Exception;

	public int Eliminar() throws Exception;

	public UsuarioBean Obtener(int idUsuario) throws Exception;

	public List<UsuarioBean> Obtener() throws Exception;
}

package com.cibertec.Actions;

import com.cibertec.Model.UsuarioModel;
import com.cibertec.interceptor.UsuarioHabilitado;
import com.opensymphony.xwork2.ActionSupport;

public class UsuarioAction extends ActionSupport implements UsuarioHabilitado{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UsuarioModel usuario;

	public UsuarioModel getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioModel usuario) {
		this.usuario = usuario;
	}
	
	public String registrar(){
		if(usuario!=null){
			return SUCCESS;
		}
		return ERROR;
	}
}

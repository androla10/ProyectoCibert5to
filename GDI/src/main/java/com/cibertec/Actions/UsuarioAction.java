package com.cibertec.Actions;

import com.cibertec.Model.UsuarioModel;
import com.opensymphony.xwork2.ActionSupport;

public class UsuarioAction extends ActionSupport{
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

package com.cibertec.Actions;

import com.cibertec.Bean.UsuarioBean;
import com.opensymphony.xwork2.ActionSupport;

public class UsuarioAction extends ActionSupport{
	private UsuarioBean usuario;

	public UsuarioBean getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioBean usuario) {
		this.usuario = usuario;
	}
	
	public String registrar(){
		if(usuario!=null){
			return SUCCESS;
		}
		return ERROR;
	}
}
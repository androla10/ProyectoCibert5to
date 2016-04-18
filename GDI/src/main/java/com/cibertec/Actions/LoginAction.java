package com.cibertec.Actions;

import com.cibertec.Bean.UsuarioBean;

public class LoginAction {
	private UsuarioBean usuario;

	public UsuarioBean getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioBean usuario) {
		this.usuario = usuario;
	}

	public String login() {
		if (usuario.getUsuario().equalsIgnoreCase("Admin") && usuario.getPassword().equalsIgnoreCase("123")) {
			return "ok";
		}
		return "no";
	}

}

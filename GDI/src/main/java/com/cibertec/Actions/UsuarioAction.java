package com.cibertec.Actions;

import java.util.List;

import com.cibertec.Model.UsuarioModel;
import com.cibertec.Service.UsuarioDao;
import com.cibertec.interceptor.UsuarioHabilitado;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class UsuarioAction extends ActionSupport implements UsuarioHabilitado {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public List<UsuarioModel> getlUsuario() {
		return lUsuario;
	}

	public void setlUsuario(List<UsuarioModel> lUsuario) {
		this.lUsuario = lUsuario;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	private UsuarioModel usuario;
	private List<UsuarioModel> lUsuario;

	public UsuarioModel getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioModel usuario) {
		this.usuario = usuario;
	}

	public String registrar() {
		if (usuario != null) {
			return SUCCESS;
		}
		return ERROR;
	}

	public String listarUsuario() {
		try {
			lUsuario = new UsuarioDao().ObtenerListado();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return ERROR;
		}
		if (lUsuario != null)
			return SUCCESS;
		else
			return ERROR;
	}

}

package com.cibertec.Actions;

import java.util.List;

import com.cibertec.Model.GeneroModel;
import com.cibertec.Model.ResidenciaModel;
import com.cibertec.Model.TipoUsuarioModel;
import com.cibertec.Model.UsuarioModel;
import com.cibertec.Service.GeneroDAO;
import com.cibertec.Service.ResidenciaDAO;
import com.cibertec.Service.TipoUsuarioDao;
import com.cibertec.Service.UsuarioDAO;
import com.cibertec.interceptor.UsuarioHabilitado;
import com.opensymphony.xwork2.ActionSupport;

public class UsuarioAction extends ActionSupport implements UsuarioHabilitado {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UsuarioModel usuario;
	private List<UsuarioModel> lUsuario;
	private List<TipoUsuarioModel> listarComboTipoUsuario;
	private List<GeneroModel> listarComboGenero;
	private List<ResidenciaModel> listarResidencia;
	private UsuarioDAO dao = new UsuarioDAO();

	
	public List<ResidenciaModel> getListarResidencia() {
		return listarResidencia;
	}

	public void setListarResidencia(List<ResidenciaModel> listarResidencia) {
		this.listarResidencia = listarResidencia;
	}

	public UsuarioDAO getDao() {
		return dao;
	}

	public void setDao(UsuarioDAO dao) {
		this.dao = dao;
	}

	public List<GeneroModel> getListarComboGenero() {
		return listarComboGenero;
	}

	public void setListarComboGenero(List<GeneroModel> listarComboGenero) {
		this.listarComboGenero = listarComboGenero;
	}

	public List<UsuarioModel> getlUsuario() {
		return lUsuario;
	}

	public void setlUsuario(List<UsuarioModel> lUsuario) {
		this.lUsuario = lUsuario;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public UsuarioModel getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioModel usuario) {
		this.usuario = usuario;
	}

	public List<TipoUsuarioModel> getListarComboTipoUsuario() {
		return listarComboTipoUsuario;
	}

	public void setListarComboTipoUsuario(List<TipoUsuarioModel> listarComboTipoUsuario) {
		this.listarComboTipoUsuario = listarComboTipoUsuario;
	}

	public String registrar() {
		if (this.usuario != null) {
			try {
				int resultado = dao.Registrar(this.usuario);
				if (resultado > -1) {
					addActionMessage("Usuario Registrado");
					return SUCCESS;
				}
				else if(resultado == -2){
					addActionMessage("El dni que est� ingresando ya esta siendo usado por un usuario");
					return ERROR;
				}else {
					addActionMessage("Ha ocurrido un error al registrar el usuario");
					return ERROR;
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				addActionMessage("Ha ocurrido un error al registrar el usuario");
				return ERROR;
			}
		} else {
			addActionMessage("Ha ocurrido un error al registrar el usuario");
			return ERROR;
		}
	}

	public String listarUsuario() {
		try {
			lUsuario = dao.ObtenerListado();
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

	public String CargarRegistroUsuario() {
		try {
			listarComboTipoUsuario = new TipoUsuarioDao().listarCombo();
			listarComboGenero = new GeneroDAO().listarCombo();
			listarResidencia = new ResidenciaDAO().listarResidencia();
			
			if (listarComboTipoUsuario.size() != 0 && listarComboGenero.size() != 0) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return ERROR;
		}
	}

}

package com.cibertec.Actions;

import java.util.List;

import com.cibertec.Model.SedeModel;
import com.cibertec.Model.UsuarioModel;
import com.cibertec.Service.SedeDAO;
import com.cibertec.interceptor.UsuarioHabilitado;
import com.opensymphony.xwork2.ActionSupport;

public class SedeAction extends ActionSupport implements UsuarioHabilitado {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SedeModel sede;
	private List<SedeModel> lSede;
	private SedeDAO dao = new SedeDAO();

	public SedeModel getSede() {
		return sede;
	}

	public void setSede(SedeModel sede) {
		this.sede = sede;
	}

	public List<SedeModel> getlSede() {
		return lSede;
	}

	public void setlSede(List<SedeModel> lSede) {
		this.lSede = lSede;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String registrar() {
		// if (this.usuario != null) {
		// try {
		// int resultado = dao.Registrar(this.usuario);
		// if (resultado > -1) {
		// addActionMessage("Usuario Registrado");
		// return SUCCESS;
		// }
		// else if(resultado == -2){
		// addActionMessage("El dni que está ingresando ya esta siendo usado por
		// un usuario");
		// return ERROR;
		// }else {
		// addActionMessage("Ha ocurrido un error al registrar el usuario");
		// return ERROR;
		// }
		// } catch (Exception e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// addActionMessage("Ha ocurrido un error al registrar el usuario");
		// return ERROR;
		// }
		// } else {
		// addActionMessage("Ha ocurrido un error al registrar el usuario");
		// return ERROR;
		// }
		return ERROR;
	}

	public String listarSede() {
		try {
			lSede = dao.listarSedes();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return ERROR;
		}
		if (lSede != null)
			return SUCCESS;
		else
			return ERROR;
	}

	public String CargarRegistroUsuario() {
		// try {
		// listarComboTipoUsuario = new TipoUsuarioDao().listarCombo();
		// listarComboGenero = new GeneroDAO().listarCombo();
		// if (listarComboTipoUsuario.size() != 0 && listarComboGenero.size() !=
		// 0) {
		// return SUCCESS;
		// } else {
		// return ERROR;
		// }
		// } catch (Exception e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// return ERROR;
		// }
		return ERROR;
	}

	@Override
	public void setUsuario(UsuarioModel usuario) {
		// TODO Auto-generated method stub

	}

}

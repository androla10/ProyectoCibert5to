package com.cibertec.Actions;

import java.util.List;

import com.cibertec.Model.GeoModel;
import com.cibertec.Model.SedeModel;
import com.cibertec.Model.UsuarioModel;
import com.cibertec.Service.GeoDAO;
import com.cibertec.interceptor.UsuarioHabilitado;
import com.opensymphony.xwork2.ActionSupport;

public class GeoAction extends ActionSupport implements UsuarioHabilitado {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SedeModel sede;
	private List<GeoModel> listarProvincias = null;
	private List<GeoModel> listarDistritos = null;
	private List<GeoModel> listarDepartamentos = null;
	private GeoDAO dao = new GeoDAO();
	private int idProvincia;
	private int idDepartamento;

	public List<GeoModel> getListarDistritos() {
		return listarDistritos;
	}

	public void setListarDistritos(List<GeoModel> listarDistritos) {
		this.listarDistritos = listarDistritos;
	}

	public int getIdProvincia() {
		return idProvincia;
	}

	public void setIdProvincia(int idProvincia) {
		this.idProvincia = idProvincia;
	}

	public int getIdDepartamento() {
		return idDepartamento;
	}

	public void setIdDepartamento(int idDepartamento) {
		this.idDepartamento = idDepartamento;
	}

	public List<GeoModel> getListarDepartamentos() {
		return listarDepartamentos;
	}

	public void setListarDepartamentos(List<GeoModel> listarDepartamentos) {
		this.listarDepartamentos = listarDepartamentos;
	}

	public List<GeoModel> getListarProvincias() {
		return listarProvincias;
	}

	public void setListarProvincias(List<GeoModel> listarProvincias) {
		this.listarProvincias = listarProvincias;
	}

	public GeoDAO getDao() {
		return dao;
	}

	public void setDao(GeoDAO dao) {
		this.dao = dao;
	}

	public SedeModel getSede() {
		return sede;
	}

	public void setSede(SedeModel sede) {
		this.sede = sede;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String listarProvincia() {

		try {
			this.listarProvincias = dao.listarProvincias();
			if (listarProvincias != null) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ERROR;

	}

	public String listarDepartamentos() {

		try {
			this.listarDepartamentos = dao.listarDepartamentos(this.idProvincia);
			if (listarProvincias != null) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ERROR;

	}

	public String listarDistritos() {

		try {
			this.listarDistritos = dao.listarDistritos(this.idDepartamento);
			if (listarProvincias != null) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ERROR;

	}

	@Override
	public void setUsuario(UsuarioModel usuario) {

	}

}

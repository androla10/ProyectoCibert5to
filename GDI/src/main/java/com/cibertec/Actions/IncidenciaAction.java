package com.cibertec.Actions;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.util.ServletContextAware;

import com.cibertec.Model.IncidenciaModel;
import com.cibertec.Model.UsuarioModel;
import com.cibertec.Service.IncidenciaDAO;
import com.cibertec.interceptor.UsuarioHabilitado;
import com.cibertec.metodos.Metodos;
import com.opensymphony.xwork2.ActionSupport;

public class IncidenciaAction extends ActionSupport implements ServletContextAware, UsuarioHabilitado {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IncidenciaModel incidencia;
	private HttpServletRequest servletRequest;
	private String fileContentType;
	private String fileFileName;
	private String filesPath;
	private ServletContext context;
	private UsuarioModel usuario;
	private int codigoAutogenerado;

	public int getCodigoAutogenerado() {
		return codigoAutogenerado;
	}

	public void setCodigoAutogenerado(int codigoAutogenerado) {
		this.codigoAutogenerado = codigoAutogenerado;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public void setContext(ServletContext context) {
		this.context = context;
	}

	public UsuarioModel getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioModel usuario) {
		this.usuario = usuario;
	}

	public IncidenciaModel getIncidencia() {
		return incidencia;
	}

	public void setIncidencia(IncidenciaModel incidencia) {
		this.incidencia = incidencia;
	}

	public String registrar() {

		IncidenciaDAO dao = new IncidenciaDAO();
		System.out.println("File Name is:" + incidencia.getFotoContentType());
		System.out.println("File ContentType is:" + incidencia.getFotoFileName());
		System.out.println("Files Directory is:" + filesPath);
		System.out.println("S� registro la incidencia generada");
		try {
			// Metodos.guardarArchivo(incidencia.getFoto(),
			// incidencia.getFotoFileName(),
			// context.getRealPath("") + File.separator + filesPath);
			int resultado = dao.RegistrarIncidencia(getIncidencia());
			if (resultado == -1) {
				setCodigoAutogenerado(resultado);
				return INPUT;
			}
			else{
				setCodigoAutogenerado(resultado);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return INPUT;
		}
		return SUCCESS;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFilesPath() {
		return filesPath;
	}

	public void setFilesPath(String filesPath) {
		this.filesPath = filesPath;
	}

	public ServletContext getContext() {
		return context;
	}

	@Override
	public void setServletContext(ServletContext context) {
		// TODO Auto-generated method stub
		this.context = context;
	}

}
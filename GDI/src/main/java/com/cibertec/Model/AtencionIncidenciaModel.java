package com.cibertec.Model;

import java.io.File;
import java.util.List;

import com.cibertec.constantes.Constantes;

public class AtencionIncidenciaModel {
	private int idIncidencia;
	private String titulo;
	private String sTipoIncidencia;
	private String sDescripcion;
	private byte[] fotobynari;
	private File foto;
	private String fotoContentType;
	private String fotoFileName;
	private String usuario;
	private String nombre;
	private String apellido;
	private String matricula;
	private String anexo;
	private String telefono;
	private String sEstado;
	private int idEstado;
	private List<SeguimientoModel> listaSeguimientos;

	
	public String getFotoContentType() {
		return fotoContentType;
	}

	public void setFotoContentType(String fotoContentType) {
		this.fotoContentType = fotoContentType;
	}

	public String getFotoFileName() {
		return Constantes.getFileFromBytes(fotobynari, "imagen").getName();
	}

	public void setFotoFileName(String fotoFileName) {
		this.fotoFileName = fotoFileName;
	}

	public List<SeguimientoModel> getListaSeguimientos() {
		return listaSeguimientos;
	}

	public File getFoto() {
		return Constantes.getFileFromBytes(fotobynari, "imagen");
	}

	public void setFoto(File foto) {
		this.foto = foto;
	}

	public void setListaSeguimientos(List<SeguimientoModel> listaSeguimientos) {
		this.listaSeguimientos = listaSeguimientos;
	}

	public String getsEstado() {
		return sEstado;
	}

	public void setsEstado(String sEstado) {
		this.sEstado = sEstado;
	}

	public int getIdEstado() {
		return idEstado;
	}

	public void setIdEstado(int idEstado) {
		this.idEstado = idEstado;
	}

	public int getIdIncidencia() {
		return idIncidencia;
	}

	public void setIdIncidencia(int idIncidencia) {
		this.idIncidencia = idIncidencia;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getsTipoIncidencia() {
		return sTipoIncidencia;
	}

	public void setsTipoIncidencia(String sTipoIncidencia) {
		this.sTipoIncidencia = sTipoIncidencia;
	}

	public String getsDescripcion() {
		return sDescripcion;
	}

	public void setsDescripcion(String sDescripcion) {
		this.sDescripcion = sDescripcion;
	}

	public byte[] getFotobynari() {
		return fotobynari;
	}

	public void setFotobynari(byte[] fotobynari) {
		this.fotobynari = fotobynari;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public String getAnexo() {
		return anexo;
	}

	public void setAnexo(String anexo) {
		this.anexo = anexo;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

}

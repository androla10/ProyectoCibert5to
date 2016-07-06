package com.cibertec.Model;

public class AtencionIncidenciaModel {
	private int idIncidencia;
	private String titulo;
	private String sTipoIncidencia;
	private String sDescripcion;
	private byte[] fotobynari;
	private String usuario;
	private String nombre;
	private String apellido;
	private String matricula;
	private String anexo;
	private String telefono;
	private String sEstado;
	private int idEstado;
	

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

package com.cibertec.Model;
import java.util.*;
public class ResidenciaAreaModel {
	private int idResidencia;
	private String Residencia;
	private List<AreaModel> listaDetalle;
	
	public List<AreaModel> getListaDetalle() {
		return listaDetalle;
	}
	public void setListaDetalle(List<AreaModel> listaDetalle) {
		this.listaDetalle = listaDetalle;
	}
	public int getIdResidencia() {
		return idResidencia;
	}
	public void setIdResidencia(int idResidencia) {
		this.idResidencia = idResidencia;
	}
	public String getResidencia() {
		return Residencia;
	}
	public void setResidencia(String residencia) {
		Residencia = residencia;
	}
	
	
	
}
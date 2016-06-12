package com.cibertec.InterfaceMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cibertec.Model.GeoModel;

public interface GeoModelMapper {
	public List<GeoModel> listarProvincias() throws Exception;
	public List<GeoModel> listarDepartamentos(@Param("idProvincia") int idProvincia) throws Exception;
	public List<GeoModel> listarDistritos(@Param("idDepartamento") int idDepartamento) throws Exception;
}

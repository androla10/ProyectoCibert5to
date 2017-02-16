package com.cibertec.InterfaceMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cibertec.Model.AreaModel;
import com.cibertec.Model.GeoModel;
import com.cibertec.Model.ResidenciaAreaModel;

public interface AreaModelMapper {
	public List<AreaModel> listarAreas() throws Exception;
	public List<AreaModel> listarAreasxResidencia(@Param("idResidencia") int idResidencia) throws Exception;
	public List<ResidenciaAreaModel> listarAreaSucursal()throws Exception;
}
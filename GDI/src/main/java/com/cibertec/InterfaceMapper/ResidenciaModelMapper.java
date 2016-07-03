package com.cibertec.InterfaceMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cibertec.Model.GeoModel;
import com.cibertec.Model.ResidenciaModel;

public interface ResidenciaModelMapper {
	public List<ResidenciaModel> listarResidencia() throws Exception;
}

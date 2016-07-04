package com.cibertec.InterfaceMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cibertec.Model.AreaModel;
import com.cibertec.Model.GeoModel;
import com.cibertec.Model.UrgenciaModel;

public interface UrgenciaModelMapper {
	public List<UrgenciaModel> listarUrgencia() throws Exception;
}

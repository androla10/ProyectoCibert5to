package com.cibertec.InterfaceMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cibertec.Model.AreaModel;
import com.cibertec.Model.GeoModel;
import com.cibertec.Model.PrioridadModel;

public interface PrioridadModelMapper {
	public List<PrioridadModel> listarPrioridad() throws Exception;
}

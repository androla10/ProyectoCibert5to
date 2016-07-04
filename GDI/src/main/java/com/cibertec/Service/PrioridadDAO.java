package com.cibertec.Service;

import java.util.List;

import com.cibertec.InterfaceMapper.PrioridadModelMapper;
import com.cibertec.Model.PrioridadModel;
import com.cibertec.conexion.MyBatisUtil;

public class PrioridadDAO implements PrioridadModelMapper {

	@Override
	public List<PrioridadModel> listarPrioridad() throws Exception {
		return MyBatisUtil.getConeccion().openSession().getMapper(PrioridadModelMapper.class).listarPrioridad();
	}
	

}

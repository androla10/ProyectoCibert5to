package com.cibertec.Service;

import java.util.List;

import com.cibertec.InterfaceMapper.UrgenciaModelMapper;
import com.cibertec.Model.UrgenciaModel;
import com.cibertec.conexion.MyBatisUtil;

public class UrgenciaDAO implements UrgenciaModelMapper {

	@Override
	public List<UrgenciaModel> listarUrgencia() throws Exception {
		return MyBatisUtil.getConeccion().openSession().getMapper(UrgenciaModelMapper.class).listarUrgencia();
	}
	

}

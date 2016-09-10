package com.cibertec.Service;

import java.util.List;

import com.cibertec.InterfaceMapper.SeguimientoModelMapper;
import com.cibertec.Model.IncidenciaModel;
import com.cibertec.Model.SeguimientoModel;
import com.cibertec.conexion.MyBatisUtil;

public class SeguimientoDAO implements SeguimientoModelMapper {

	@Override
	public List<IncidenciaModel> listar(int idUsuario) throws Exception {
		return MyBatisUtil.getConeccion().openSession().getMapper(SeguimientoModelMapper.class).listar(idUsuario);
	}

	

}

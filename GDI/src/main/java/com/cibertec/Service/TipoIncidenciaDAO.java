package com.cibertec.Service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.cibertec.InterfaceMapper.GeoModelMapper;
import com.cibertec.InterfaceMapper.ResidenciaModelMapper;
import com.cibertec.InterfaceMapper.TipoIncidenciaModelMapper;
import com.cibertec.Model.GeoModel;
import com.cibertec.Model.ResidenciaModel;
import com.cibertec.Model.TipoIncidenciaModel;
import com.cibertec.conexion.MyBatisUtil;

public class TipoIncidenciaDAO implements TipoIncidenciaModelMapper {

	@Override
	public List<TipoIncidenciaModel> listarTipoIncidencia() throws Exception {
		return MyBatisUtil.getConeccion().openSession().getMapper(TipoIncidenciaModelMapper.class)
				.listarTipoIncidencia();
	}

}

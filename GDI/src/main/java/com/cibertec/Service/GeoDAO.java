package com.cibertec.Service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.cibertec.InterfaceMapper.GeoModelMapper;
import com.cibertec.Model.GeoModel;
import com.cibertec.conexion.MyBatisUtil;

public class GeoDAO implements GeoModelMapper {

	@Override
	public List<GeoModel> listarProvincias() throws Exception {
		SqlSession sq = MyBatisUtil.getConeccion().openSession();
		return sq.getMapper(GeoModelMapper.class).listarProvincias();
	}

	@Override
	public List<GeoModel> listarDepartamentos(int idProvincia) throws Exception {
		SqlSession sq = MyBatisUtil.getConeccion().openSession();
		return sq.getMapper(GeoModelMapper.class).listarDepartamentos(idProvincia);
	}

	@Override
	public List<GeoModel> listarDistritos(int idDepartamento) throws Exception {
		SqlSession sq = MyBatisUtil.getConeccion().openSession();
		return sq.getMapper(GeoModelMapper.class).listarDistritos(idDepartamento);
	}

}

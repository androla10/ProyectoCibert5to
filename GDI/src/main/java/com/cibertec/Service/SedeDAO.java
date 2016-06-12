package com.cibertec.Service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.cibertec.InterfaceMapper.SedeModelMapper;
import com.cibertec.Model.SedeModel;
import com.cibertec.conexion.MyBatisUtil;

public class SedeDAO implements SedeModelMapper {

	@Override
	public List<SedeModel> listarSedes() throws Exception {
		SqlSession sq = MyBatisUtil.getConeccion().openSession();
		return sq.getMapper(SedeModelMapper.class).listarSedes();
	}

}

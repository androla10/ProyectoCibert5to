package com.cibertec.Service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.cibertec.InterfaceMapper.TipoUsuarioModelMapper;
import com.cibertec.Model.TipoUsuarioModel;
import com.cibertec.conexion.MyBatisUtil;

public class TipoUsuarioDao implements TipoUsuarioModelMapper {

	@Override
	public List<TipoUsuarioModel> listarCombo() throws Exception {
		SqlSession sq = MyBatisUtil.getConeccion().openSession();
		List<TipoUsuarioModel> lTipoUsuario = sq.getMapper(TipoUsuarioModelMapper.class).listarCombo();
		return lTipoUsuario;
	}

}

package com.cibertec.Service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.cibertec.InterfaceMapper.GeneroModelMapper;
import com.cibertec.InterfaceMapper.TipoUsuarioModelMapper;
import com.cibertec.Model.GeneroModel;
import com.cibertec.Model.TipoUsuarioModel;
import com.cibertec.conexion.MyBatisUtil;

public class GeneroDAO implements GeneroModelMapper {

	@Override
	public List<GeneroModel> listarCombo() throws Exception {
		SqlSession sq = MyBatisUtil.getConeccion().openSession();
		List<GeneroModel> lTipoUsuario = sq.getMapper(GeneroModelMapper.class).listarCombo();
		return lTipoUsuario;
	}

}

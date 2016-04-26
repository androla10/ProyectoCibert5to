package com.cibertec.conexion;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	private static SqlSessionFactory FACTORY = null;

	static {
		try {
			Reader rs = Resources.getResourceAsReader("src/main/resources/mybatis-config.xml");
			FACTORY = new SqlSessionFactoryBuilder().build(rs,"development");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getConeccion() {
		return FACTORY;
	}
}

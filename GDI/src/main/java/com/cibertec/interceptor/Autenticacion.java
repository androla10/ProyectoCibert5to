package com.cibertec.interceptor;

import java.util.Map;

import com.cibertec.Model.UsuarioModel;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class Autenticacion implements Interceptor {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		// TODO Auto-generated method stub

	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Map session = arg0.getInvocationContext().getSession();
		UsuarioModel usuario = (UsuarioModel) session.get("user");
		if (usuario == null) {
			return Action.LOGIN;
		} else {
//			Action action = (Action) arg0.getAction();
//			if (action instanceof UsuarioHabilitado) {
//				((UsuarioHabilitado) action).setUsuario(usuario);
//			}
			return arg0.invoke();
		}
	}

}

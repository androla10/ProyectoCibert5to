/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.64
 * Generated at: 2016-07-05 15:36:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("\t<h3><i class=\"fa fa-users\" aria-hidden=\"true\"></i> Administrar</h3>\n");
      out.write("\t<hr>\n");
      out.write("\t<br>\n");
      out.write("\t<div class=\"row animated zoomIn\">\n");
      out.write("\t\t<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\n");
      out.write("\t\t\t<div class=\"thumbnail\">\n");
      out.write("\t\t\t\t<img src=\"../img/user.png\" alt=\"Imagen User\">\n");
      out.write("\t\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t\t<h3>Usuarios</h3>\n");
      out.write("\t\t\t\t\t<div class=\"list-group\">\n");
      out.write("\t\t\t\t\t  ");
      if (_jspx_meth_s_005fa_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\t\t\t\t\t  ");
      if (_jspx_meth_s_005fa_005f1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\t\t\t\t\t  ");
      if (_jspx_meth_s_005fa_005f2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\n");
      out.write("\t\t\t<div class=\"thumbnail\">\n");
      out.write("\t\t\t\t<img src=\"../img/incidencia.png\" alt=\"...\">\n");
      out.write("\t\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t\t<h3>Incidencias</h3>\n");
      out.write("\t\t\t\t\t<div class=\"list-group\">\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Administrar</button>\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Configurar</button>\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Administrar Usuarios</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\n");
      out.write("\t\t\t<div class=\"thumbnail\">\n");
      out.write("\t\t\t\t<img src=\"../img/reporte.png\" alt=\"...\">\n");
      out.write("\t\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t\t<h3>Reportes</h3>\n");
      out.write("\t\t\t\t\t<div class=\"list-group\">\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-list-alt fa-1x\"></i> Incidencia</button>\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Usuarios</button>\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Sedes</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\n");
      out.write("\t\t\t<div class=\"thumbnail\">\n");
      out.write("\t\t\t\t<img src=\"../img/configuracion.png\" alt=\"...\">\n");
      out.write("\t\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t\t<h3>Configuracion</h3>\n");
      out.write("\t\t\t\t\t<div class=\"list-group\">\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Reportes</button>\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Correos</button>\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Administrar Usuarios</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"row animated zoomIn\">\n");
      out.write("\t\t<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\n");
      out.write("\t\t\t<div class=\"thumbnail\">\n");
      out.write("\t\t\t\t<img src=\"../img/user.png\" alt=\"Imagen User\">\n");
      out.write("\t\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t\t<h3>Gestionar</h3>\n");
      out.write("\t\t\t\t\t<div class=\"list-group\">\n");
      out.write("\t\t\t\t\t  ");
      if (_jspx_meth_s_005fa_005f3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\t\t\t\t\t  ");
      if (_jspx_meth_s_005fa_005f4(_jspx_page_context))
        return;
      out.write('\n');
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("<!-- \t\t<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\"> -->\n");
      out.write("<!-- \t\t\t<div class=\"thumbnail\"> -->\n");
      out.write("<!-- \t\t\t\t<img src=\"../img/incidencia.png\" alt=\"...\"> -->\n");
      out.write("<!-- \t\t\t\t<div class=\"caption\"> -->\n");
      out.write("<!-- \t\t\t\t\t<h3>Geo</h3> -->\n");
      out.write("<!-- \t\t\t\t\t<div class=\"list-group\"> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Registrar</button> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Actualizar</button> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Inhabilitar</button> -->\n");
      out.write("<!-- \t\t\t\t\t</div> -->\n");
      out.write("<!-- \t\t\t\t</div> -->\n");
      out.write("<!-- \t\t\t</div> -->\n");
      out.write("<!-- \t\t</div> -->\n");
      out.write("<!-- \t\t<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\"> -->\n");
      out.write("<!-- \t\t\t<div class=\"thumbnail\"> -->\n");
      out.write("<!-- \t\t\t\t<img src=\"../img/reporte.png\" alt=\"...\"> -->\n");
      out.write("<!-- \t\t\t\t<div class=\"caption\"> -->\n");
      out.write("<!-- \t\t\t\t\t<h3>Reportes</h3> -->\n");
      out.write("<!-- \t\t\t\t\t<div class=\"list-group\"> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-list-alt fa-1x\"></i> Incidencia</button> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Usuario</button> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Administrar Usuarios</button> -->\n");
      out.write("<!-- \t\t\t\t\t</div> -->\n");
      out.write("<!-- \t\t\t\t</div> -->\n");
      out.write("<!-- \t\t\t</div> -->\n");
      out.write("<!-- \t\t</div> -->\n");
      out.write("<!-- \t\t<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\"> -->\n");
      out.write("<!-- \t\t\t<div class=\"thumbnail\"> -->\n");
      out.write("<!-- \t\t\t\t<img src=\"../img/configuracion.png\" alt=\"...\"> -->\n");
      out.write("<!-- \t\t\t\t<div class=\"caption\"> -->\n");
      out.write("<!-- \t\t\t\t\t<h3>Configuracion</h3> -->\n");
      out.write("<!-- \t\t\t\t\t<div class=\"list-group\"> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Reportes</button> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Correos</button> -->\n");
      out.write("<!-- \t\t\t\t\t  <button type=\"button\" class=\"list-group-item opcionesAdministrador\"><i class=\"fa fa-user fa-1x\"></i> Administrar Usuarios</button> -->\n");
      out.write("<!-- \t\t\t\t\t</div> -->\n");
      out.write("<!-- \t\t\t\t</div> -->\n");
      out.write("<!-- \t\t\t</div> -->\n");
      out.write("<!-- \t\t</div> -->\n");
      out.write("\t</div>\n");
      out.write("</div>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_s_005fa_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  s:a
    org.apache.struts2.views.jsp.ui.AnchorTag _jspx_th_s_005fa_005f0 = (org.apache.struts2.views.jsp.ui.AnchorTag) _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.get(org.apache.struts2.views.jsp.ui.AnchorTag.class);
    _jspx_th_s_005fa_005f0.setPageContext(_jspx_page_context);
    _jspx_th_s_005fa_005f0.setParent(null);
    // /Admin/Admin.jsp(13,7) null
    _jspx_th_s_005fa_005f0.setDynamicAttribute(null, "type", "button");
    // /Admin/Admin.jsp(13,7) name = class type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f0.setCssClass("list-group-item opcionesAdministrador");
    // /Admin/Admin.jsp(13,7) name = href type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f0.setHref("../Usuario/Usuarios");
    int _jspx_eval_s_005fa_005f0 = _jspx_th_s_005fa_005f0.doStartTag();
    if (_jspx_eval_s_005fa_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_s_005fa_005f0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_s_005fa_005f0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_s_005fa_005f0.doInitBody();
      }
      do {
        out.write("<i class=\"fa fa-user fa-1x\"></i> Administrar");
        int evalDoAfterBody = _jspx_th_s_005fa_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_s_005fa_005f0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.popBody();
      }
    }
    if (_jspx_th_s_005fa_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f0);
    return false;
  }

  private boolean _jspx_meth_s_005fa_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  s:a
    org.apache.struts2.views.jsp.ui.AnchorTag _jspx_th_s_005fa_005f1 = (org.apache.struts2.views.jsp.ui.AnchorTag) _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.get(org.apache.struts2.views.jsp.ui.AnchorTag.class);
    _jspx_th_s_005fa_005f1.setPageContext(_jspx_page_context);
    _jspx_th_s_005fa_005f1.setParent(null);
    // /Admin/Admin.jsp(14,7) null
    _jspx_th_s_005fa_005f1.setDynamicAttribute(null, "type", "button");
    // /Admin/Admin.jsp(14,7) name = class type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f1.setCssClass("list-group-item opcionesAdministrador");
    // /Admin/Admin.jsp(14,7) name = href type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f1.setHref("../Usuario/Usuarios");
    int _jspx_eval_s_005fa_005f1 = _jspx_th_s_005fa_005f1.doStartTag();
    if (_jspx_eval_s_005fa_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_s_005fa_005f1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_s_005fa_005f1.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_s_005fa_005f1.doInitBody();
      }
      do {
        out.write("<i class=\"fa fa-cog fa-1x\"></i> Configurar");
        int evalDoAfterBody = _jspx_th_s_005fa_005f1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_s_005fa_005f1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.popBody();
      }
    }
    if (_jspx_th_s_005fa_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f1);
    return false;
  }

  private boolean _jspx_meth_s_005fa_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  s:a
    org.apache.struts2.views.jsp.ui.AnchorTag _jspx_th_s_005fa_005f2 = (org.apache.struts2.views.jsp.ui.AnchorTag) _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.get(org.apache.struts2.views.jsp.ui.AnchorTag.class);
    _jspx_th_s_005fa_005f2.setPageContext(_jspx_page_context);
    _jspx_th_s_005fa_005f2.setParent(null);
    // /Admin/Admin.jsp(15,7) null
    _jspx_th_s_005fa_005f2.setDynamicAttribute(null, "type", "button");
    // /Admin/Admin.jsp(15,7) name = class type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f2.setCssClass("list-group-item opcionesAdministrador");
    // /Admin/Admin.jsp(15,7) name = href type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f2.setHref("../Usuario/Usuarios");
    int _jspx_eval_s_005fa_005f2 = _jspx_th_s_005fa_005f2.doStartTag();
    if (_jspx_eval_s_005fa_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_s_005fa_005f2 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_s_005fa_005f2.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_s_005fa_005f2.doInitBody();
      }
      do {
        out.write("<i class=\"fa fa-user fa-1x\"></i> Administrar Usuarios");
        int evalDoAfterBody = _jspx_th_s_005fa_005f2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_s_005fa_005f2 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.popBody();
      }
    }
    if (_jspx_th_s_005fa_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f2);
      return true;
    }
    _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f2);
    return false;
  }

  private boolean _jspx_meth_s_005fa_005f3(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  s:a
    org.apache.struts2.views.jsp.ui.AnchorTag _jspx_th_s_005fa_005f3 = (org.apache.struts2.views.jsp.ui.AnchorTag) _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.get(org.apache.struts2.views.jsp.ui.AnchorTag.class);
    _jspx_th_s_005fa_005f3.setPageContext(_jspx_page_context);
    _jspx_th_s_005fa_005f3.setParent(null);
    // /Admin/Admin.jsp(67,7) null
    _jspx_th_s_005fa_005f3.setDynamicAttribute(null, "type", "button");
    // /Admin/Admin.jsp(67,7) name = class type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f3.setCssClass("list-group-item opcionesAdministrador");
    // /Admin/Admin.jsp(67,7) name = href type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f3.setHref("../Sede/Sede");
    int _jspx_eval_s_005fa_005f3 = _jspx_th_s_005fa_005f3.doStartTag();
    if (_jspx_eval_s_005fa_005f3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_s_005fa_005f3 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_s_005fa_005f3.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_s_005fa_005f3.doInitBody();
      }
      do {
        out.write("<i class=\"fa fa-user fa-1x\"></i> Gestionar Sede");
        int evalDoAfterBody = _jspx_th_s_005fa_005f3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_s_005fa_005f3 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.popBody();
      }
    }
    if (_jspx_th_s_005fa_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f3);
      return true;
    }
    _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f3);
    return false;
  }

  private boolean _jspx_meth_s_005fa_005f4(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  s:a
    org.apache.struts2.views.jsp.ui.AnchorTag _jspx_th_s_005fa_005f4 = (org.apache.struts2.views.jsp.ui.AnchorTag) _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.get(org.apache.struts2.views.jsp.ui.AnchorTag.class);
    _jspx_th_s_005fa_005f4.setPageContext(_jspx_page_context);
    _jspx_th_s_005fa_005f4.setParent(null);
    // /Admin/Admin.jsp(68,7) null
    _jspx_th_s_005fa_005f4.setDynamicAttribute(null, "type", "button");
    // /Admin/Admin.jsp(68,7) name = class type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f4.setCssClass("list-group-item opcionesAdministrador");
    // /Admin/Admin.jsp(68,7) name = href type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fa_005f4.setHref("../Usuario/Usuarios");
    int _jspx_eval_s_005fa_005f4 = _jspx_th_s_005fa_005f4.doStartTag();
    if (_jspx_eval_s_005fa_005f4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_s_005fa_005f4 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_s_005fa_005f4.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_s_005fa_005f4.doInitBody();
      }
      do {
        out.write("<i class=\"fa fa-cog fa-1x\"></i> Gestionar Geo");
        int evalDoAfterBody = _jspx_th_s_005fa_005f4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_s_005fa_005f4 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.popBody();
      }
    }
    if (_jspx_th_s_005fa_005f4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f4);
      return true;
    }
    _005fjspx_005ftagPool_005fs_005fa_0026_005ftype_005fhref_005fclass.reuse(_jspx_th_s_005fa_005f4);
    return false;
  }
}

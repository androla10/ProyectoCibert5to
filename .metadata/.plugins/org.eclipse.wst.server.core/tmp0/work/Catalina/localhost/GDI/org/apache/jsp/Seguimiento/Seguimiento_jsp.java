/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.68
 * Generated at: 2016-05-10 00:54:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Seguimiento;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Seguimiento_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
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

      out.write("<style>\r\n");
      out.write("#seguimiento {\r\n");
      out.write("\tbackground-color: #fff;\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\theight: auto;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tvar consumoService = [ {\r\n");
      out.write("\t\tcodIncidencia : \"INA001\",\r\n");
      out.write("\t\tfIncidencia : \"10-01-2014\",\r\n");
      out.write("\t\tiEstado : 1\r\n");
      out.write("\t}, {\r\n");
      out.write("\t\tcodIncidencia : \"INA002\",\r\n");
      out.write("\t\tfIncidencia : \"12-06-2014\",\r\n");
      out.write("\t\tiEstado : 2\r\n");
      out.write("\t}, {\r\n");
      out.write("\t\tcodIncidencia : \"INA003\",\r\n");
      out.write("\t\tfIncidencia : \"14-03-2015\",\r\n");
      out.write("\t\tiEstado : 4\r\n");
      out.write("\t}, {\r\n");
      out.write("\t\tcodIncidencia : \"INA004\",\r\n");
      out.write("\t\tfIncidencia : \"05-11-2015\",\r\n");
      out.write("\t\tiEstado : 3\r\n");
      out.write("\t} ];\r\n");
      out.write("\r\n");
      out.write("\tfor (var i = 1; i < consumoService.length; i++) {\r\n");
      out.write("\t\tvar objeto = consumoService[i];\r\n");
      out.write("\t\tconsole.log(objeto);\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction cargar(id) {\r\n");
      out.write("\t\tvar Canvas = new objeto(id);\r\n");
      out.write("\t\tCanvas.cargarCanvas();\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar objeto = function(id) {\r\n");
      out.write("\t\tvar elemento = document.getElementById(id);\r\n");
      out.write("\t\tvar activo = \"#fff\";\r\n");
      out.write("\t\tvar inactivo = \"#ccc\";\r\n");
      out.write("\t\tvar bordes = \"#ccc\";\r\n");
      out.write("\t\tvar fillactive = \"#FF920F\";\r\n");
      out.write("\t\tvar fillinactive = \"#fff\";\r\n");
      out.write("\t\tvar fillinactivepaso=\"#96968F\";\r\n");
      out.write("\t\tvar inactivepaso=\"#fff\";\r\n");
      out.write("\t\tvar colorLetra = \"#737167\";\r\n");
      out.write("\t\tvar iEstado = 2;\r\n");
      out.write("\t\tthis.size = {\r\n");
      out.write("\t\t\twidth : elemento.offsetWidth,\r\n");
      out.write("\t\t\theight : elemento.offsetHeight\r\n");
      out.write("\t\t};\r\n");
      out.write("\t\tthis.cargarCanvas = function() {\r\n");
      out.write("\t\t\tif (elemento.getContext(\"2d\")) {\r\n");
      out.write("\t\t\t\tlienzo = elemento.getContext(\"2d\");\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = iEstado == 1 ? fillactive : iEstado > 1 ? fillinactivepaso : fillinactive ;\r\n");
      out.write("\t\t\t\tlienzo.strokeStyle = bordes;\r\n");
      out.write("\t\t\t\tlienzo.arc(100, 100, 40, 0, Math.PI * 2, true);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(250, 100);\r\n");
      out.write("\t\t\t\tlienzo.fill();\r\n");
      out.write("\t\t\t\tlienzo.stroke();\r\n");
      out.write("\t\t\t\tlienzo.closePath();\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = iEstado == 2 ? fillactive : iEstado > 2 ? fillinactivepaso : fillinactive;\r\n");
      out.write("\t\t\t\tlienzo.arc(300, 100, 40, 0, Math.PI * 2, true);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(450, 100);\r\n");
      out.write("\t\t\t\tlienzo.fill();\r\n");
      out.write("\t\t\t\tlienzo.stroke();\r\n");
      out.write("\t\t\t\tlienzo.closePath();\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = iEstado == 3 ? fillactive : iEstado > 3 ? fillinactivepaso : fillinactive;\r\n");
      out.write("\t\t\t\tlienzo.arc(500, 100, 40, 0, Math.PI * 2, true);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(650, 100);\r\n");
      out.write("\t\t\t\tlienzo.fill();\r\n");
      out.write("\t\t\t\tlienzo.stroke();\r\n");
      out.write("\t\t\t\tlienzo.closePath();\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = iEstado == 4 ? fillactive : iEstado > 3 ? fillinactivepaso : fillinactive;\r\n");
      out.write("\t\t\t\tlienzo.arc(700, 100, 40, 0, Math.PI * 2, true);\r\n");
      out.write("\t\t\t\tlienzo.fill();\r\n");
      out.write("\t\t\t\tlienzo.stroke();\r\n");
      out.write("\t\t\t\tlienzo.closePath();\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t/*Buenas*/\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = iEstado == 1 ? activo : iEstado > 1 ? inactivepaso : inactivo;\r\n");
      out.write("\t\t\t\tlienzo.moveTo(120, 85);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(95, 115);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(85, 105);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(90, 100);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(95, 105);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(115, 85);\r\n");
      out.write("\t\t\t\tlienzo.fill();\r\n");
      out.write("\t\t\t\tlienzo.closePath();\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = iEstado == 2 ? activo : iEstado > 2 ? inactivepaso : inactivo;\r\n");
      out.write("\t\t\t\tlienzo.moveTo(320, 85);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(295, 115);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(285, 105);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(290, 100);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(295, 105);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(315, 85);\r\n");
      out.write("\t\t\t\tlienzo.fill();\r\n");
      out.write("\t\t\t\tlienzo.closePath();\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = iEstado == 3 ? activo : iEstado > 3 ? inactivepaso : inactivo;\r\n");
      out.write("\t\t\t\tlienzo.moveTo(520, 85);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(495, 115);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(485, 105);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(490, 100);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(495, 105);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(515, 85);\r\n");
      out.write("\t\t\t\tlienzo.fill();\r\n");
      out.write("\t\t\t\tlienzo.closePath();\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = iEstado == 4 ? activo : iEstado > 4 ? inactivepaso : inactivo;\r\n");
      out.write("\t\t\t\tlienzo.moveTo(720, 85);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(695, 115);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(685, 105);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(690, 100);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(695, 105);\r\n");
      out.write("\t\t\t\tlienzo.lineTo(715, 85);\r\n");
      out.write("\t\t\t\tlienzo.fill();\r\n");
      out.write("\t\t\t\tlienzo.closePath();\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.beginPath();\r\n");
      out.write("\t\t\t\tlienzo.fillStyle = colorLetra;\r\n");
      out.write("\t\t\t\tlienzo.font = \"16px Calibri Light\";\r\n");
      out.write("\t\t\t\tlienzo.fillText(\"Creado\", 75, 175);\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.font = \"16px Calibri Light\";\r\n");
      out.write("\t\t\t\tlienzo.fillText(\"Observado\", 268, 175);\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.font = \"16px Calibri Light\";\r\n");
      out.write("\t\t\t\tlienzo.fillText(\"En proceso\", 467, 175);\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tlienzo.font = \"16px Calibri Light\";\r\n");
      out.write("\t\t\t\tlienzo.fillText(\"Finalizado\", 670, 175);\r\n");
      out.write("\t\t\t} else {\r\n");
      out.write("\t\t\t\talert(\"El canvas no soporta\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t};\r\n");
      out.write("\r\n");
      out.write("\t};\r\n");
      out.write("</script>\r\n");
      out.write("<div class=\"container-fluid\">\r\n");
      out.write("\t<h3>\r\n");
      out.write("\t\t<i class=\"fa fa-line-chart\" aria-hidden=\"true\"></i> Seguimiento\r\n");
      out.write("\t</h3>\r\n");
      out.write("\t<hr>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<section class=\"row animated fadeIn\">\r\n");
      out.write("<!-- \tzoomIn -->\r\n");
      out.write("\t\t<article>\r\n");
      out.write("\t\t\t<div class=\"col-xs-12 col-sm-3 col-md-4 col-lg-4\">\r\n");
      out.write("\t\t\t\t<div class=\"panel panel-primary\">\r\n");
      out.write("\t\t\t\t\t<div class=\"panel-heading\">\r\n");
      out.write("\t\t\t\t\t\t<small>Incidencia Nro : 00001</small>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<table class=\"table\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<th>Estado</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t<th>Fecha</th>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>Creado</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>03/05/2016 03:24:08 pm</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>Observador</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>03/05/2016 03:28:51 pm</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>En proceso</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>03/05/2016 03:31:01 pm</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>Finalizado</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>03/05/2016 03:50:51 pm</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-xs-12 col-sm-9 col-md-8 col-lg-8\">\r\n");
      out.write("\t\t\t\t<canvas id=\"seguimiento\" width=\"800\" height=\"300\">\r\n");
      out.write("\t\t\t\tSu navegador no soporta el elemento html5\r\n");
      out.write("\t\t\t</canvas>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</article>\r\n");
      out.write("\t</section>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tvar Canvas = new objeto(\"seguimiento\");\r\n");
      out.write("\t\tCanvas.cargarCanvas();\r\n");
      out.write("\t</script>\r\n");
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
}

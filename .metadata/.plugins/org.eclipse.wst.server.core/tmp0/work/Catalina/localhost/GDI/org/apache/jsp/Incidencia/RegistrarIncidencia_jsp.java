/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.68
 * Generated at: 2016-05-10 23:20:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Incidencia;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegistrarIncidencia_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<script type=\"text/javascript\">\n");
      out.write("\t$(window).load(function() {\n");
      out.write("\n");
      out.write("\t\t$(function() {\n");
      out.write("\t\t\t$('#file-input').change(function(e) {\n");
      out.write("\t\t\t\taddImage(e);\n");
      out.write("\t\t\t});\n");
      out.write("\n");
      out.write("\t\t\tfunction addImage(e) {\n");
      out.write("\t\t\t\tvar file = e.target.files[0], imageType = /image.*/;\n");
      out.write("\n");
      out.write("\t\t\t\tif (!file.type.match(imageType))\n");
      out.write("\t\t\t\t\treturn;\n");
      out.write("\n");
      out.write("\t\t\t\tvar reader = new FileReader();\n");
      out.write("\t\t\t\treader.onload = fileOnload;\n");
      out.write("\t\t\t\treader.readAsDataURL(file);\n");
      out.write("\t\t\t}\n");
      out.write("\n");
      out.write("\t\t\tfunction fileOnload(e) {\n");
      out.write("\t\t\t\tvar result = e.target.result;\n");
      out.write("\t\t\t\t$('#imgSalida').attr(\"src\", result);\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("\n");
      out.write("\t// \t$(function() {\n");
      out.write("\n");
      out.write("\t// \t\t$('#dropzone').on('dragover', function() {\n");
      out.write("\t// \t\t\t$(this).addClass('hover');\n");
      out.write("\t// \t\t});\n");
      out.write("\n");
      out.write("\t// \t\t$('#dropzone').on('dragleave', function() {\n");
      out.write("\t// \t\t\t$(this).removeClass('hover');\n");
      out.write("\t// \t\t});\n");
      out.write("\n");
      out.write("\t// \t\t$('#dropzone input')\n");
      out.write("\t// \t\t\t\t.on(\n");
      out.write("\t// \t\t\t\t\t\t'change',\n");
      out.write("\t// \t\t\t\t\t\tfunction(e) {\n");
      out.write("\t// \t\t\t\t\t\t\tvar file = this.files[0];\n");
      out.write("\n");
      out.write("\t// \t\t\t\t\t\t\t$('#dropzone').removeClass('hover');\n");
      out.write("\n");
      out.write("\t// \t\t\t\t\t\t\tif (this.accept\n");
      out.write("\t// \t\t\t\t\t\t\t\t\t&& $.inArray(file.type, this.accept\n");
      out.write("\t// \t\t\t\t\t\t\t\t\t\t\t.split(/, ?/)) == -1) {\n");
      out.write("\t// \t\t\t\t\t\t\t\treturn alert('File type not allowed.');\n");
      out.write("\t// \t\t\t\t\t\t\t}\n");
      out.write("\n");
      out.write("\t// \t\t\t\t\t\t\t$('#dropzone').addClass('dropped');\n");
      out.write("\t// \t\t\t\t\t\t\t$('#dropzone img').remove();\n");
      out.write("\n");
      out.write("\t// \t\t\t\t\t\t\tif ((/^image\\/(gif|png|jpeg)$/i).test(file.type)) {\n");
      out.write("\t// \t\t\t\t\t\t\t\tvar reader = new FileReader(file);\n");
      out.write("\n");
      out.write("\t// \t\t\t\t\t\t\t\treader.readAsDataURL(file);\n");
      out.write("\n");
      out.write("\t// \t\t\t\t\t\t\t\treader.onload = function(e) {\n");
      out.write("\t// \t\t\t\t\t\t\t\t\tvar data = e.target.result, $img = $(\n");
      out.write("\t// \t\t\t\t\t\t\t\t\t\t\t'<img />').attr('src', data)\n");
      out.write("\t// \t\t\t\t\t\t\t\t\t\t\t.fadeIn();\n");
      out.write("\n");
      out.write("\t// \t\t\t\t\t\t\t\t\t$('#dropzone div').html($img);\n");
      out.write("\t// \t\t\t\t\t\t\t\t};\n");
      out.write("\t// \t\t\t\t\t\t\t} else {\n");
      out.write("\t// \t\t\t\t\t\t\t\tvar ext = file.name.split('.').pop();\n");
      out.write("\n");
      out.write("\t// \t\t\t\t\t\t\t\t$('#dropzone div').html(ext);\n");
      out.write("\t// \t\t\t\t\t\t\t}\n");
      out.write("\t// \t\t\t\t\t\t});\n");
      out.write("\t// \t});\n");
      out.write("</script>\n");
      out.write("<style>\n");
      out.write("#dropzone {\n");
      out.write("\tposition: relative;\n");
      out.write("\tborder: 10px dotted #ccc;\n");
      out.write("\tborder-radius: 20px;\n");
      out.write("\tcolor: white;\n");
      out.write("\tfont: bold 24px/200px arial;\n");
      out.write("\theight: 200px;\n");
      out.write("\tmargin: 30px auto;\n");
      out.write("\ttext-align: center;\n");
      out.write("\twidth: 200px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#dropzone.hover {\n");
      out.write("\tborder: 10px solid #FE5;\n");
      out.write("\tcolor: #FE5;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#dropzone.dropped {\n");
      out.write("\tbackground: #222;\n");
      out.write("\tborder: 10px solid #444;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#dropzone div {\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: 0;\n");
      out.write("\tright: 0;\n");
      out.write("\tbottom: 0;\n");
      out.write("\tleft: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#dropzone img {\n");
      out.write("\tborder-radius: 10px;\n");
      out.write("\tvertical-align: middle;\n");
      out.write("\tmax-width: 95%;\n");
      out.write("\tmax-height: 95%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#dropzone [type=\"file\"] {\n");
      out.write("\tcursor: pointer;\n");
      out.write("\tposition: absolute;\n");
      out.write("\twidth: 200px;\n");
      out.write("\topacity: 0;\n");
      out.write("\ttop: 0;\n");
      out.write("\tright: 0;\n");
      out.write("\tbottom: 0;\n");
      out.write("\tleft: 0;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"https://rawgit.com/enyo/dropzone/master/dist/dropzone.css\">\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("\t<h1 class=\"text-center\">Registrar Incidencia</h1>\n");
      out.write("\t<br>\n");
      out.write("\t<div class=\"panel-primary\">\n");
      out.write("\t\t<div class=\"panel-heading\">\n");
      out.write("\t\t\t<i class=\"fa fa-user fa-1x\"></i>&nbsp;Registrar Incidencia\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t<form action=\"\" id=\"formRegistroIncidencia\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label for=\"tipoIncidencia\">Tipo Incidencia</label> <select\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"form-control\" name=\"incidencia.TipoIncidencia\"\n");
      out.write("\t\t\t\t\t\t\t\tid=\"tipoIncidencia\">\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"1\">Hardware</option>\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"2\">Software</option>\n");
      out.write("\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label for=\"descripcion\">Descripción</label>\n");
      out.write("\t\t\t\t\t\t\t<textarea type=\"text\" class=\"form-control\"\n");
      out.write("\t\t\t\t\t\t\t\tname=\"usuario.apellido\" id=\"descripcion\" rows=\"8\" cols=\"9\"></textarea>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-primary\">Registrar</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-12 col-sm-12 col-sm-6 col-lg-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t<label for=\"archivo\"><i class=\"fa fa-file-image-o fa-1x\"></i>&nbsp;Agregar\n");
      out.write("\t\t\t\t\t\t\t\tFotografía</label> <input name=\"file-input\" id=\"file-input\" type=\"file\" />\n");
      out.write("\t\t\t\t\t\t\t<br />\n");
      out.write("\t\t\t\t\t\t\t<div class=\"contenedorDeImagenes\" style=\"width: auto;\">\n");
      out.write("\t\t\t\t\t\t\t\t <img id=\"imgSalida\" width=\"30%\" height=\"30%\" src=\"\" />\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t\t<form action=\"/upload-target\" class=\"dropzone\"></form>\n");
      out.write("\t\t</div>\n");
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
}

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("\t    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    \t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\t<title>Apparel Store management System</title>\n");
      out.write("\t\t<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:700, 600,500,400,300' rel='stylesheet' type='text/css'>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"main.css\">\n");
      out.write("\n");
      out.write("\t\t<script src=\"https://code.jquery.com/jquery-2.2.0.min.js\"></script>\n");
      out.write("\t\t<script src=\"https://code.highcharts.com/highcharts.js\"></script>\n");
      out.write("\t\t<script src=\"https://code.highcharts.com/modules/data.js\"></script>\n");
      out.write("\t\t<script src=\"main.js\"></script>\n");
      out.write("\n");
      out.write("\t\t<style>\n");
      out.write("\t\t\t.ad {\n");
      out.write("\t\t\t\tposition: absolute;\n");
      out.write("\t\t\t\twidth: 300px;\n");
      out.write("\t\t\t\theight: 250px;\n");
      out.write("\t\t\t\tborder: 1px solid #ddd;\n");
      out.write("\t\t\t\tleft: 50%;\n");
      out.write("\t\t\t\ttransform: translateX(-50%);\n");
      out.write("\t\t\t\ttop: 250px;\n");
      out.write("\t\t\t\tz-index: 10;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t.ad .close {\n");
      out.write("\t\t\t\tposition: absolute;\n");
      out.write("\t\t\t\tfont-family: 'ionicons';\n");
      out.write("\t\t\t\twidth: 20px;\n");
      out.write("\t\t\t\theight: 20px;\n");
      out.write("\t\t\t\tcolor: #fff;\n");
      out.write("\t\t\t\tbackground-color: #999;\n");
      out.write("\t\t\t\tfont-size: 20px;\n");
      out.write("\t\t\t\tleft: -20px;\n");
      out.write("\t\t\t\ttop: -1px;\n");
      out.write("\t\t\t\tdisplay: table-cell;\n");
      out.write("\t\t\t\tvertical-align: middle;\n");
      out.write("\t\t\t\tcursor: pointer;\n");
      out.write("\t\t\t\ttext-align: center;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t</style>\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\t$(function() {\n");
      out.write("\t\t\t\t$('.close').click(function() {\n");
      out.write("\t\t\t\t\t$('.ad').css('display', 'none');\n");
      out.write("\t\t\t\t})\n");
      out.write("\t\t\t})\n");
      out.write("\t\t</script>\n");
      out.write("\n");
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("\t\t<div class=\"header\">\n");
      out.write("\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t<i class=\"fa fa-tachometer\"></i>\n");
      out.write("\t\t\t\t<span>Apparel</span>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<a href=\"#\" class=\"nav-trigger\"><span></span></a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"side-nav\">\n");
      out.write("\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t<i class=\"fa fa-tachometer\"></i>\n");
      out.write("\t\t\t\t<span>Apparel</span>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<nav>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"Home.html\">\n");
      out.write("\t\t\t\t\t\t\t<span><i class=\"fa fa-user\"></i></span>\n");
      out.write("\t\t\t\t\t\t\t<span>Home</span>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<span><i class=\"fa fa-envelope\"></i></span>\n");
      out.write("\t\t\t\t\t\t\t<span>Stock</span>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t<span><i class=\"fa fa-bar-chart\"></i></span>\n");
      out.write("\t\t\t\t\t\t\t<span>Sales</span>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"addcustomer.jsp\">\n");
      out.write("\t\t\t\t\t\t\t<span><i class=\"fa fa-credit-card-alt\"></i></span>\n");
      out.write("\t\t\t\t\t\t\t<span>Customer</span>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                                         <li>\n");
      out.write("\t\t\t\t\t\t<a href=\"addvandor.jsp\">\n");
      out.write("\t\t\t\t\t\t\t<span><i class=\"fa fa-credit-card-alt\"></i></span>\n");
      out.write("\t\t\t\t\t\t\t<span>Vandor</span>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                                        <li>\n");
      out.write("\t\t\t\t\t\t<a href=\"addemployee.jsp\">\n");
      out.write("\t\t\t\t\t\t\t<span><i class=\"fa fa-credit-card-alt\"></i></span>\n");
      out.write("\t\t\t\t\t\t\t<span>Employee</span>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                                            <li>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">\n");
      out.write("\t\t\t\t\t\t\t<span><i class=\"fa fa-credit-card-alt\"></i></span>\n");
      out.write("\t\t\t\t\t\t\t<span>Tool</span>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"main-content\">\n");
      out.write("\t\t\t<div class=\"title\">\n");
      out.write("\t\t\t\tAnalytics\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"main\">\n");
      out.write("\t\t\t\t<div class=\"widget\">\n");
      out.write("\t\t\t\t\t<div class=\"title\">Number of views</div>\n");
      out.write("\t\t\t\t\t<div class=\"chart\"></div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"widget\">\n");
      out.write("\t\t\t\t\t<div class=\"title\">Number of likes</div>\n");
      out.write("\t\t\t\t\t<div class=\"chart\"></div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"widget\">\n");
      out.write("\t\t\t\t\t<div class=\"title\">Number of comments</div>\n");
      out.write("\t\t\t\t\t<div class=\"chart\"></div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

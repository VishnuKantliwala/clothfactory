package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addvendor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Vendor</title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <nav class=\"navbar navbar-inverse\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"dashboard.jsp\">Dashboard</a>\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("\n");
      out.write("                <li><a href=\"addvendor.jsp\">Add vendor</a></li>\n");
      out.write("                <li><a href=\"viewvendor.jsp\">View Vendor</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <h2 style=\"text-align: center; font-weight: bold;\">Add Vendor</h2>\n");
      out.write("            <form action=\"AddVendor\" method=\"POST\">\n");
      out.write("            <div class=\"row jumbotron\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Company Name</label>\n");
      out.write("                    <input type=\"text\" name=\"fname\" class=\"form-control\" >\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Owner Name</label>\n");
      out.write("                    <input type=\"text\" name=\"lname\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Contact 1</label>\n");
      out.write("                    <input type=\"number\" name=\"contact1\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Contact 2</label>\n");
      out.write("                    <input type=\"number\" name=\"contact2\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Email</label>\n");
      out.write("                    <input type=\"email\" name=\"email\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t<div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Website</label>\n");
      out.write("                    <input type=\"text\" name=\"website\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Address 1</label>\n");
      out.write("                    <input type=\"text\" name=\"address1\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Address 2</label>\n");
      out.write("                    <input type=\"text\" name=\"address2\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">City</label>\n");
      out.write("                    <input type=\"text\" name=\"city\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">State</label>\n");
      out.write("                    <input type=\"text\" name=\"state\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Pincode</label>\n");
      out.write("                    <input type=\"number\" name=\"pincode\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Country</label>\n");
      out.write("                    <input type=\"text\" name=\"country\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("              \n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">GST</label>\n");
      out.write("                    <input type=\"number\" name=\"gst\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">GST Date</label>\n");
      out.write("                    <input type=\"date\" name=\"gstdate\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">CST</label>\n");
      out.write("                    <input type=\"number\" name=\"cst\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">CST Date</label>\n");
      out.write("                    <input type=\"date\" name=\"cstdate\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"col-md-12\" style=\"text-align: center; margin-top: 20px;\">\n");
      out.write("                        <button type=\"reset\" name=\"Reset\" class=\"btn btn-info\">Reset</button>\n");
      out.write("                        \n");
      out.write("                        <button type=\"submit\" class=\"btn btn-info\">Add</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("           </div>\n");
      out.write("        </form>\n");
      out.write("     </div>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
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

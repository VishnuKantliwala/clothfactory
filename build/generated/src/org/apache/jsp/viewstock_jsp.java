package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class viewstock_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

String id = request.getParameter("fname");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "apparel";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("var myTable = $('#myTable').DataTable();\n");
      out.write(" \n");
      out.write("$('#myTable').on( 'click', 'tbody td', function () {\n");
      out.write("    myTable.cell( this ).edit( {\n");
      out.write("        blur: 'submit'\n");
      out.write("    } );\n");
      out.write("} );\n");
      out.write("        </script>   \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("           <nav class=\"navbar navbar-inverse\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"dashboard.jsp\">Dashboard</a>\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("\n");
      out.write("                <li><a href=\"addStock.jsp\">Add Stock</a></li>\n");
      out.write("                <li><a href=\"viewstock.jsp\">View Stock</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <center><h2>Stock list</h2></center>\n");
      out.write("    <table id=\"myTable\" class=\"table table-striped\" style=\"width:100%\">\n");
      out.write("        <thead>\n");
      out.write("            \n");
      out.write("           <tr>        \n");
      out.write("                <th>Product Name</th>\n");
      out.write("                <th>Product Brand</th>   \n");
      out.write("                <th>Product Code</th>                \n");
      out.write("                <th>Style-fit</th>\n");
      out.write("                <th>Color</th>\n");
      out.write("                <th>Size</th>\n");
      out.write("                <th>Barcode</th>\n");
      out.write("                <th>Sails Price</th>\n");
      out.write("                <th>Purchase Price</th>\n");
      out.write("                <th>Quantity</th>\n");
      out.write("                <th>Edit</th>\n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        ");

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM stock";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("<tr bgcolor=\"#DEB887\">\n");
      out.write("\n");
      out.write("<td>");
      out.print(resultSet.getString("itemname") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("itembrand") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("itemcode") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("style_fit") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("color") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("size") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("barcode") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("sales_price") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("purchase_price") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("quantity") );
      out.write("</td>\n");
      out.write("<td>   \n");
      out.write("    <a href=\"editStock.jsp?sid=");
      out.print(resultSet.getString("sid") );
      out.write("\"< class=\"btn btn-default\"> Edit </a>\n");
      out.write("</td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("\n");
 
}

} catch (Exception e) {
e.printStackTrace();
}


      out.write("\n");
      out.write("    </body>\n");
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

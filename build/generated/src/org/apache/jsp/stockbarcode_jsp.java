package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class stockbarcode_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns:h=\"http://java.sun.com/jsf/html\" xmlns:f=\"http://java.sun.com/jsf/core\">\n");
      out.write("    <div>\n");
      out.write("    <head>\n");
      out.write("    <title>Vendor</title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script>\n");
      out.write("var myTable = $('#myTable').DataTable();\n");
      out.write(" \n");
      out.write("$('#myTable').on( 'click', 'tbody td', function () {\n");
      out.write("    myTable.cell( this ).edit( {\n");
      out.write("        blur: 'submit'\n");
      out.write("    } );\n");
      out.write("} );\n");
      out.write("\n");
      out.write("\n");
      out.write("function AddData() {\n");
      out.write("    var x = document.getElementById(\"itemname\").value;\n");
      out.write("//    var y = document.getElementById(\"name\").value;\n");
      out.write("//    var letters = '/^[a-zA-Z]+$/';\n");
      out.write("//    if ((parseInt(x) != (x)) && (y == parseInt(y))) {\n");
      out.write("//        alert(\"Wrong Value Entered\");\n");
      out.write("//    } else {\n");
      out.write("//        var rows = \"\";\n");
      out.write("//        var name = \"sadcsad\";\n");
      out.write("//        var gender = document.querySelector('input[name=\"gender\"]:checked');\n");
      out.write("//        gender = gender ? gender.value : '';\n");
      out.write("//        var age = document.getElementById(\"age\").value;\n");
      out.write("//        var city = document.getElementById(\"city\").value;\n");
      out.write("//\n");
      out.write("//        rows += \"<td>\" + name + \"</td><td>\" + gender + \"</td><td>\" + age + \"</td><td>\" + city + \"</td>\";\n");
      out.write("//        var tbody = document.querySelector(\"#list tbody\");\n");
      out.write("//        var tr = document.createElement(\"tr\");\n");
      out.write("//\n");
      out.write("//        tr.innerHTML = rows;\n");
      out.write("//        tbody.appendChild(tr)\n");
      out.write("//\n");
      out.write("//        //\n");
      out.write("//    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("}\n");
      out.write("        </script>  \n");
      out.write("        \n");
      out.write("         <nav class=\"navbar navbar-inverse\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"dashboard.html\">Dashboard</a>\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("\n");
      out.write("<!--                <li><a href=\"employee.jsp\">Add Employee</a></li>\n");
      out.write("                <li><a href=\"viewemployee.jsp\">View Employee</a></li>-->\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write(" <center><h2>Stock list</h2></center>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <div style=\"padding:40px\">\n");
      out.write("            <form class=\"form-inline\">\n");
      out.write("  \n");
      out.write("                <input type=\"text\" name=\"barcode\" class=\"form-control\" >\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary mb-1\" onclick=\"AddData()\">Add Item</button>\n");
      out.write("            </form>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("        <div style=\"float:left; padding-left:40px\">   \n");
      out.write("        <table id=\"myTable\" class=\"table table-striped\" style=\"width:100%\">\n");
      out.write("    \n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>Item Name</th>\n");
      out.write("                <th>Item Brand</th>\n");
      out.write("                <th>Item Code</th>   \n");
      out.write("                <th>Size</th>\n");
      out.write("                <th>Sales Price</th>\n");
      out.write("                <th>Quantity</th>\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        \n");
      out.write("        ");

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
 String barcode = request.getParameter("barcode"); 
String sql ="SELECT sid,itemname,itembrand,itemcode,size,sales_price,quantity from stock where barcode='"+barcode+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("<tr bgcolor=\"#DEB887\">\n");
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
      out.print(resultSet.getString("size") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("sales_price") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("quantity") );
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("          \n");
 
}

} catch (Exception e) {
e.printStackTrace();
}


      out.write("\n");
      out.write("\n");
      out.write("    </table>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("         <div style=\"float:right; padding:50px\">   \n");
      out.write("             \n");
      out.write("       <form class=\"container-fluid-inline\">\n");
      out.write("       \n");
      out.write("<!--           <div><td><input type=\"text\" placeholder=\"Total\" id=\"pprice\"class=\"form-control\" name=\"total\" required></td></div>\n");
      out.write("       <div><td><input type=\"text\" placeholder=\"Enter Tax Rate\" id=\"pprice\"class=\"form-control\" name=\"tax\" required></td></div>\n");
      out.write("       <div><td><input type=\"text\" placeholder=\"Grand Total\" class=\"form-control\" name=\"total\" required></td></div>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("<input type=\"hidden\" name=\"mode\" value=\"PinRequest\" /> \n");
      out.write("<label><b>Total</b></label>\n");
      out.write("<input class=\"form-control\" name=\"pages\" id=\"pages\" type=\"text\"><br>\n");
      out.write("<label><b>Grand Total</b></label>\n");
      out.write("<input class=\"form-control\" name=\"tot_amount\" id=\"tot_amount\" type=\"text\"><br>\n");
      out.write("\n");
      out.write("<b><input type=\"submit\" name=\"save\" class=\"btn btn-primary mb-1\" value=\"Save\"></b>\n");
      out.write("</form>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function() {\n");
      out.write("$('#pages').keyup(function(ev){\n");
      out.write("var total = $('#pages').val() * 1;\n");
      out.write("var tot_price = total+(total*0.18);\n");
      out.write("var divobj = document.getElementById('tot_amount');\n");
      out.write("divobj.value = tot_price;\n");
      out.write("});\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<body>\n");
      out.write("</html>\n");
      out.write("<!--  <button type=\"submit\" class=\"btn btn-primary mb-1\" onclick=\"AddData()\">Save</button>-->\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</div>\n");
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

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class editStock_jsp extends org.apache.jasper.runtime.HttpJspBase
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

String sid = request.getParameter("sid");
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
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Stock</title>\n");
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
      out.write("                <li><a href=\"addStock.jsp\">Add Stock</a></li>\n");
      out.write("                <li><a href=\"viewstock.jsp\">View Stock</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("    \n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <h2 style=\"text-align: center; font-weight: bold;\">Add Stock</h2>\n");
      out.write("            <form action=\"addStock\" method=\"POST\">\n");
      out.write("            <div class=\"row jumbotron\">\n");
      out.write("                <div class=\"row\">\n");

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM stock where sid="+sid;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("            \n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Product Name</label>\n");
      out.write("                    <input type=\"text\" id=\"itemname\" name=\"productName\" class=\"form-control\" value=");
      out.print(resultSet.getString("itemname") );
      out.write(" >\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Product Brand </label>\n");
      out.write("                    <input type=\"text\" id=\"itembrand\" name=\"productBrand\" class=\"form-control\" value=");
      out.print(resultSet.getString("itembrand") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Product Code </label>\n");
      out.write("                    <input type=\"text\" id=\"itemcode\" name=\"productcode\" class=\"form-control\" value=");
      out.print(resultSet.getString("itemcode") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                 <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Purchase Price : </label>\n");
      out.write("                    <input type=\"text\" id=\"pprice\" name=\"purchasePrice\" class=\"form-control\" \" onchange=\"cal_sales\" value=");
      out.print(resultSet.getString("purchase_price") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("                  <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Margin %</label>\n");
      out.write("                    <input type=\"text\" id=\"margin\" name=\"margin\" class=\"form-control\" onchange=\"cal_sales()\" value=0>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                 <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Sales Price</label>\n");
      out.write("                    <input type=\"number\" id=\"sprice\" name=\"salesPrice\" class=\"form-control\" value=");
      out.print(resultSet.getString("sales_price") );
      out.write(">\n");
      out.write("                </div> \n");
      out.write("                \n");
      out.write("               \n");
      out.write("              \t\t\n");
      out.write("\t\t<div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Barcode</label>\n");
      out.write("                    <input type=\"text\" id=\"barcode\" name=\"stockCode\" class=\"form-control\" value=");
      out.print(resultSet.getString("barcode") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">color </label>\n");
      out.write("                    <input type=\"text\" id=\"color\" name=\"color\" class=\"form-control\" value=");
      out.print(resultSet.getString("color") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Stock Size</label>\n");
      out.write("                    <input type=\"text\" id=\"size\" name=\"stockSize\" class=\"form-control\" value=");
      out.print(resultSet.getString("size") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Style Fit</label>\n");
      out.write("                    <input type=\"text\" id=\"style_fit\" name=\"styleFit\" class=\"form-control\" value=");
      out.print(resultSet.getString("style_fit") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Stock Segment</label>\n");
      out.write("                    <input type=\"text\" id=\"segment\" name=\"stockSegment\" class=\"form-control\" value=");
      out.print(resultSet.getString("segment") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <label for=\"inputname\">Stock Quantity</label>\n");
      out.write("                    <input type=\"number\" id=\"quantity\" name=\"stock_qty\" class=\"form-control\" value=");
      out.print(resultSet.getString("quantity") );
      out.write(">\n");
      out.write("                </div>\n");
      out.write("  \n");
      out.write("                <div class=\"col-md-12\" style=\"text-align: center; margin-top: 20px;\">\n");
      out.write("                        <button type=\"reset\" name=\"Reset\" class=\"btn btn-info\">Reset</button>\n");
      out.write("                        \n");
      out.write("                        <button type=\"button\" class=\"btn btn-info\" onclick=\"update()\">Update</button>\n");
      out.write("                </div>\n");
      out.write("           \n");
 
}

} catch (Exception e) {
e.printStackTrace();
}


      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("     </div>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write(" <script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        function cal_sales(){\n");
      out.write("            \n");
      out.write("            var pprice= parseFloat(document.getElementById(\"pprice\").value);\n");
      out.write("            var margin= parseFloat(document.getElementById(\"margin\").value);\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            var sprice= Math.round(pprice + ((pprice*margin)/100));\n");
      out.write("            \n");
      out.write("            if(isNaN(sprice)){\n");
      out.write("                document.getElementById(\"sprice\").value= pprice;\n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                 document.getElementById(\"sprice\").value= sprice;\n");
      out.write("            }  \n");
      out.write("            if(isNaN(pprice)){\n");
      out.write("                document.getElementById(\"pprice\").value= 0;\n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                 document.getElementById(\"pprice\").value= pprice;\n");
      out.write("            } \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        function update(){\n");
      out.write("            itemname=document.getElementById(\"itemname\").value;\n");
      out.write("            itembrand=document.getElementById(\"itembrand\").value;\n");
      out.write("            itemcode=document.getElementById(\"itemcode\").value;\n");
      out.write("            segment=document.getElementById(\"segment\").value;\n");
      out.write("            style_fit=document.getElementById(\"style_fit\").value;\n");
      out.write("            color=document.getElementById(\"color\").value;\n");
      out.write("            size=document.getElementById(\"size\").value;        \n");
      out.write("            barcode=document.getElementById(\"barcode\").value;\n");
      out.write("            sales_price=document.getElementById(\"sprice\").value;\n");
      out.write("            purchase_price=document.getElementById(\"pprice\").value;\n");
      out.write("            quantity=document.getElementById(\"quantity\").value;\n");
      out.write("            \n");
      out.write("            String sql =\"update stock set itemname=\"+ itemname + \",itembrand=\"+ itembrand + \",itemcode=\"+itemcode+\",segment=\"+segment + \",style_fit=\"+style_fit+\",color=\"+color +\",size=\"+size+\",barcode=\"+barcode+\",sales_price=\"+sales_price+ \",purchase_price=\"+purchase_price+\",quantity=\"+quantity+\" where sid=\"+sid;\n");
      out.write("            \n");
      out.write("            try{\n");
      out.write("                statement.executeQuery(sql);\n");
      out.write("                alert(\"stock updated\");\n");
      out.write("                location.replace(\"viewstock.jsp\");\n");
      out.write("            }\n");
      out.write("            catch(Exception e){\n");
      out.write("                System.out.println(e);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("    </script>\n");
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

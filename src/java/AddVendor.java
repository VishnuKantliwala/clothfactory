
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author A
 */
public class AddVendor extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Connection conn = null;
        PreparedStatement insertvendorstmt = null;
        ResultSet resultSet = null;
        String html="<script>";

        try
        {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            String mysqlConnUrl = "jdbc:mysql://localhost:3306/apparel";
            String mysqlUserName = "root";
            String mysqlPassword = "";
            conn = DriverManager.getConnection(mysqlConnUrl,mysqlUserName ,mysqlPassword);
         
            String sql = "INSERT INTO vendor(vid,fname,lname,contact1,contact2,email,website,address1,address2,city,state,pincode,country,gst,gstdate,cst,cstdate) VALUES(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            System.out.println(request.getParameter("fname"));
            System.out.println(request.getParameter("lname"));
            System.out.println(request.getParameter("contact1"));
            System.out.println(request.getParameter("contact2"));
            System.out.println(request.getParameter("email"));
            System.out.println(request.getParameter("website"));
            System.out.println(request.getParameter("address1"));
            System.out.println(request.getParameter("address2"));
            System.out.println(request.getParameter("city"));
            System.out.println(request.getParameter("state"));
            System.out.println(request.getParameter("pincode"));
            System.out.println(request.getParameter("country"));
            System.out.println(request.getParameter("gst"));
            System.out.println(request.getParameter("gstdate"));
            System.out.println(request.getParameter("cst"));
            System.out.println(request.getParameter("cstdate"));
            
            
            insertvendorstmt = conn.prepareStatement(sql);
            insertvendorstmt.setString(1,request.getParameter("fname"));
            insertvendorstmt.setString(2,request.getParameter("lname"));
            insertvendorstmt.setString(3,request.getParameter("contact1"));
            insertvendorstmt.setString(4,request.getParameter("contact2"));
            insertvendorstmt.setString(5,request.getParameter("email"));
            insertvendorstmt.setString(6,request.getParameter("website"));
            insertvendorstmt.setString(7,request.getParameter("address1"));
            insertvendorstmt.setString(8,request.getParameter("address2"));
            insertvendorstmt.setString(9,request.getParameter("city"));
            insertvendorstmt.setString(10,request.getParameter("state"));
            insertvendorstmt.setInt(11,Integer.parseInt(request.getParameter("pincode")));
            insertvendorstmt.setString(12,request.getParameter("country"));
            insertvendorstmt.setString(13,request.getParameter("gst"));
            insertvendorstmt.setString(14,request.getParameter("gstdate"));
            insertvendorstmt.setString(15,request.getParameter("cst"));
            insertvendorstmt.setString(16,request.getParameter("cstdate"));  
            insertvendorstmt.executeUpdate();
            html+="alert('Vendor Saved')";
            html+="</script>";
           
//            insertcustomerstmt.close();

            RequestDispatcher rs = request.getRequestDispatcher("addvendor.jsp");
            rs.include(request, response);

        }
       catch(SQLException | ClassNotFoundException ex)
        {
                 html+="alert('Error occured')";
            html+="</script>";
            System.out.println(ex);

        }
         out.println(html);
       
   }
    

    private Object SimpleDateFormat(String yyyyMMdd) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
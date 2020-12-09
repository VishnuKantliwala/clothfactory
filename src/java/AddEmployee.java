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
public class AddEmployee extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Connection conn = null;
        PreparedStatement insertemployeestmt = null;
        ResultSet resultSet = null;
        String html="<script>";

        try
        {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            String mysqlConnUrl = "jdbc:mysql://localhost:3306/apparel";
            String mysqlUserName = "root";
            String mysqlPassword = "";
            conn = DriverManager.getConnection(mysqlConnUrl,mysqlUserName ,mysqlPassword);
         
            String sql = "INSERT INTO employee (eid,fname,lname,contact1,contact2,email,address1,address2,city,state,pincode,country,salary) VALUES(null,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            insertemployeestmt = conn.prepareStatement(sql);
            insertemployeestmt.setString(1,request.getParameter("fname"));
            insertemployeestmt.setString(2,request.getParameter("lname"));
            insertemployeestmt.setString(3,request.getParameter("contact1"));
            insertemployeestmt.setString(4,request.getParameter("contact2"));
            insertemployeestmt.setString(5,request.getParameter("email"));
            insertemployeestmt.setString(6,request.getParameter("address1"));
            insertemployeestmt.setString(7,request.getParameter("address2"));
            insertemployeestmt.setString(8,request.getParameter("city"));
            insertemployeestmt.setString(9,request.getParameter("state"));
            insertemployeestmt.setString(10,request.getParameter("pincode"));
            insertemployeestmt.setString(11,request.getParameter("country"));
            insertemployeestmt.setString(12,request.getParameter("salary"));

            insertemployeestmt.executeUpdate();
               html+="alert('employee Saved')";
            html+="</script>";
             
      //      insertcustomerstmt.close();

        }
       catch(SQLException | ClassNotFoundException ex)
        {
                 html+="alert('Error occured')";
            html+="</script>";
            System.out.println(ex);

        }
         out.println(html);
         RequestDispatcher rs = request.getRequestDispatcher("addemployee.jsp");
            rs.include(request, response);
   }
    

    private Object SimpleDateFormat(String yyyyMMdd) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
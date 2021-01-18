
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
public class AddCustomer extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException {
            PrintWriter out = response.getWriter();        
         
         
         System.out.println(request.toString());
        try {
            Connection conn = null;
            PreparedStatement insertcustomerstmt = null;
            ResultSet resultSet = null;
            
            Class.forName("com.mysql.jdbc.Driver");
            String mysqlConnUrl = "jdbc:mysql://localhost:3306/apparel";
            String mysqlUserName = "root";
            String mysqlPassword = "";
            conn = DriverManager.getConnection(mysqlConnUrl, mysqlUserName , mysqlPassword);
                        
            System.out.println("contact 2"+request.getParameter("txtCustomerCnt2"));
            String sql = "INSERT INTO customer(cid,fname,lname,contact1,contact2,email,address1,address2,city,state,pincode,country) VALUES(null,?,?,?,?,?,?,?,?,?,?,?)";
            insertcustomerstmt = conn.prepareStatement(sql);
            insertcustomerstmt.setString(1,request.getParameter("txtCustomerFname"));
            insertcustomerstmt.setString(2,request.getParameter("txtCustomerLname"));
            insertcustomerstmt.setString(3,request.getParameter("txtCustomerCnt1"));
            insertcustomerstmt.setString(4,request.getParameter("txtCustomerCnt2"));
            insertcustomerstmt.setString(5,request.getParameter("txtCustomerEmail"));
            insertcustomerstmt.setString(6,request.getParameter("txtCustomerAdrs1"));
            insertcustomerstmt.setString(7,request.getParameter("txtCustomerAdrs2"));
            insertcustomerstmt.setString(8,request.getParameter("txtCustomerCity"));
            insertcustomerstmt.setString(9,request.getParameter("txtCustomerState"));
            insertcustomerstmt.setInt(10,Integer.parseInt(request.getParameter("txtCustomerPincode")));
            insertcustomerstmt.setString(11,request.getParameter("txtCustomerCountry"));
   
            insertcustomerstmt.executeUpdate();
//            System.out.println("records inserted");  
  
            conn.close(); 
//             out.println("records inserted");
                       
        } catch (Exception e) {
            response.sendRedirect("customer.jsp?error="+e.getMessage());
            e.printStackTrace();
        }
        
         response.sendRedirect("customerView.jsp");
    }

}

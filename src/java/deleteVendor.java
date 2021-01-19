/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author ASUS
 */
public class deleteVendor extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();        
        String vid = request.getParameter("vid");
        String driverName = "com.mysql.cj.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "apparel";
        String userId = "root";
        String password = "";

        try {
            Class.forName(driverName);

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

            System.out.println(request.toString());
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
             
            String sql ="delete from vendor where vid="+vid;                        
            
            System.out.println(sql);
            statement.execute(sql);
            response.sendRedirect("vendorView.jsp");

        } catch (Exception e) {
            response.sendRedirect("vendorView.jsp&error="+e.getMessage());
            e.printStackTrace();
        }

//         RequestDispatcher rs = request.getRequestDispatcher("viewstock.jsp");
//         rs.include(request, response);
        
        
        
    }

   

}

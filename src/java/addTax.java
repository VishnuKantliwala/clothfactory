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
public class addTax extends HttpServlet {
    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {                       
           
        PrintWriter out = response.getWriter();
        try {
            Connection conn=null;
            
            Class.forName("com.mysql.jdbc.Driver");
            String mysqlConnUrl = "jdbc:mysql://localhost:3306/apparel";
            String mysqlUserName = "root";
            String mysqlPassword = "";
            conn = DriverManager.getConnection(mysqlConnUrl, mysqlUserName , mysqlPassword);
                        
            PreparedStatement stmt=conn.prepareStatement("insert into tax_type(name,rate) values(?,?)");  
            
            stmt.setString(1,request.getParameter("taxName"));
            stmt.setDouble(2,Double.parseDouble(request.getParameter("taxRate")));            
            
            stmt.executeUpdate();
//            System.out.println("");  
  
            conn.close();  
            
            out.println("records inserted");
            RequestDispatcher rs = request.getRequestDispatcher("addTax.jsp");
            rs.include(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    } 
}

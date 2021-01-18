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
public class addStock extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();        
         
         
         System.out.println(request.toString());
        try {
            Connection conn=null;
            
            Class.forName("com.mysql.jdbc.Driver");
            String mysqlConnUrl = "jdbc:mysql://localhost:3306/apparel";
            String mysqlUserName = "root";
            String mysqlPassword = "";
            conn = DriverManager.getConnection(mysqlConnUrl, mysqlUserName , mysqlPassword);
                        
            PreparedStatement stmt=conn.prepareStatement("insert into stock(vid,itemname,itembrand,itemcode,segment,style_fit,color,size,barcode,sales_price,purchase_price,quantity) values(?,?,?,?,?,?,?,?,?,?,?,?)");  
            
            // change sid to auto Increment
            stmt.setString(1,request.getParameter("vid"));
            stmt.setString(2,request.getParameter("productName"));
            stmt.setString(3,request.getParameter("productBrand"));
            stmt.setString(4,request.getParameter("productcode"));
            stmt.setString(5,request.getParameter("stockSegment"));
            stmt.setString(6,request.getParameter("styleFit"));
            stmt.setString(7,request.getParameter("color"));
            stmt.setString(8,request.getParameter("stockSize"));
            stmt.setString(9,request.getParameter("stockCode"));
            stmt.setDouble(10,Double.parseDouble(request.getParameter("salesPrice"))); // change decimal to double
            stmt.setDouble(11,Double.parseDouble(request.getParameter("purchasePrice"))); // change decimal to double
            stmt.setInt(12,Integer.parseInt(request.getParameter("stock_qty"))); // change decimal to double
                 
            
            stmt.executeUpdate();
//            System.out.println("records inserted");  
  
            conn.close(); 
//             out.println("records inserted");
                       
        } catch (Exception e) {
            response.sendRedirect("stock.jsp?error="+e.getMessage());
            e.printStackTrace();
        }
        
         response.sendRedirect("stockView.jsp");
    }
}

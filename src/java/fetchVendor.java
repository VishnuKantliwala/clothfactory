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
public class fetchVendor extends HttpServlet {
    
   
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
                        
            if(request.getParameter("keyword")!= ""){
                Statement statement=conn.createStatement();
                String sql ="SELECT vid, fname FROM vendor where fname like '%"+ request.getParameter("keyword") +"%'";

                ResultSet resultSet = statement.executeQuery(sql);
                out.println("<ul id=\"customer-list\" style=\"max-height:200px;overflow-x:hidden;overflow-y:auto;\">");
                while(resultSet.next()){
                    out.println("<li onClick=\"selectCustomer('"+ resultSet.getString("fname") +"','"+ resultSet.getString("vid") +"');\">"+ resultSet.getString("fname") +"</li>");
                }
                out.println("</ul>");
            }
            conn.close();  
            
            
            
            
        } catch (Exception e) {
            out.println(e.getMessage());
            
        }
    } 
}

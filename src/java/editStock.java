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
public class editStock extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();        
        String sid = request.getParameter("sid");
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
            String itemname=request.getParameter("productName");
            String itembrand= request.getParameter("productBrand");
            String itemcode=request.getParameter("productcode");
            String segment=request.getParameter("stockSegment");
            String style_fit=request.getParameter("styleFit");
            String color=request.getParameter("color");
            String size=request.getParameter("stockSize");
            String barcode=request.getParameter("stockCode");
            double sales_price=Double.parseDouble(request.getParameter("salesPrice")); // change decimal to double
            double purchase_price=Double.parseDouble(request.getParameter("purchasePrice")); // change decimal to double
            int quantity =Integer.parseInt(request.getParameter("stock_qty"));
             
            String sql ="update stock set itemname='"+ itemname + "',itembrand='"+ itembrand + "',itemcode='"+itemcode+"',segment='"+segment + "',style_fit='"+style_fit+"',color='"+color +"',size='"+size+"',barcode='"+barcode+"',sales_price="+sales_price+ ",purchase_price="+purchase_price+",quantity="+quantity+" where sid="+sid;                        
            
            System.out.println(sql);
            statement.execute(sql);
            out.println("records inserted");

        } catch (Exception e) {
            out.println("records not inserted");
            e.printStackTrace();
        }

         RequestDispatcher rs = request.getRequestDispatcher("viewstock.jsp");
         rs.include(request, response);
        
        
        
    }

   

}

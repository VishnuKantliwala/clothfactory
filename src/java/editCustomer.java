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
public class editCustomer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();        
        String cid = request.getParameter("cid");
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
            String fname=request.getParameter("fname");
            String lname= request.getParameter("lname");
            String contact1=request.getParameter("contact1");
            String contact2=request.getParameter("contact2");
            String email=request.getParameter("email");
            String address1=request.getParameter("address1");
            String address2=request.getParameter("address2");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            int pincode =Integer.parseInt(request.getParameter("pincode"));
            String country=request.getParameter("country");
             
            String sql ="update customer set fname='"+ fname + "',lname='"+ lname + "',contact1='"+contact1+"',contact2='"+contact2 + "',email='"+email+"',address1='"+address1+"',address2='"+address2+"',city='"+city+ "',state='"+state+"',pincode="+pincode+", country='"+country+"' where cid="+cid;                        
            
            System.out.println(sql);
            statement.execute(sql);
            response.sendRedirect("customerView.jsp");

        } catch (Exception e) {
            response.sendRedirect("customerView.jsp?cid="+cid+"&error="+e.getMessage());
            e.printStackTrace();
        }

//         RequestDispatcher rs = request.getRequestDispatcher("viewstock.jsp");
//         rs.include(request, response);
        
        
        
    }

   

}

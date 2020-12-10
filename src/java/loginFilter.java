/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class loginFilter implements Filter{

    public void init(FilterConfig fc) throws ServletException {}            
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        PrintWriter out = response.getWriter();
        String user = request.getParameter("username");
        String pass = request.getParameter("password");                
        try {
            Connection conn=null;
            
            Class.forName("com.mysql.jdbc.Driver");
            String mysqlConnUrl = "jdbc:mysql://localhost:3306/apparel";
            String mysqlUserName = "root";
            String mysqlPassword = "";
            conn = DriverManager.getConnection(mysqlConnUrl, mysqlUserName , mysqlPassword);
                        
            Statement stmt=conn.createStatement();
            
            ResultSet rs = stmt.executeQuery("select * from login");
            boolean flag=false;
                
            while (rs.next())
            {              
                String username = rs.getString("username");
                String password = rs.getString("password");
                if(pass.equals(password) && user.equals(username))
                {                              
                    flag=true;
                    break; 
                }                          
            }
            if(flag)
            {
                HttpServletResponse httpResponse = (HttpServletResponse) response;
                httpResponse.sendRedirect("index.jsp");
                
//                RequestDispatcher rsd = request.getRequestDispatcher("/index.jsp");
//                rsd.include(request, response);
//                chain.doFilter(request, response); 
                
            }else{  
                out.println("You have enter a wrong password");
                RequestDispatcher rsd = request.getRequestDispatcher("login.jsp");
                rsd.include(request, response);
            }
            conn.close();                                    
        } catch (Exception e) {
            e.printStackTrace();
        }                 
    }   
    public void destroy(){
    }
    
}

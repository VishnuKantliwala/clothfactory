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
import javax.servlet.http.*;
/**
 *
 * @author ASUS
 */
public class logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
            session.setMaxInactiveInterval(1);
        }
        response.sendRedirect("login.jsp");
//         RequestDispatcher rs = request.getRequestDispatcher("viewstock.jsp");
//         rs.include(request, response);
        
        
        
    }

   

}

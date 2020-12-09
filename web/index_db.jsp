<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.chillyfacts.db.DB_Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="dashboard.jsp">Dashboard</a>
            </div>
            <ul class="nav navbar-nav">

<!--                <li><a href="addcustomer.jsp">Add customer</a></li>
                <li><a href="viewcustomer.jsp">View customer</a></li>-->
            </ul>
        </div>
    </nav>

    <center><h2>Barcode</h2></center>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<center>

<br><br>
 <%
 try {
 DB_Connection obj_DBConnection = new DB_Connection();
 Connection connection = obj_DBConnection.getConnection();
 String query = "SELECT barcode FROM stock";
 Statement stmt = null;
 stmt = connection.createStatement();
 ResultSet rs = stmt.executeQuery(query);
 while (rs.next()) {
 %>
 <img alt="my Image" src="Create_Bar_Code_With_Parameter?value=<%=rs.getString("barcode")%>"><br><br>
 <% 
 }
 } catch (Exception e) {
 out.println(e);
 }
 %>
</center>
</body>
</html>
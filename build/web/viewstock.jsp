<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("fname");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "apparel";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    

    <script>
var myTable = $('#myTable').DataTable();
 
$('#myTable').on( 'click', 'tbody td', function () {
    myTable.cell( this ).edit( {
        blur: 'submit'
    } );
} );
        </script>   
    </head>
    <body>
           <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="dashboard.jsp">Dashboard</a>
            </div>
            <ul class="nav navbar-nav">

                <li><a href="addStock.jsp">Add Stock</a></li>
                <li><a href="viewstock.jsp">View Stock</a></li>
            </ul>
        </div>
    </nav>

    <center><h2>Stock list</h2></center>
    <table id="myTable" class="table table-striped" style="width:100%">
        <thead>
            
           <tr>        
                <th>Product Name</th>
                <th>Product Brand</th>   
                <th>Product Code</th>                
                <th>Style-fit</th>
                <th>Color</th>
                <th>Size</th>
                <th>Barcode</th>
                <th>Sails Price</th>
                <th>Purchase Price</th>
                <th>Quantity</th>
                <th>Edit</th>
               
               
               
            </tr>
        </thead>
        <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM stock";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("itemname") %></td>
<td><%=resultSet.getString("itembrand") %></td>
<td><%=resultSet.getString("itemcode") %></td>
<td><%=resultSet.getString("style_fit") %></td>
<td><%=resultSet.getString("color") %></td>
<td><%=resultSet.getString("size") %></td>
<td><%=resultSet.getString("barcode") %></td>
<td><%=resultSet.getString("sales_price") %></td>
<td><%=resultSet.getString("purchase_price") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td>   
    <a href="editStock.jsp?sid=<%=resultSet.getString("sid") %>"< class="btn btn-default"> Edit </a>
</td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}

%>
    </body>
</html>

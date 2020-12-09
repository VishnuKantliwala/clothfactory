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

                <li><a href="addvendor.jsp">Add vendor</a></li>
                <li><a href="viewvendor.jsp">View Vendor</a></li>
            </ul>
        </div>
    </nav>

    <center><h2>Vendor list</h2></center>
    
    <table id="myTable" class="table table-striped" style="width:100%;overflow: scroll">
        <thead>
            
           <tr>           
                <th>First Name</th>
                <th>Last Name</th>   
                <th>Contact 1</th>
                <th>Contact 2</th>
                <th>Email</th>
                <th>Website</th>
                <th>Address 1</th>
                <th>Address 2</th>
                <th>City</th>
                <th>State</th>
                <th>Pincode</th>
                <th>Country</th>
                <th>gst</th>
                <th>gstdate</th>
                <th>cst</th>
                <th>cstdate</th>
                <th>Edit</th>
              
               
            </tr>
        </thead>
        <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM vendor";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
    
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("contact1") %></td>
<td><%=resultSet.getString("contact2") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("website") %></td>
<td><%=resultSet.getString("address1") %></td>
<td><%=resultSet.getString("address2") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("state") %></td>
<td><%=resultSet.getString("country") %></td>
<td><%=resultSet.getString("pincode") %></td>
<td><%=resultSet.getString("gst") %></td>
<td><%=resultSet.getString("gstdate") %></td>
<td><%=resultSet.getString("cst") %></td>
<td><%=resultSet.getString("cstdate") %></td>
<td>
    <a href="editVendor.jsp?vid=<%=resultSet.getString("vid") %> "< class="btn btn-default"> Edit </a>
</td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}

%>
    </table>
    </body>
</html>

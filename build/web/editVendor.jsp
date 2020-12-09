<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String vid = request.getParameter("vid");
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
<html lang="en">

<head>
    <title>Vendor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="dashboard.jsp">Dashboard</a>
            </div>
            <ul class="nav navbar-nav">

                <li><a href="addvendor.jsp">Add Vendor </a></li>
                <li><a href="viewvendor.jsp">View Vendor </a></li>
            </ul>
        </div>
    </nav>
    
    <div class="container">
        <div class="form-group">
            <h2 style="text-align: center; font-weight: bold;">Add Stock</h2>
            <form action="viewvendor" method="POST">
            <div class="row jumbotron">
                <div class="row">
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM vendor where vid="+vid;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
            
                <div class="col-md-4">
                    <label for="inputname">First Name</label>
                    <input type="hidden"  name="vid" class="form-control" value=<%=vid %>>
                    <input type="text"  name="fname" class="form-control" value=<%=resultSet.getString("fname") %> >
                </div>

                <div class="col-md-4">
                    <label for="inputname"> Last Name </label>
                    <input type="text"  name="lname" class="form-control" value=<%=resultSet.getString("lname") %>>
                </div>

                <div class="col-md-4">
                    <label for="inputname">contact 1 </label>
                    <input type="text" id="contact1" name="contact1" class="form-control" value=<%=resultSet.getString("contact1") %>>
                </div>
                
                 <div class="col-md-4">
                    <label for="inputname">contact 2 </label>
                    <input type="text" name="contact2" class="form-control"  value=<%=resultSet.getString("contact2") %>>
                </div>

		<div class="col-md-4">
                    <label for="inputname">Email </label>
                    <input type="text"  name="email" class="form-control" value=<%=resultSet.getString("email") %>>
                </div>
                
               		<div class="col-md-4">
                    <label for="inputname">Address 1  </label>
                    <input type="text" name="address1" class="form-control" value=<%=resultSet.getString("address1 ") %>>
                </div>		

			<div class="col-md-4">
                    <label for="inputname">Address 2 </label>
                    <input type="text"  name="address2 " class="form-control" value=<%=resultSet.getString("address2") %>>
                </div>		

			<div class="col-md-4">
                    <label for="inputname"> city </label>
                    <input type="text"  name="city " class="form-control" value=<%=resultSet.getString("city") %>>
                </div>		

			<div class="col-md-4">
                    <label for="inputname">State </label>
                    <input type="text"  name="State" class="form-control" value=<%=resultSet.getString("state") %>>
                </div>		
			<div class="col-md-4">
                    <label for="inputname"> Pincode </label>
                    <input type="text" id="itemcode" name="Pincode " class="form-control" value=<%=resultSet.getString("cincode") %>>
                </div>		

                <div class="col-md-4">
                    <label for="inputname">Country </label>
                    <input type="text" name="Country" class="form-control" value=<%=resultSet.getString("country") %>>
                </div>
                
                 <div class="col-md-4">
                    <label for="inputname">GST </label>
                    <input type="text"  name="Country" class="form-control" value=<%=resultSet.getString("gst") %>>
                </div>
  
                
                 <div class="col-md-4">
                    <label for="inputname">GST Date </label>
                    <input type="date"  name="Country" class="form-control" value=<%=resultSet.getString("gstdate") %>>
                </div>
  
                
                 <div class="col-md-4">
                    <label for="inputname">CST </label>
                    <input type="text" name="Country" class="form-control" value=<%=resultSet.getString("cst") %>>
                </div>
  
                
                 <div class="col-md-4">
                    <label for="inputname">CST Date </label>
                    <input type="date" name="Country" class="form-control" value=<%=resultSet.getString("cstdate") %>>
                </div>
  
  
                <div class="col-md-12" style="text-align: center; margin-top: 20px;">
                        <button type="reset" name="Reset" class="btn btn-info">Reset</button>
                        
                        <button type="submit" class="btn btn-info">Update</button>
                </div>
           
<% 
}

} catch (Exception e) {
e.printStackTrace();
}

%>

                </div>
            </div>
        </form>
     </div>
      
    </div>
</body>
</html>

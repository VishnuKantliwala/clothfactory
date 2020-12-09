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
<html xmlns:h="http://java.sun.com/jsf/html" xmlns:f="http://java.sun.com/jsf/core">
    <div>
    <head>
    <title>Vendor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
    <script>
var myTable = $('#myTable').DataTable();
 
$('#myTable').on( 'click', 'tbody td', function () {
    myTable.cell( this ).edit( {
        blur: 'submit'
    } );
} );


function AddData() {
    var x = document.getElementById("itemname").value;
//    var y = document.getElementById("name").value;
//    var letters = '/^[a-zA-Z]+$/';
//    if ((parseInt(x) != (x)) && (y == parseInt(y))) {
//        alert("Wrong Value Entered");
//    } else {
//        var rows = "";
//        var name = "sadcsad";
//        var gender = document.querySelector('input[name="gender"]:checked');
//        gender = gender ? gender.value : '';
//        var age = document.getElementById("age").value;
//        var city = document.getElementById("city").value;
//
//        rows += "<td>" + name + "</td><td>" + gender + "</td><td>" + age + "</td><td>" + city + "</td>";
//        var tbody = document.querySelector("#list tbody");
//        var tr = document.createElement("tr");
//
//        tr.innerHTML = rows;
//        tbody.appendChild(tr)
//
//        //
//    }
}


}
        </script>  
        
         <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="dashboard.jsp">Dashboard</a>
            </div>
            <ul class="nav navbar-nav">

<!--                <li><a href="employee.jsp">Add Employee</a></li>
                <li><a href="viewemployee.jsp">View Employee</a></li>-->
            </ul>
        </div>
    </nav>
 <center><h2>Stock list</h2></center>
    </head>
    <body>
    <div style="padding:40px">
            <form class="form-inline">
  
                <input type="text" name="barcode" class="form-control" >
                <button type="submit" class="btn btn-primary mb-1" onclick="AddData()">Add Item</button>
            </form>
    </div>

        <div style="float:left; padding-left:40px">   
        <table id="myTable" class="table table-striped" style="width:100%">
    
        <thead>
            <tr>
                <th>Item Name</th>
                <th>Item Brand</th>
                <th>Item Code</th>   
                <th>Size</th>
                <th>Sales Price</th>
                <th>Quantity</th>
            </tr>
        </thead>
        
        <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
 String barcode = request.getParameter("barcode"); 
String sql ="SELECT sid,itemname,itembrand,itemcode,size,sales_price,quantity from stock where barcode='"+barcode+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("itemname") %></td>
<td><%=resultSet.getString("itembrand") %></td>
<td><%=resultSet.getString("itemcode") %></td>
<td><%=resultSet.getString("size") %></td>
<td><%=resultSet.getString("sales_price") %></td>
<td><%=resultSet.getString("quantity") %></td>
</tr>

          
<% 
}

} catch (Exception e) {
e.printStackTrace();
}

%>

    </table>
    </div>
    </div>
    </body>
    
         <div style="float:right; padding:50px">   
             
       <form class="container-fluid-inline">
       
<!--           <div><td><input type="text" placeholder="Total" id="pprice"class="form-control" name="total" required></td></div>
       <div><td><input type="text" placeholder="Enter Tax Rate" id="pprice"class="form-control" name="tax" required></td></div>
       <div><td><input type="text" placeholder="Grand Total" class="form-control" name="total" required></td></div>-->


<input type="hidden" name="mode" value="PinRequest" /> 
<label><b>Total</b></label>
<input class="form-control" name="pages" id="pages" type="text"><br>
<label><b>Grand Total</b></label>
<input class="form-control" name="tot_amount" id="tot_amount" type="text"><br>

<b><input type="submit" name="save" class="btn btn-primary mb-1" value="Save"></b>
</form>
<script>
$(document).ready(function() {
$('#pages').keyup(function(ev){
var total = $('#pages').val() * 1;
var tot_price = total+(total*0.18);
var divobj = document.getElementById('tot_amount');
divobj.value = tot_price;
});
});
</script>
<body>
</html>
<!--  <button type="submit" class="btn btn-primary mb-1" onclick="AddData()">Save</button>-->
    </div>

</div>
</html>

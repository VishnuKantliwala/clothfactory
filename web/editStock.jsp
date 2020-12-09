<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String sid = request.getParameter("sid");
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
    <title>Stock</title>
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

                <li><a href="addStock.jsp">Add Stock</a></li>
                <li><a href="viewstock.jsp">View Stock</a></li>
            </ul>
        </div>
    </nav>
    
    <div class="container">
        <div class="form-group">
            <h2 style="text-align: center; font-weight: bold;">Add Stock</h2>
            <form action="editStock" method="POST">
            <div class="row jumbotron">
                <div class="row">
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM stock where sid="+sid;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
            
                <div class="col-md-4">
                    <label for="inputname">Product Name</label>
                    <input type="hidden"  name="sid" class="form-control" value=<%=sid %>>
                    <input type="text"  name="productName" class="form-control" value=<%=resultSet.getString("itemname") %> >
                </div>
                <div class="col-md-4">
                    <label for="inputname">Product Brand </label>
                    <input type="text" id="itembrand" name="productBrand" class="form-control" value=<%=resultSet.getString("itembrand") %>>
                </div>
                <div class="col-md-4">
                    <label for="inputname">Product Code </label>
                    <input type="text" id="itemcode" name="productcode" class="form-control" value=<%=resultSet.getString("itemcode") %>>
                </div>
                
                 <div class="col-md-4">
                    <label for="inputname">Purchase Price : </label>
                    <input type="text" id="pprice" name="purchasePrice" class="form-control" onkeyup="cal_sales()"  value=<%=resultSet.getString("purchase_price") %>>
                </div>
                  <div class="col-md-4">
                    <label for="inputname">Margin %</label>
                    <input type="text" id="margin" name="margin" class="form-control" onkeyup="cal_sales()" value=0>
                </div>
                
                 <div class="col-md-4">
                    <label for="inputname">Sales Price</label>
                    <input type="number" id="sprice" name="salesPrice" class="form-control" value=<%=resultSet.getString("sales_price") %>>
                </div> 
                
               
              		
		<div class="col-md-4">
                    <label for="inputname">Barcode</label>
                    <input type="text" id="barcode" name="stockCode" class="form-control" value=<%=resultSet.getString("barcode") %>>
                </div>

                <div class="col-md-4">
                    <label for="inputname">color </label>
                    <input type="text" id="color" name="color" class="form-control" value=<%=resultSet.getString("color") %>>
                </div>

                <div class="col-md-4">
                    <label for="inputname">Stock Size</label>
                    <input type="text" id="size" name="stockSize" class="form-control" value=<%=resultSet.getString("size") %>>
                </div>

                <div class="col-md-4">
                    <label for="inputname">Style Fit</label>
                    <input type="text" id="style_fit" name="styleFit" class="form-control" value=<%=resultSet.getString("style_fit") %>>
                </div>

                <div class="col-md-4">
                    <label for="inputname">Stock Segment</label>
                    <input type="text" id="segment" name="stockSegment" class="form-control" value=<%=resultSet.getString("segment") %>>
                </div>

                <div class="col-md-4">
                    <label for="inputname">Stock Quantity</label>
                    <input type="number" id="quantity" name="stock_qty" class="form-control" value=<%=resultSet.getString("quantity") %>>
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
 <script>
        
        
        function cal_sales(){
            
           
            
            var pprice= parseFloat(document.getElementById("pprice").value);
            var margin= parseFloat(document.getElementById("margin").value);
            
            
            var sprice= Math.round(pprice + ((pprice*margin)/100));
            
            if(isNaN(sprice)){
                document.getElementById("sprice").value= pprice;
            }
            else{
                 document.getElementById("sprice").value= sprice;
            }  
            if(isNaN(pprice)){
                document.getElementById("pprice").value= 0;
            }
            else{
                 document.getElementById("pprice").value= pprice;
            } 
        }
                
    </script>

</html>

<%-- 
    Document   : addText
    Created on : 14 Nov, 2018, 4:38:58 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Tax</title>
        
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body> 
        <nav class="navbar navbar-inverse" >
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="dashboard.jsp">Dashboard</a>
            </div>
            <ul class="nav navbar-nav">

                <li><a href="addTax.jsp">Add Tax</a></li>
                <li><a href="#">View Tax</a></li>
            </ul>
        </div>
    </nav>

        <div class="row junbotron">
            <div class="col-md-offset-4 col-md-4" style="margin-top: 15vh; border-radius: 25px; border: 2px solid;">                   
              <!--form-start-->
            <form class="form-group " action="addTax" method="post">
                <div class="title form-group">
                    <br>
                    <center><b>Add Tax </b></center>
                </div>
                
                <div class="form-group">
                  <label for="TaxName">Tax Name:</label>
                  <input type="text" name="taxName" class="form-control" style=" border-radius: 25px; ">
                </div>
                <div class="form-group">
                  <label for="TaxRate">Tax Rate:</label>
                  <input type="text" name="taxRate" class="form-control" style=" border-radius: 25px; " >
                </div> 
                <center>
                <div style="width: 20vh;">
                    <input type="submit" value="ADD" class="form-control btn-danger" style=" border-radius: 25px; ">
                </div>
                </center>
                
            </form>
              <!--form-end-->                         
        </div>       
    </body>
</html>

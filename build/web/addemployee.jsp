<%-- 
    Document   : employee
    Created on : Dec 6, 2018, 3:46:30 PM
    Author     : okm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Employee</title>
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

                <li><a href="addemployee.jsp">Add Employee</a></li>
                <li><a href="viewemployee.jsp">View Employee</a></li>
            </ul>
        </div>
    </nav>


    <div class="container">
        <div name="myform" class="form-group">
            <h2 style="text-align: center; font-weight: bold;">Add Employee</h2>
            <form action="AddEmployee" method="POST">
            <div class="row jumbotron">
            <div class="row">
               
                <div class="col-md-4">
                    <label for="inputname">Full Name</label>
                    <input type="text" name="fname" class="form-control" >
                </div>

                <div class="col-md-4">
                    <label for="inputname">Last Name</label>
                    <input type="text" name="lname" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Contact 1</label>
                    <input type="number" name="contact1" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Contact 2 </label>
                    <input type="number" name="contact2" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Email</label>
                    <input type="email" name="email" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Address 1</label>
                    <input type="text" name="address1" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Address 2</label>
                    <input type="text" name="address2" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">City</label>
                    <input type="text" name="city" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">State</label>
                    <input type="text" name="state" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Pincode</label>
                    <input type="number" name="pincode" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Country</label>
                    <input type="text" name="country" class="form-control">
                </div>

                 <div class="col-md-4">
                    <label for="inputname">Salary</label>
                    <input type="number" name="salary" class="form-control">
                </div>
                <div class="col-md-12" style="text-align: center; margin-top: 20px;">
                    <button type="reset" name="Reset" class="btn btn-info">Reset</button>   
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </div>
            </div>
            </form>
        </div>
        
    </div>
</body>

</html>

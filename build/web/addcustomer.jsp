<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Add Customer</title>
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

                <li><a href="addcustomer.jsp">Add Customer</a></li>
                <li><a href="viewcustomer.jsp">View Customer</a></li>
            </ul>
        </div>
    </nav>


    <div class="container">
        <div  class="form-group">
            <h2 style="text-align: center; font-weight: bold;">Add Customer</h2>
            <form action="AddCustomer" method="POST">
            <div class="row jumbotron">
            <div class="row">
               
                <div class="col-md-4">
                    <label for="inputname">Customer First Name</label>
                    <input type="text" name="txtCustomerFname" class="form-control" >
                </div>

                <div class="col-md-4">
                    <label for="inputname">Customer Last Name</label>
                    <input type="text" name="txtCustomerLname" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Contact 1</label>
                    <input type="number" name="txtCustomerCnt1" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Contact 2</label>
                     <input type="number" name="txtCustomerCnt2" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Email</label>
                    <input type="email" name="txtCustomerEmail" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Address 1</label>
                    <input type="text" name="txtCustomerAdrs1" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Address 2</label>
                    <input type="text"  name="txtCustomerAdrs2" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">City</label>
                    <input type="text" name="txtCustomerCity" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">State</label>
                    <input type="text" name="txtCustomerState" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Pincode</label>
                    <input type="number" name="txtCustomerPincode" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Country</label>
                    <input type="text" name="txtCustomerCountry" class="form-control">
                </div>

                <div class="col-md-12" style="text-align: center; margin-top: 20px;">
                    <button type="reset" name="Reset" class="btn btn-info">Reset</button>   
                    <button type="submit" class="btn btn-primary" ">Add</button>
                </div>
            </div>
            </div>
            </form>
        </div>
        
    </div>
</body>

</html>

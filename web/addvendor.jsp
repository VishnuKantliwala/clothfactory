<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

                <li><a href="addvendor.jsp">Add vendor</a></li>
                <li><a href="viewvendor.jsp">View Vendor</a></li>
            </ul>
        </div>
    </nav>


    <div class="container">
        <div class="form-group">
            <h2 style="text-align: center; font-weight: bold;">Add Vendor</h2>
            <form action="AddVendor" method="POST">
            <div class="row jumbotron">
            <div class="row">
                <div class="col-md-4">
                    <label for="inputname">Company Name</label>
                    <input type="text" name="fname" class="form-control" >
                </div>

                <div class="col-md-4">
                    <label for="inputname">Owner Name</label>
                    <input type="text" name="lname" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Contact 1</label>
                    <input type="number" name="contact1" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Contact 2</label>
                    <input type="number" name="contact2" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Email</label>
                    <input type="email" name="email" class="form-control">
                </div>
				
		<div class="col-md-4">
                    <label for="inputname">Website</label>
                    <input type="text" name="website" class="form-control">
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
                    <label for="inputname">GST</label>
                    <input type="number" name="gst" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">GST Date</label>
                    <input type="date" name="gstdate" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">CST</label>
                    <input type="number" name="cst" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">CST Date</label>
                    <input type="date" name="cstdate" class="form-control">
                </div>
                
                <div class="col-md-12" style="text-align: center; margin-top: 20px;">
                        <button type="reset" name="Reset" class="btn btn-info">Reset</button>
                        
                        <button type="submit" class="btn btn-info">Add</button>
                </div>
            </div>
           </div>
        </form>
     </div>
      
    </div>
</body>

</html>

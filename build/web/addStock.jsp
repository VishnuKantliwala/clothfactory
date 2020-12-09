<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <form action="addStock" method="POST">
            <div class="row jumbotron">
            <div class="row">
                <div class="col-md-4">
                    <label for="inputname">Product Name</label>
                    <input type="text" name="productName" class="form-control" >
                </div>
                <div class="col-md-4">
                    <label for="inputname">Product Brand </label>
                    <input type="text" name="productBrand" class="form-control">
                </div>
                <div class="col-md-4">
                    <label for="inputname">Product Code </label>
                    <input type="text" name="productcode" class="form-control">
                </div>
                
                 <div class="col-md-4">
                    <label for="inputname">Purchase Price : </label>
                    <input type="text" id="pprice" name="purchasePrice" class="form-control" onkeyup="cal_sales()">
                </div>
                  <div class="col-md-4">
                    <label for="inputname">Margin %</label>
                    <input type="text" id="margin" name="margin" class="form-control" onkeyup="cal_sales()">
                </div>
                
                 <div class="col-md-4">
                    <label for="inputname">Sales Price</label>
                    <input type="number" id="sprice" name="salesPrice" class="form-control">
                </div> 
                
               
              		
		<div class="col-md-4">
                    <label for="inputname">Barcode</label>
                    <input type="number" name="stockCode" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">color </label>
                    <input type="text" name="color" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Stock Size</label>
                    <input type="text" name="stockSize" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Style Fit</label>
                    <input type="text" name="styleFit" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Stock Segment</label>
                    <input type="text" name="stockSegment" class="form-control">
                </div>

                <div class="col-md-4">
                    <label for="inputname">Stock Quantity</label>
                    <input type="number" name="stock_qty" class="form-control">
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

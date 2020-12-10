<%@ include file = "header.jsp" %>
<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card-box">
                        <h4 class="mt-0 header-title">Stock form</h4>
                        <hr/>

                        <form class="form-horizontal" method="post" action="addStock">
                            <div class="row">
                                
                                <div class="col-md-12">
                                    <p class="text text-danger">
                                        <%
                                            if( request.getParameter("error") != null )
                                            {
                                        %>
                                        <%= request.getParameter("error") %>
                                        <%
                                            }
                                                
                                        %>
                                        
                                    </p>
                                </div>
                                
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Product Name</label>
                                    <div class="col-md-12">
                                        <input class="form-control" name="productName" autofocus=""/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Product Brand</label>
                                    <div class="col-md-12">
                                        <input class="form-control" name="productBrand"/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Product Code</label>
                                    <div class="col-md-12">
                                        <input class="form-control" name="productcode"/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Purchase Price</label>
                                    <div class="col-md-12">
                                        <input class="form-control" id="pprice" name="purchasePrice" onkeyup="cal_sales()"/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Margin</label>
                                    <div class="col-md-12">
                                        <input type="text" id="margin" name="margin" class="form-control" onkeyup="cal_sales()">
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Sales Price</label>
                                    <div class="col-md-12">
                                        <input type="number" id="sprice" name="salesPrice" class="form-control">
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Barcode</label>
                                    <div class="col-md-12">
                                        <input type="number"  name="stockCode" class="form-control">
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Color</label>
                                    <div class="col-md-12">
                                        <input type="text" name="color" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Stock Size</label>
                                    <div class="col-md-12">
                                        <input type="text" name="stockSize" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Style Fit</label>
                                    <div class="col-md-12">
                                        <input type="text" name="styleFit" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Stock Segment</label>
                                    <div class="col-md-12">
                                        <input type="text" name="stockSegment" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Stock Quantity</label>
                                    <div class="col-md-12">
                                        <input type="number" name="stock_qty" class="form-control">
                                    </div>
                                </div>

                            </div>
                               
                            </div>




                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" name="editbtn" id="editbtn" class="btn btn-success">Add</button>
                                    <button type="submit" name="myButton" id="myButton" class="btn btn-lighten-danger" onClick="window.location.href = 'stockView.jsp'; return false;" >Cancel</button>
                                </div>
                            </div>
                            <? } ?>	
                        </form>
                        <script>


                            function cal_sales() {

                                var pprice = parseFloat(document.getElementById("pprice").value);
                                var margin = parseFloat(document.getElementById("margin").value);


                                var sprice = Math.round(pprice + ((pprice * margin) / 100));

                                if (isNaN(sprice)) {
                                    document.getElementById("sprice").value = pprice;
                                } else {
                                    document.getElementById("sprice").value = sprice;
                                }
                                if (isNaN(pprice)) {
                                    document.getElementById("pprice").value = 0;
                                } else {
                                    document.getElementById("pprice").value = pprice;
                                }
                            }

                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file = "footer.jsp" %>
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

                        <form class="form-horizontal" method="post" action="AddCustomer">
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
                                    <label for="inputEmail3" class="col-md-12 control-label">Customer First Name</label>
                                    <div class="col-md-12">
                                        <input class="form-control" name="txtCustomerFname" autofocus=""/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Customer Last Name</label>
                                    <div class="col-md-12">
                                        <input class="form-control" name="txtCustomerLname"/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Contact 1</label>
                                    <div class="col-md-12">
                                        <input type="number" class="form-control" name="txtCustomerCnt1"/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Contact 2</label>
                                    <div class="col-md-12">
                                        <input type="number" class="form-control" name="txtCustomerCnt2"/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Email</label>
                                    <div class="col-md-12">
                                        <input type="email" name="txtCustomerEmail" class="form-control">
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Address 1</label>
                                    <div class="col-md-12">
                                        <input type="text" name="txtCustomerAdrs1" class="form-control">
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Address 2</label>
                                    <div class="col-md-12">
                                        <input type="text"  name="txtCustomerAdrs2" class="form-control">
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">City</label>
                                    <div class="col-md-12">
                                        <input type="text" name="txtCustomerCity" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">State</label>
                                    <div class="col-md-12">
                                        <input type="text" name="txtCustomerState" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Pincode</label>
                                    <div class="col-md-12">
                                        <input type="number" name="txtCustomerPincode" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Country</label>
                                    <div class="col-md-12">
                                        <input type="text" name="txtCustomerCountry" class="form-control">
                                    </div>
                                </div>

                            </div>
                               
                            </div>




                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" name="editbtn" id="editbtn" class="btn btn-success">Add</button>
                                    <button type="submit" name="myButton" id="myButton" class="btn btn-lighten-danger" onClick="window.location.href = 'customerView.jsp'; return false;" >Cancel</button>
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
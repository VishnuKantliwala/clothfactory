<%@ include file = "header.jsp" %>
<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card-box">
                        <h4 class="mt-0 header-title">Vendor form</h4>
                        <hr/>

                        <form class="form-horizontal" method="post" action="AddVendor">
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
                                    <label for="inputEmail3" class="col-md-12 control-label">Company Name</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="fname" autofocus=""/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Owner Name</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="lname"/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Contact 1</label>
                                    <div class="col-md-12">
                                        <input type="number" class="form-control" name="contact1"/>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Contact 2</label>
                                    <div class="col-md-12">
                                        <input type="number" class="form-control" name="contact2" />
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Email</label>
                                    <div class="col-md-12">
                                        <input type="email" name="email" class="form-control" >
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Website</label>
                                    <div class="col-md-12">
                                        <input type="text" name="website" class="form-control">
                                    </div>

                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Address 1</label>
                                    <div class="col-md-12">
                                        <input type="text"  name="address1" class="form-control">
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Address 2</label>
                                    <div class="col-md-12">
                                        <input type="text" name="address2" class="form-control">
                                    </div>
                                </div>

                                
                                
                            </div>
                            <div class="col-md-6">
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">City</label>
                                    <div class="col-md-12">
                                        <input type="text" name="city" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">State</label>
                                    <div class="col-md-12">
                                        <input type="text" name="state" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Pincode</label>
                                    <div class="col-md-12">
                                        <input type="number" name="pincode" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Country</label>
                                    <div class="col-md-12">
                                        <input type="text" name="country" class="form-control">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">GST</label>
                                    <div class="col-md-12">
                                        <input type="number" name="gst" class="form-control">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">GST Date</label>
                                    <div class="col-md-12">
                                        <input type="date" name="gstdate" class="form-control">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">CST</label>
                                    <div class="col-md-12">
                                        <input type="number" name="cst" class="form-control">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">CST Date</label>
                                    <div class="col-md-12">
                                        <input type="date" name="cstdate" class="form-control">
                                    </div>
                                </div>

                            </div>
                               
                            </div>




                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" name="editbtn" id="editbtn" class="btn btn-success">Add</button>
                                    <a class="btn btn-lighten-danger" href="vendorView.jsp" >Cancel</a>
                                </div>
                            </div>
                            <? } ?>	
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file = "footer.jsp" %>
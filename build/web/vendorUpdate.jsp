<%@ include file = "header.jsp" %>

<%    
    String vid = request.getParameter("vid");
%>
<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card-box">
                        <h4 class="mt-0 header-title">Vendor form</h4>
                        <hr/>
                        
                        <%
                            try {
                                connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                statement = connection.createStatement();
                                String sql ="SELECT * FROM vendor where vid="+vid;

                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>

                        <form class="form-horizontal" method="post" action="editvendor">
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
                                        <input type="hidden"  name="vid" class="form-control" value=<%=vid %> />
                                        <input type="text" class="form-control" name="fname" autofocus="" value="<%=resultSet.getString("fname") %>" required />
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Owner Name</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="lname" value="<%=resultSet.getString("lname") %>" required />
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Contact 1</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="Contact1" value=<%=resultSet.getString("contact1") %> required />
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Contact 2</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="contact2" value=<%=resultSet.getString("contact2") %> required />
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Email</label>
                                    <div class="col-md-12">
                                        <input type="email" name="email" class="form-control" value=<%=resultSet.getString("email") %> required>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Website</label>
                                    <div class="col-md-12">
                                        <input type="text" name="website" class="form-control" value=<%=resultSet.getString("website") %> required>
                                    </div>

                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Address 1</label>
                                    <div class="col-md-12">
                                        <input type="text"  name="address1" class="form-control" value=<%=resultSet.getString("address1") %> required>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Address 2</label>
                                    <div class="col-md-12">
                                        <input type="text" name="address2" class="form-control" value=<%=resultSet.getString("address2") %> required>
                                    </div>
                                </div>

                                
                                
                            </div>
                            <div class="col-md-6">
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">City</label>
                                    <div class="col-md-12">
                                        <input type="text" name="city" class="form-control" value=<%=resultSet.getString("city") %> required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">State</label>
                                    <div class="col-md-12">
                                        <input type="text" name="state" class="form-control" value=<%=resultSet.getString("state") %> required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Pincode</label>
                                    <div class="col-md-12">
                                        <input type="number" name="pincode" class="form-control" value=<%=resultSet.getString("pincode") %> required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">Country</label>
                                    <div class="col-md-12">
                                        <input type="text" name="country" class="form-control" value=<%=resultSet.getString("country") %> required>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">GST</label>
                                    <div class="col-md-12">
                                        <input type="number" name="gst" class="form-control" value=<%=resultSet.getString("gst") %> required>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">GST Date</label>
                                    <div class="col-md-12">
                                        <input type="date" name="gstdate" class="form-control" value=<%=resultSet.getString("gstdate") %>>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">CST</label>
                                    <div class="col-md-12">
                                        <input type="number" name="cst" class="form-control" value=<%=resultSet.getString("cst") %>>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-12 control-label">CST Date</label>
                                    <div class="col-md-12">
                                        <input type="date" name="cstdate" class="form-control" value=<%=resultSet.getString("cstdate") %>>
                                    </div>
                                </div>

                            </div>
                               
                            </div>




                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" name="editbtn" id="editbtn" class="btn btn-success">Update</button>
                                    <a class="btn btn-lighten-danger" href="vendorView.jsp" >Cancel</a>
                                </div>
                            </div>
                            <? } ?>	
                        </form>
                        <%
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file = "footer.jsp" %>
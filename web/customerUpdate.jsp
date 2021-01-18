<%@ include file = "header.jsp" %>
<%    
    String cid = request.getParameter("cid");
%>
<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card-box">
                        <h4 class="mt-0 header-title">Stock form</h4>
                        <hr/>
                        <%
                            try {
                                connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                statement = connection.createStatement();
                                String sql = "SELECT * FROM customer where cid=" + cid;

                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>
                        <form class="form-horizontal" method="post" action="editCustomer">
                            <div class="row">

                                <div class="col-md-12">
                                    <p class="text text-danger">
                                        <%
                                            if (request.getParameter("error") != null) {
                                        %>
                                        <%= request.getParameter("error")%>
                                        <%
                                            }

                                        %>

                                    </p>
                                </div>


                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">First Name</label>
                                        <div class="col-md-12">
                                            <input type="hidden"  name="cid" class="form-control" value=<%=cid%> />
                                            <input class="form-control" name="fname" autofocus="" value="<%=resultSet.getString("fname")%>" />
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">last name</label>
                                        <div class="col-md-12">
                                            <input class="form-control" name="lname" value=<%=resultSet.getString("lname")%> />
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">Contact no 1</label>
                                        <div class="col-md-12">
                                            <input class="form-control" name="contact1" value=<%=resultSet.getString("contact1")%> />
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">Contact no 2 </label>
                                        <div class="col-md-12">
                                            <input class="form-control"  name="contact2" value=<%=resultSet.getString("contact2")%> />
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">email</label>
                                        <div class="col-md-12">
                                            <input type="email" name="email" class="form-control" value=<%=resultSet.getString("email")%> />
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">address1</label>
                                        <div class="col-md-12">
                                            <input type="text" name="address1" class="form-control" value=<%=resultSet.getString("address1")%>>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">address2</label>
                                        <div class="col-md-12">
                                            <input type="text"  name="address2" class="form-control" value=<%=resultSet.getString("address2")%>>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">city</label>
                                        <div class="col-md-12">
                                            <input type="text" name="city" class="form-control" value=<%=resultSet.getString("city")%>>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">state</label>
                                        <div class="col-md-12">
                                            <input type="text" name="state" class="form-control" value=<%=resultSet.getString("state")%>>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">pincode</label>
                                        <div class="col-md-12">
                                            <input type="number" name="pincode" class="form-control" value=<%=resultSet.getString("pincode")%> >
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-md-12 control-label">country</label>
                                        <div class="col-md-12">
                                            <input type="text" name="country" class="form-control" value=<%=resultSet.getString("country")%> >
                                        </div>
                                    </div>

                                </div>

                            </div>




                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" name="editbtn" id="editbtn" class="btn btn-success">Update</button>
                                    <button type="submit" name="myButton" id="myButton" class="btn btn-lighten-danger" onClick="window.location.href = 'stockView.jsp'; return false;" >Cancel</button>
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
                        <script>


                         

                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file = "footer.jsp" %>
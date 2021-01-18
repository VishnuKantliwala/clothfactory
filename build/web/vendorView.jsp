<%@ include file = "header.jsp" %>
<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card-box">
                        <h4 class="mt-0 header-title">Vendor View</h4>
                        <a href="vendor.jsp" class="btn btn-success m-b-sm mt-2 mb-2">Add</a>
                        <table id="datatable" class="table table-bordered dt-responsive nowrap">
                            <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>   
                                    <th>Contact 1</th>
                                    <th>Contact 2</th>
                                    <th>Email</th>
                                    <th>Website</th>
                                    <th>Address 1</th>
                                    <th>Address 2</th>
                                    <th>City</th>
                                    <th>State</th>
                                    <th>Pincode</th>
                                    <th>Country</th>
                                    <th>gst</th>
                                    <th>gstdate</th>
                                    <th>cst</th>
                                    <th>cstdate</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>   
                                    <th>Contact 1</th>
                                    <th>Contact 2</th>
                                    <th>Email</th>
                                    <th>Website</th>
                                    <th>Address 1</th>
                                    <th>Address 2</th>
                                    <th>City</th>
                                    <th>State</th>
                                    <th>Pincode</th>
                                    <th>Country</th>
                                    <th>gst</th>
                                    <th>gstdate</th>
                                    <th>cst</th>
                                    <th>cstdate</th>
                                    <th>Edit</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                     <%
                                try{ 
                                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                                statement=connection.createStatement();
                                String sql ="SELECT * FROM vendor";

                                resultSet = statement.executeQuery(sql);
                                while(resultSet.next()){
                                 %>
                                <tr>
                                    <td><%=resultSet.getString("fname") %></td>
                                    <td><%=resultSet.getString("lname") %></td>
                                    <td><%=resultSet.getString("contact1") %></td>
                                    <td><%=resultSet.getString("contact2") %></td>
                                    <td><%=resultSet.getString("email") %></td>
                                    <td><%=resultSet.getString("website") %></td>
                                    <td><%=resultSet.getString("address1") %></td>
                                    <td><%=resultSet.getString("address2") %></td>
                                    <td><%=resultSet.getString("city") %></td>
                                    <td><%=resultSet.getString("state") %></td>
                                    <td><%=resultSet.getString("country") %></td>
                                    <td><%=resultSet.getString("pincode") %></td>
                                    <td><%=resultSet.getString("gst") %></td>
                                    <td><%=resultSet.getString("gstdate") %></td>
                                    <td><%=resultSet.getString("cst") %></td>
                                    <td><%=resultSet.getString("cstdate") %></td>
                                    <td>
                                        <a href="vendorUpdate.jsp?vid=<%=resultSet.getString("vid") %>"  > <i class="fa fa-edit"></i> </a>
                                    </td>
                                </tr>
                                <%
                                    }

                                } catch (Exception e) {
                                e.printStackTrace();
                                }
                                %>
                            </tbody>

                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file = "footer.jsp" %>
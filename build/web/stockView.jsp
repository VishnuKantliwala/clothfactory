<%@ include file = "header.jsp" %>
<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card-box">
                        <h4 class="mt-0 header-title">Stock View</h4>
                        <a href="stock.jsp" class="btn btn-success m-b-sm mt-2 mb-2">Add</a>
                        <table id="datatable" class="table table-bordered dt-responsive nowrap">
                            <thead>
                                <tr>
                                    <th>Product Name</th>
                                    <th>Product Brand</th>   
                                    <th>Product Code</th>                
                                    <th>Style-fit</th>
                                    <th>Color</th>
                                    <th>Size</th>
                                    <th>Barcode</th>
                                    <th>Sails Price</th>
                                    <th>Purchase Price</th>
                                    <th>Quantity</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Product Name</th>
                                    <th>Product Brand</th>   
                                    <th>Product Code</th>                
                                    <th>Style-fit</th>
                                    <th>Color</th>
                                    <th>Size</th>
                                    <th>Barcode</th>
                                    <th>Sails Price</th>
                                    <th>Purchase Price</th>
                                    <th>Quantity</th>
                                    <th>Edit</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                     <%
                                try{ 
                                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                                statement=connection.createStatement();
                                String sql ="SELECT * FROM stock";

                                resultSet = statement.executeQuery(sql);
                                while(resultSet.next()){
                                 %>
                                <tr>
                                    <td><%=resultSet.getString("itemname") %></td>
                                    <td><%=resultSet.getString("itembrand") %></td>
                                    <td><%=resultSet.getString("itemcode") %></td>
                                    <td><%=resultSet.getString("style_fit") %></td>
                                    <td><%=resultSet.getString("color") %></td>
                                    <td><%=resultSet.getString("size") %></td>
                                    <td><%=resultSet.getString("barcode") %></td>
                                    <td><%=resultSet.getString("sales_price") %></td>
                                    <td><%=resultSet.getString("purchase_price") %></td>
                                    <td><%=resultSet.getString("quantity") %></td>
                                    <td>   
                                        <a href="stockUpdate.jsp?sid=<%=resultSet.getString("sid") %>"  > <i class="fa fa-edit"></i> </a>
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
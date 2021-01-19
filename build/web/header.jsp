
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
   session=request.getSession(false);
   
   
   if(session == null){
       response.sendRedirect("login.jsp");
   }
    
String id = request.getParameter("fname");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "apparel";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Master Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />


        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.min.css?v=<?echo time();?>" rel="stylesheet" type="text/css" />

        <!-- third party css -->
        <link href="assets/libs/datatables/dataTables.bootstrap4.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/datatables/responsive.bootstrap4.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/datatables/buttons.bootstrap4.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/datatables/select.bootstrap4.css" rel="stylesheet" type="text/css" />
        <!-- third party css end -->
        <style>
            #customer-list{
            float:left;
            list-style:none;
            margin-top:-3px;
            padding:0;
            width:97%;
            position: absolute;
            z-index:1;
        }
        #customer-list li{
            padding: 10px;
            background: #f0f0f0;
            border-bottom: #bbb9b9 1px solid;
        }
        #customer-list li:hover{
            background:#ece3d2;
            cursor: pointer;
        }
            </style>
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">
            <!-- Topbar Start -->
            <div class="navbar-custom">

                <!-- LOGO -->
                <div class="logo-box">
                    <a href="index.php" class="logo text-center">
                        <span class="logo-lg">

                            <h3>Cloth Factory</h3>
                        </span>
                    </a>
                </div>

                <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
                    <li>
                        <button class="button-menu-mobile disable-btn waves-effect">
                            <i class="fe-menu"></i>
                        </button>
                    </li>

                    <li>
                        <h4 class="page-title-main">Dashbord</h4>
                    </li>

                </ul>
            </div>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left-side-menu">

                <div class="slimscroll-menu">

                    <!-- User box -->
                    <div class="user-box text-center">
                        <!-- <img src="assets/images/users/user-1.jpg" alt="user-img" title="Mat Helme" class="rounded-circle img-thumbnail avatar-lg"> -->

                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a href="logout" class="text-custom">
                                    <i class="mdi mdi-power text-danger"></i>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">

                        <ul class="metismenu" id="side-menu">

                            <li class="menu-title">Navigation</li>

                            <li>
                                <a href="index.jsp">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Dashboard </span>
                                </a>
                            </li>

                            <li>
                                <a href="stockView.jsp">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Stocks </span>
                                </a>
                            </li>

                            <li>
                                <a href="vendorView.jsp">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Vendors </span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="customerView.jsp">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Customers </span>
                                </a>
                            </li>

                            

                        </ul>


                    </div>
                    <!-- End Sidebar -->

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
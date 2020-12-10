
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
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
            <? global $pageID; ?>
            <div class="left-side-menu">

                <div class="slimscroll-menu">

                    <!-- User box -->
                    <div class="user-box text-center">
                        <!-- <img src="assets/images/users/user-1.jpg" alt="user-img" title="Mat Helme" class="rounded-circle img-thumbnail avatar-lg"> -->

                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a href="login.jsp" class="text-custom">
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
                                    <span> Stock </span>
                                </a>
                            </li>

                            <li>
                                <a href="documentView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Documents </span>
                                </a>
                            </li>

                            <li>
                                <a href="studentView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Students </span>
                                </a>
                            </li>

                            <li>
                                <a href="logoView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Logo </span>
                                </a>
                            </li>





                            <li>
                                <a href="categoryview.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Events </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="categoryview.php">Category</a></li>
                                    <li><a href="productView.php">Events</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="galleryCatView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Gallery </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="galleryCatView.php"> Category </a></li>
                                    <li><a href="galleryView.php"> Gallery </a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="projectView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Portfolio </span>
                                </a>
                            </li>

                            <!-- <li>
                                            <a href="careerView.php">
                                                <i class="mdi mdi-view-dashboard"></i>
                                                <span> Career </span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <ul class="nav-second-level" aria-expanded="false">
                                                <li><a href="careerView.php">Career's</a></li>
                                                <li><a href="careerInfoView.php">Applicants</a></li>
                                            </ul>
                                        </li> -->



                            <li>
                                <a href="clientView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Presence </span>
                                </a>
                            </li>

                            <li>
                                <a href="blogView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Blog </span>
                                </a>
                            </li>


                            <li>
                                <a href="sliderView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Slider </span>
                                </a>
                            </li>

                            <li>
                                <a href="pageView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Information </span>
                                </a>
                            </li>

                            <li>
                                <a href="contactView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Contact </span>
                                </a>
                            </li>

                            <li>
                                <a href="faviconView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Favicon </span>
                                </a>
                            </li>

                            <li>
                                <a href="testimonialView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Testimonial </span>
                                </a>
                            </li>

                            <li>
                                <a href="teamView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Team </span>
                                </a>
                            </li>

                            <li>
                                <a href="socialView.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Socialmedia </span>
                                </a>
                            </li>

                            <!-- <li>
                                            <a href="newsletterView.php">
                                                <i class="mdi mdi-view-dashboard"></i>
                                                <span> Newsletter </span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <ul class="nav-second-level" aria-expanded="false">
                                                <li><a href="newsletterView.php">NewsLetters</a></li>
                                                <li><a href="newslettersubscriberView.php">Email</a></li>
                                            </ul>
                                        </li> -->

                            <li>
                                <a href="changepass.php">
                                    <i class="mdi mdi-view-dashboard"></i>
                                    <span> Change Password </span>
                                </a>
                            </li>

                            <li>
                                <a href="logout.php">
                                    <i class="fas fa-door-open"></i>
                                    <span> Log-out </span>
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
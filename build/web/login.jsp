<%-- 
    Document   : login
    Created on : 6 Dec, 2018, 11:21:20 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body >
        <div class="container " style="margin-top: 100px">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <form class="form-signin" action="dashboard" method="post">
                        <div class="text-center mb-4 ">
                            <h1 class="h3 mb-3 font-weight-normal">Admin loginn</h1>
                            <h2 class="h6 mb-3 font-weight-normal">Cloth factory</h2>
                        </div>

                        <div class="form-label-group">
                            <input name="username" type="text" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
                            <label for="inputEmail"> </label>
                        </div>

                        <div class="form-label-group">
                            <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                            
                        </div>
                        <br/>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                        <p class="mt-5 mb-3 text-muted text-center">&copy; 2020</p>
                    </form>
                </div>
            </div>

        </div>

        <div class="row" style="display: none">
            <div class="offset-md-4 col-md-4" style="margin-top: 15vh; border-radius: 25px; border: 2px solid;background-color: activecaption;">                                                
                <form class="form-group " action="dashboard" method="post">
                    <div class="title form-group">
                        <br>
                        <center><b><h1>Login</h1></b></center>
                    </div>                                                                                               
                    <div class="form-group">
                        <label>UserName</label>
                        <input type="text" name="username" class="form-control" style=" border-radius: 25px; " >
                    </div> 

                    <div class="form-group">
                        <label>Password</label>
                        <input type="password"  name="password" class="form-control" style=" border-radius: 25px; ">
                    </div>
                    <br>
                    <center>
                        <div style="width: 20vh;">
                            <input type="submit" value="LOGIN" class="form-control btn-danger" style=" border-radius: 25px; ">
                        </div>
                    </center>
                </form>
            </div>

        </div>
    </div>       
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>

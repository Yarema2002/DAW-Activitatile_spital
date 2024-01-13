<?php
session_start();


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard</title>
</head>
<body>
    <?php
    include("../include/header.php");
    ?>
<div class="container-fluid">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-2" style="margin-left: -30px;">
              <?php
               include("sidenav.php");
              
              ?>

            </div>
            <div class="col-md-10 ">
                <h4 class="my-2">Admin Dashboard</h4>
                <div class="col-md-12 my-1">
                    <div class="row">
                        <div class="col-md-3 bg-success mx-2" style="height: 130px;">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <h5 class="my-2 text-white" style="font-size: 30px;">0</h5>
                                            <h5 class="text-white">Total</h5>
                                            <h5 class="text-white">Admin</h5>
                                        </div>
                                        <div class="col-md-4">
                                            <a href="#"><i class="fa fa-lock fa-3x my-4" style="color: white"></i></a>
                                        </div>
                                    </div>
                                </div>
                        </div>

                        <div class="col-md-3 bg-info mx-2" style="height: 130px;">
                        <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <h5 class="my-2 text-white" style="font-size: 30px;">0</h5>
                                            <h5 class="text-white">Total</h5>
                                            <h5 class="text-white">Doctors</h5>
                                        </div>
                                        <div class="col-md-4">
                                            <a href="#"><i class="fa fa-lock fa-3x my-4" style="color: white"></i></a>
                                        </div>
                                    </div>
                                </div>
                        </div>

                        <div class="col-md-3 bg-warning mx-2" style="height: 130px;">
                        
                        </div>

                        <div class="col-md-3 bg-danger mx-2 my-2" style="height: 130px;">
                        
                        </div>

                        <div class="col-md-3 bg-warning mx-2 my-2" style="height: 130px;">
                        
                        </div>

                        <div class="col-md-3 bg-success mx-2 my-2" style="height: 130px;">
                        
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
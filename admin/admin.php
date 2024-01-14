<?php
session_start();


?>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Admin </title>
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
                    include("../include/connection.php");
                    ?>
                </div>
                <div class="col-md-10">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-6">
                                <h5 class="text-center">All Admin</h5>


                                <?php
                                    $ad = $_SESSION['admin'];
                                    $query = "SELECT * FROM admin WHERE username !='$ad'";
                                    $res = mysqli_query($connect,$query);
                                    $output = "
                                            <table class='table table-bordered'>
                                            <tr>
                                    <th>ID</th>
                                    <th>Username</th>
                                    <th style='width: 10%;'>Action</th>
                                    <tr>
                                    ";



                                    if(mysqli_num_rows($res) < 1) {
                                        $output .= "<tr><td colspan='3' 
                                        class='text-center'>No New Admin</td></tr>";

                                    }
                                    
                                    while($row = mysqli_fetch_array($res)) {
                                        $id = $row['id'];
                                        $username = $row['username'];

                                        $output .="
                                            <tr>
                                        <td>$id</td>
                                        <td>$username</td>
                                        <td>
                                            <button id='$id' class='btn btn-danger remove'>Remove</button>
                                        </td>
                                        ";
                                    }
                                    $output .="
                                        </tr>

                                        </table>
                                    ";

                                    echo $output;

                                ?>
                                
                                
                                    
                            </div>
                            <div class="col-md-6">
                                <?php
                                
                                if(isset($_POST['add'])) {

                                    $uname = $_POST['uname'];
                                    $pass = $_POST['pass'];
                                    $image =  $_FILES['img']['name'];

                                    $error = array();

                                    if(empty($uname)) {
                                        $error['u'] = "Enter Admin Username";
                                    }
                                }
                                
                                ?>

                                <h5 class="text-center">Add Admin</h5>
                                <form method="post" enctype="multipart/form-data">
                                    <div class="from-group">
                                        <label>Username</label>
                                        <input type="text" name="uname" class="form-control"
                                        autocomplete="off">

                                    </div>
                                    <div class="from-group">
                                        <label>Password</label>
                                        <input type="password" name="pass" class="form-control"
                                        >
                                    </div>
                                    <div class="from-group">
                                        <label>Add Admin Picture</label>
                                        <input type="file" name="img" class="form-control">

                                    </div><br>
                                    <input type="submit" name="add" value="Add New Admin" class="
                                    btn btn-success">
                                </form>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
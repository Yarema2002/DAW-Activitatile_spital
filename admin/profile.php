<?php
    session_start();


    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Profile</title>
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
                    
                    $ad = $_SESSION['admin'];
                    $query = "SELECT * from admin WHERE username=''";
                    $res = mysqli_query($connect,$query);

                    while($row = mysqli_fetch_array($res)) {

                        $username = $row['username'];
                        $profile = $row['profile'];
                    }
                    ?>
                </div>
                <div class="col-md-10">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-6">
                                
                                <h4><?php echo $username; ?> Profile</h4>
                                    <?php
                                        if(isset($_POST['update'])) {
                                            $profile = $_FILES['profile'];

                                            if(empty($Profile)) {

                                            } else {
                                                $query = "UPDATE admin SET profile='$profile' where username='$ad";
                                                $result = mysqli_query($connect,$query);
                                                if($result) {
                                                    move_uploaded_file($_FILES['profile']['tmp_name'],"img/$profile");
                                                }
                                            }
                                        }
                                    
                                    ?>
                                <form method="post" enctype="multipart/form-data">
                                <?php
                                echo "<img src='img/$profile' class='col-md-12';
                                style='height: 250px'>"
                                ?>
                                <br><br>
                                <div class="form-group">
                                    <label>Update PROFILE</label>
                                    <input type="file" name="profile" class="form-control">
                                </div>
                                <br>
                                <input type="submit" name="update" value="UPDATE" class = "btn btn-success">
                                </form>
                                <img src="">
                            </div>
                            <div class="col-md-6"></div>
                        </div>

                    </div>
                </div>
            </div>

        </div>

    </div>
</body>
</html>
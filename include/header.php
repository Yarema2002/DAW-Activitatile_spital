<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title> 
    <link rel ="stylesheet" type="text/css"
     href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.7.1.slim.js" 
     integrity="sha256-UgvvN8vBkgO0luPSUl2s8TIlOSYRoGFAX4jlCIm9Adc=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel ="stylesheet" type="text/css"
     href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js" 
    integrity="sha512-GWzVrcGlo0TxTRvz9ttioyYJ+Wwk9Ck0G81D+eO63BaqHaJ3YZX9wuqjwgfcV/MrB2PhaVX9DkYVhbFpStnqpQ==" 
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
    integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>     
<body>
    <nav class="navbar navbar-expand-lg navbar-info bg-info">
        <h5 class="text-white">Hospital Management System</h5>

        <div class="mr-auto"></div>

        <ul class="navbar-nav">
            <?php
                if(isset($_SESSION['admin'])) {
                   $user = $_SESSION['admin'];
                    echo '
            <li class="nav-item"><a href="#" class="nav-link text-white">'.$user.'</a>
            </li>
            <li class="nav-item"><a href="logout.php" class="nav-link text-white">logout</a>
            </li>
                    ';
                } else {
                    echo '
                    <li class="nav-item"><a href="adminlogin.php" class="nav-link text-white">Admin</a>
            </li>
            <li class="nav-item"><a href="#" class="nav-link text-white">Doctor</a>
            </li>
            <li class="nav-item"><a href="#" class="nav-link text-white">Pacient</a>
            </li>
                    ';
                }
            
            ?>
        </ul>
    </nav>
</body>
</html>
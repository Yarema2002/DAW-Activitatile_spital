<?php
// Start the session
session_start();

// Include config file
require_once "config.php";

// Include functions file
require_once "functions.php";

// Check if user is logged in, if not then redirect to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: login.php");
    exit;
}

// Define variables and initialize with empty values
// ...

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Hospital Management System</title>
    <!-- Link to CSS files -->
    <link rel="stylesheet" href="path/to/your/css">
</head>
<body>
    <div class="page-header">
        <h1>Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our site.</h1>
    </div>
    <p>
        <a href="reset-password.php" class="btn btn-warning">Reset Your Password</a>
        <a href="logout.php" class="btn btn-danger">Sign Out of Your Account</a>
    </p>
    <!-- Additional content like links to different modules -->
    <nav>
        <ul>
            <li><a href="patient_management.php">Patient Management</a></li>
            <li><a href="appointment_schedule.php">Appointment Scheduling</a></li>
            <li><a href="report_generation.php">Report Generation</a></li>
            <!-- Additional links as needed -->
        </ul>
    </nav>
    <!-- Include other contents like dashboard, statistics, etc. -->

</body>
</html>

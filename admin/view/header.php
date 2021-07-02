<?php
  session_start();
  include '../../common/connect.php';
  if (!isset($_SESSION['admin'])) {
    header('location: /dulich/admin/login.php');
  }
  else{
    $admin = $_SESSION['admin'];
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title>ADMIN</title>
  <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
  <link rel="stylesheet" href="../assets/css/all.css">
  <script type="text/javascript" src="../assets/js/bootstrap.js"></script>
  <script type="text/javascript" src="../assets/js/jquery.js"></script>
  <script type="text/javascript" src="../assets/js/style.js"></script>
</head>
<?php
  $select = (isset($select)) ? $select : 0;
?>
<body>
  <div class="bg-dark" id="menu">
    <div class="navbar navbar-light" id="logo"> <div class="navbar-brand float-right"  id="nav"><a href="#"><img id="user1" class="rounded-circle" width="30px" height="30px" src="../assets/images/<?php echo $admin['image']; ?>"></a></div><a  href="#"  ><b class="text-light">TOUR</b></a></div>
    <ul class="nav navbar-nav">
      <li class="nav-item">
        <h3 class="nav-link">Quản Lý</h3>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="toure.php" <?php if($select == 1) echo 'id = "select"';?>>Quản Lý TOURE</a>
      </li>
        <li class="nav-item">
            <a class="nav-link" href="datToure.php"<?php if($select == 3) echo 'id = "select"';?>>Quản Lý Đặt TOURE</a>
        </li>
      <li class="nav-item">
        <a class="nav-link" href="user.php"<?php if($select == 2) echo 'id = "select"';?>>Quản Lý Khách Hàng</a>
      </li>
    </ul>
  </div>
<div id='user'>
  <img class="rounded-circle" width="190px" height="200px" src="../assets/images/<?php echo $admin['image']; ?>">
  <br>
  <a href="../logout.php" class="btn btn-danger">Thoát</a>
</div>
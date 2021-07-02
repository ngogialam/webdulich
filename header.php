<?php
session_start();
ob_start();
include 'common/connect.php';
if (isset($_SESSION['user'])) {
    $users = $_SESSION['user'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/image/meta.jpg" type="image/x-icon">
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/script.js"></script>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/all.css">
    <title>Du lịch Việt Nam</title>
</head>
<body class="position-relative">
<div id="icon-left" class="position-absolute position-fixed">
    <ul>
        <li><a href="https://www.facebook.com/SamiHust/?__tn__=kC-R&eid=ARD7S44epw9Ig4OPykv5WJTbjLlGF6UyZ3m3AP7bV19WM8vAWNT6L6zo5gqCU5YStgv8B9wzWVoLhcce&hc_ref=ARSRERx0W-ic4YF3ZHp8F8pLSHw4HGljQ6zji4lAM5Zpsrdv5obUIuT4Tvt4VO0rLEA&fref=nf&__xts__[0]=68.ARCh8p4GDJOM3qBE8Ti2exZDW5z0SPwStz3WlPMzxxErAnUKnd-v-9U4IFrO1e_mErO3GAX9B5dlAVzJWGpdjyWixbcArNU1DiVocgMUH6utT4cyl03qMGKY3XFWrAkKiQ19Fc_b0j10fwZXdlPVlmpVrQ8ANKZ6KBnNVaaH-JAZCA8-sPvRbPIbWrzx7JhnwAA9mqPiH-OpOfCHudKwGwDBe9bBebrYzQB_cHJZAYOlxZQOjHp-J43JSfb22fqTrHv65eKkeze2qnYeEuTEm_McBSkUOVHbkyXpsUI8ZEOqqNp9aycWJnM5l-lV54e3zMrt4Tb-bSu46IlAexXZCEvMQwjt" target="_blank" id="icon-facebook"><i
                        class="fab fa-facebook-f"></i></a></li>
        <li><a href="https://www.youtube.com/watch?v=OafyYUnEc1E" target="_blank" id="icon-youtube"><i class="fab fa-youtube"></i></a></li>
        <li><a href="#" target="_blank" id="icon-messenger"><i class="fab fa-facebook-messenger"></i></a></li>
        <li><a href="#" target="_blank" id="icon-phone"><i class="fas fa-phone"></i></a></li>
    </ul>
</div>
<header>
    <nav class="navbar navbar-expand-lg navbar-light col-12 position-fixed p-0 pl-3 ">
        <a class="navbar-brand" href="/dulich"><img src="assets/image/logo3.png" alt=""></a>
         <p> Trang chủ </p>
        <div class="collapse navbar-collapse row" id="navbarSupportedContent">
            <div class="navbar-nav col-3 text-success">
                <marquee direction="left">Thỏa sức đi, khám phá với các địa điểm đẹp </marquee>
            </div>
            <form class="col-5" action="home">
                <div class="input-group border border-success search">
                    <input class="p-1 rounded form-control" type="search" name="search"
                           placeholder="Nhập tìm kiếm toure.....">
                    <button type="button" class="form-control col-2 bg-success" name="search_btn"><a href="" class="fas fa-search"></i></a></button>
                                                                                       </div>
            </form>
            <div class="col-3 text-center">
            </div>
            <div class="dropdown show">
                <?php
                if (isset($users['image'])) {
                    echo '<a class="btn btn-Success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="rounded-circle" width="35px" height="35px" src="assets/image/' . $users['image'] . '" ></a>';
                } else
                    echo '<div  class="float-right" id="login" ><a href="#"><img class="rounded-circle" width="35px" height="35px" src="assets/image/login.png" ></a></div>';
                ?>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="logout">Đăng xuất</a>
                    <a class="dropdown-item" href="user">Tour</a>
                </div>
            </div>
        </div>
    </nav>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner slide-h">
            <?php
            $getBanner = 'SELECT * FROM `banner` ';
            $banner = conn()->query($getBanner);
            while ($row = $banner->fetch_assoc()) {
                ?>
                <div class="carousel-item position-relative <?php if ($row['action'] != null) echo 'active'; ?>">
                    <img class="d-block w-100" src="assets/image/banner/<?php echo $row['image']; ?>">
                    <a href="#" class="btn btn-outline-danger position-absolute"
                       style="top: 50%; left: 10%"><h2><?php echo $row['name']; ?></h2></a>
                </div>
            <?php } ?>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div id="mien" class="row ">
        <div class="col-7 m-auto row">
            <div id="bac">
                <a href="mienbac">
                    <div><img src="assets/image/bac.jpg"><br> TOURE <br><b class="text-danger">MIỀN BẮC</b></div>
                </a>
            </div>
            <div id="trung">
                <a href="mientrung">
                    <div><img src="assets/image/trung.jpg"><br>TOURE <br><b class="text-warning">MIỀN TRUNG</b></div>
                </a>
            </div>
            <div id="nam">
                <a href="miennam">
                    <div><img src="assets/image/nam.jpg"><br>TOURE <br><b class="text-primary">MIỀN NAM</b></div>
                </a>
            </div>
        </div>
    </div>
    <div class="container">
        <div>
            <form action="get">
               
            </form>
        </div>
    </div>

</header>


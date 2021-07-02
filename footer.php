
<footer class="bg-secondary text-light mt-5">
    <div class="p-3">
        <a href="index.html" title=""><img src="assets/image/logo3.png"></a>
        <div class="container">
            <div class="row">
                <div class="col-md-3 ">
                    <h3>Vui lòng liên hệ </h3>
                </div>
                <div class="col-md-3 ">
                    <h3>0395606644</h3>
                </div>
                <div class="col-md-3">
                    <h4>100% secure payments</h4>
                    <img src="assets/image/card.png"/>
                </div>
                <div class="col-md-3">
                    <div id="footer-icon">
                        <h5>connect with us</h5>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="text-center bg-dark text-light">
        <p>Phản hồi mail : ngogialam 98@gmail.com      by  2020 - Ngô Gia Lâm 20162311</p>
    </div>

</footer>


<div id="form-log">
    <div id="close">
        <img src="assets/image/icon-close.png" alt="">
    </div>
    <a href="#" id="dn">Đăng nhập</a>/<a href="#" id="dk">Đăng Ký</a>
    <form method="post" class="" id="form-login">
        <input type="text" name="username" placeholder="Tên đăng nhập" required>
        <input type="password" name="pass" placeholder="Mật khẩu" required>
        <input type="submit" name="sbm" value="Đăng nhập">
        <input type="checkbox" name="remem"> Ghi nhớ
    </form>
    <form method="post" id="form-reg" enctype="multipart/form-data">
        <input type="text" name="name" placeholder="Tên " required>
        <input type="text" name="email" id="email" placeholder="email " onkeyup="checkemail()" required><span
                id="message1"></span>
        <input type="password" name="pw1" id="pw1" placeholder="Mật khẩu" onkeyup="check()" required>
        <div><input type="password" name="pw2" id="pw2" placeholder="Nhập lại mật khẩu" onkeyup="check()" required><b id="message"></b></div>
        <input type="text" name="address" placeholder="address">
        <input type="file" name="file1" id="file1" required>
        <input type="submit" name="dangky" value="Đăng Ký">
    </form>
</div>
<div id="overlay"></div>
<div id="scroll" class="">
    <a href="#" title=""><img src="assets/image/scroll.png" alt=""></a>
</div>
</body>
</html>
<?php
// login
if (isset($_POST['sbm'])) {
    ob_start();
    $email = $_POST['username'];
    $pw = md5($_POST['pass']);
    $sqlCheckPassWord = "SELECT * FROM users WHERE email = '$email' AND password = '$pw'";
    $query = conn()->query($sqlCheckPassWord);
    if ($query->num_rows) {
        $user = $query->fetch_assoc();
        $_SESSION['user'] = $user;
        header('location: index.php');
    }
}
//đăng ký nhé
if (isset($_POST['dangky'])) {
    if ($_FILES['file1']['error']>0) {
        echo '<script type="text/javascript">
				 	alert("file đã tồn tại");
				 </script>';
    }else{
        if (file_exists("admin/assets/images/".$_FILES['file1']['name'])) {
            echo '<script type="text/javascript">
				 	alert("Đã tồn tại file");
				 </script>';
        }else{
            move_uploaded_file($_FILES['file1']['tmp_name'], "assets/image/".$_FILES['file1']['name']);
            $image = $_FILES['file1']['name'];
            $name = $_POST['name'];
            $email = $_POST['email'];
            $pw = md5($_POST['pw1']);
            $address = $_POST['address'];
            $sql2 = "INSERT INTO `users` (`id`, `name`, `email`, `address`, `password` , `image`) VALUES (NULL, '$name', '$email', '$address','$pw', '$image')";
            conn() -> query($sql2);
            echo '<script type="text/javascript">
					$("#form-log").slideToggle("slow");
					$("#overlay").show();
				 </script>' ;
        }
    }
}

?>
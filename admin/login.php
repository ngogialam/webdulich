<?php 
	session_start();
	include '../common/connect.php';
	if (isset($_SESSION['admin'])){
	    header('location: index.php');
	 }
?>
<!DOCTYPE html>
<html>
<head>
	<title>login</title>
	<?php  if(isset($GET['err']) && $_GET['err']== "false") {?>
     <div style="text-align: center; color: orange; font-size: 30px;margin-bottom:10px; "> Lỗi tài khoản hoặc mật khẩu</div>
	<?php } ?>
</head>
<link rel="stylesheet" href="assets/css/login.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/css/all.css">
<body >
	<div class="body">
		<div id="login-font">
			<div ><img id="img" src="assets/images/user.jpg"></div>
			<div class="form">
				<form  method="post">
					<h2>Log in</h2>
					<div class="input">
						<i class="fas fa-user"></i>
						<input type="text" name="email" placeholder="Username"><br>
					</div>
					<div class="input">
						<i class="fas fa-lock"></i>
						<input type="password" name="pw" placeholder="password"><br>
					</div>
						<input class="btn" type="submit" name="sb" value = "Đăng Nhập">
				</form>
			</div>
		</div>
	</div>



	<?php 
		if (isset($_POST['sb'])) {
			if(!empty($_POST['email'])&&!empty($_POST['pw'])){
				$email = $_POST['email'];
				$pw = md5($_POST['pw']);
				$sql = "SELECT * FROM admin WHERE email = '$email' AND password = '$pw' ";
				$query = conn()->query($sql);
				if ($query->num_rows) {
					$admin = $query->fetch_assoc();
					$_SESSION['admin'] = $admin;
					header('location: index.php');
				}
			}
		}
	?>

</body>
</html>
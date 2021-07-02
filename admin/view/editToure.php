<?php 
	include 'header.php';
	$editid = $_GET['editid'];
	$sql1 ="SELECT * FROM `toure` WHERE id = $editid ";
	$query1 = conn()->query($sql1);
	$row1 = $query1 -> fetch_assoc();
	 
?>
<div id="product-right">
<h2>Sửa Toure</h2>
<form class="col-3" method="post" enctype="multipart/form-data">
	<fieldset class="form-group">
		<label for="formGroupExampleInput">Tên</label>
		<input type="text" name="name" class="form-control" id="formGroupExampleInput" value="<?php echo $row1['name']; ?>" >
	</fieldset>
	<fieldset class="form-group">
		<label for="formGroupExampleInput">Giá</label>
		<input type="text" name="price" class="form-control" id="formGroupExampleInput" value="<?php echo $row1['price']; ?>" >
	</fieldset>
	<fieldset class="form-group">
		<label for="formGroupExampleInput">Thời gian</label>
		<input type="text" name="time" class="form-control" id="formGroupExampleInput" value="<?php echo $row1['time']; ?>" >
	</fieldset>
	<fieldset class="form-group">
		<label for="formGroupExampleInput">Phương tiện</label>
		<input type="text" name="phuongtien" class="form-control" id="formGroupExampleInput" value="<?php echo $row1['phuongtien']; ?>" >
	</fieldset>
	<fieldset class="form-group">
		<label for="formGroupExampleInput">Khởi hành</label>
		<input type="date" name="start" class="form-control" id="formGroupExampleInput" value="<?php echo $row1['start']; ?>" >
	</fieldset>
	<fieldset class="form-group">
		<label for="formGroupExampleInput">Giới thiệu</label>
		<input type="text" name="content" rows="10" cols="30" value="<?php echo $row1['content']; ?>" >
	</fieldset>
	<fieldset class="form-group">
		<label for="formGroupExampleInput">image</label><br>
		<img width = "150px" height="150px" src="../dulich/assets/images/<?php echo $row1['image'] ?>">
		<input type="file" name="file" value="Thêm" >
	</fieldset>
	
	<br><br>
	<button type="submit" class="btn btn-primary" name="sbedit">sửa</button>
</form>
	<?php 
		if (isset($_POST['sbedit'])) {
				if ($_FILES["file"]["error"]==0){
					if (file_exists("../assets/image/".$_FILES['file']['name'])) {
						echo '<script type="text/javascript">
						 	alert("Đã tồn tại file");
						 </script>';
					}else{
						move_uploaded_file($_FILES['file']['tmp_name'], "../assets/image/toure/".$_FILES['file']['name']);
						echo $row1['image'];
						unlink("../assets/image/".$row1['image']);
						$sql2 = "UPDATE `toure` SET `image` = '$image',`name` = '$name',`price`='$price',`time`='$time',`phuongtien`='$phuongtien',`start`='$start',`content`='$content'  WHERE id = $editid";
						conn()->query($sql2);
						header('location: toure.php');
					}
				}
				else{
					$name = $_POST['name'];
                    $price = $_POST['price'];
                    $time = $_POST['time'];
                    $phuongtien = $_POST['phuongtien'];
                    $start=$_POST['start'];
					$content=$_POST['content'];
						$sql2 = "UPDATE `toure` SET `name` = '$name',`price`='$price',`time`='$time',`phuongtien`='$phuongtien',`start`='$start',`content`='$content' WHERE id = $editid";
						conn()->query($sql2);
						header('location: toure.php');
			}
		}

	 ?>

</div>
</body>
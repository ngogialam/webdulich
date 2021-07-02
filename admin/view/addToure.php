<?php 
	include 'header.php';
	 
?>
<div id="product-right">
    <h2>Thêm Toure du lịch</h2>
<form class="col-3" method="post" enctype="multipart/form-data">
	<fieldset class="form-group">
		<label for="formGroupExampleInput">Tên</label>
		<input type="text" name="name" class="form-control" id="formGroupExampleInput"  >
	</fieldset>
    
    <fieldset class="form-group">
		<label for="formGroupExampleInput">Giá</label>
		<input type="text" name="price" class="form-control" id="formGroupExampleInput"  >
    </fieldset>
    <fieldset class="form-group">
        <label for="formGroupExampleInput">Thời gian</label>
        <input type="text" name="time" class="form-control" id="formGroupExampleInput"  >
    </fieldset>
     <fieldset class="form-group">
        <label for="formGroupExampleInput">Phương tiện</label>
        <input type="text" name="phuongtien" class="form-control" id="formGroupExampleInput"  >
    </fieldset>
    <fieldset class="form-group">
		<label for="formGroupExampleInput">Giới Thiệu</label>
        <textarea name="content" rows="10" cols="30">
        </textarea>
    </fieldset>
    <fieldset class="form-group">
		<label for="formGroupExampleInput">Miền</label>
        <select name="mien" class="form-control">
            <option value="1">Bắc</option>
            <option value="2">Trung</option>
            <option value="3">Nam</option>
        </select>
    </fieldset>
    <fieldset class="form-group">
        <label for="formGroupExampleInput">Date</label>
        <input type="date" name="start" class="form-control" id="formGroupExampleInput"  >
    </fieldset>
    <fieldset class="form-group">
		<label for="formGroupExampleInput">Ảnh</label><br>
		<input type="file" name="file" value="Thêm" >
    </fieldset>
	<br><br>
	<button type="submit" class="btn btn-primary" name="sbedit">Thêm</button>
</form>
	<?php 
		if (isset($_POST['sbedit'])) {
            if ($_FILES["file"]["error"]>0) {
                echo '<script type="text/javascript">
                         alert("lỗi file");
                     </script>';
            }else{
                if (file_exists("../../assets/image/toure/".$_FILES['file']['name'])) {
                    echo '<script type="text/javascript">
                         alert("Đã tồn tại file");
                     </script>';
                }else{
                    move_uploaded_file($_FILES['file']['tmp_name'], "../../assets/image/toure/".$_FILES['file']['name']);
                    $image = $_FILES['file']['name'];
                    $name = $_POST['name'];
                    $price = $_POST['price'];
                    $content = $_POST['content'];
                    $mien = $_POST['mien'];
                    $time = $_POST['time'];
                    $phuongtien = $_POST['phuongtien'];
                    $start = $_POST['start'];
                    $sql = "INSERT INTO `toure` (`id`, `name`, `new_price`, `price`, `image`, `content`, `mien`,`time`,`phuongtien`, `start`) VALUES (NULL, '$name', NULL, '$price', '$image', '$content', '$mien','$time','$phuongtien','$start');";
                    conn()->query($sql);
                    echo '<script type="text/javascript">
                         alert("Thêm thành công");
                     </script>';
                }
            }
		}

		
	 ?> 

</div>
</body>
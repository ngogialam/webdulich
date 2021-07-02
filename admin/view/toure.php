<?php
    $select = 1;
   include 'header.php';
?>
<div id="product-right">
<div>
    <form class="form-inline m-3">
        <a href="addToure.php"><button type="button" class="btn btn-primary" >Thêm TOURE</button></a>
        <div class="form-group ml-5">
            <input type="text" class="form-control" name="search" id="exampleInputEmail2" placeholder="Nhập tìm kiếm" required>
        </div>
        <button type="submit" name="search-bt" class="btn btn-primary">search</button>
    </form>
</div>	

<table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>IMAGE</th>
            <th>TIME</th>
            <th>SỬA</th>
            <th>Xóa</th>
        </tr>
        </thead>
        <tbody>
        <?php
        if (isset($_GET['search-bt'])) {
            $keyword = $_GET['search'];
            $toureSql = "SELECT * FROM `toure` WHERE name LIKE '%$keyword%' ";
        }else{
            $toureSql = "SELECT * FROM `toure` WHERE 1";
        }

        $toures = conn()->query($toureSql);
        while($toure = $toures->fetch_assoc()){
            ?>
            <tr>
                <td scope="row"><?php echo $toure['id'];?></td>
                <td><?php echo $toure['name'];?></td>
                <td><img width="30px" height="45px" src="../../assets/image/toure/<?php echo $toure['image'];?>"></td>
                <td><?php echo $toure['start'];?></td>
                <td><a href="editToure.php?editid=<?php echo $toure['id'] ?>"><i class="fas fa-edit"></i></a></td>
                <td><a href="?deleteid=<?php echo $toure['id']; ?>" onclick="return confirm('bạn muốn xóa toure này')"><i style="color:red" class="fas fa-trash-alt"></i></a></td>
            </tr>
            <?php
        }
        ?>
        </tbody>
    </table>
</div>
</body>
<?php 
			if (isset($_GET['deleteid'])) {
				$deleteid = $_GET['deleteid'];
				$sql1 = "SELECT `image` FROM `customer` WHERE id = $deleteid";
				$query = conn()->query($sql1);
				$row = $query->fetch_assoc();
				unlink("../assets/images/".$user['image']);
				$sql = "DELETE FROM `customer` WHERE id=$deleteid";
				conn() -> query($sql);
				header('location: toure.php');
			}
		?>	
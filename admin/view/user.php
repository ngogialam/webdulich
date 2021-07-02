<?php
    $select =2;
   include 'header.php';
?>
<div id="product-right">
<div>
    <form class="form-inline m-3">
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
            <th>SỬA</th>
            <th>Xóa</th>
        </tr>
    </thead>
    <tbody>
    <?php
    if (isset($_GET['search-bt'])) {
        $keyword = $_GET['search'];
        $sql = "SELECT * FROM `users` WHERE name LIKE '%$keyword%'";
    }else{
        $sql = "SELECT * FROM `users` WHERE 1";
    }

    $query = conn()->query($sql);
    while($user=$query->fetch_assoc()){
    ?>
        <tr>
            <td scope="row"><?php echo $user['id'];?></td>
            <td><?php echo $user['email'];?></td>
            <td><img width="30px" height="30px" src="../assets/images/<?php echo $user['image'];?>"></td>
            <td><a href="editToure.php?editid=<?php echo $user['id'] ?>"><i class="fas fa-edit"></i></a></td>
            <td><a href="?deleteid=<?php echo $user['id']; ?>" onclick="return confirm('bạn muốn xóa')"><i style="color:red" class="fas fa-trash-alt"></i></a></td>
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
				unlink("../assets/image/".$user['image']);
				$sql = "DELETE FROM `users` WHERE id=$deleteid";
				conn() -> query($sql);
				header('location: toure.php');
			}
		?>	
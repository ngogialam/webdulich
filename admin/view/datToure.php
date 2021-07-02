<?php
$select = 3;
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
            <th>USER NAME</th>
            <th>TUORE NAME</th>
            <th>DUYỆT</th>
        </tr>
        </thead>
        <tbody>
        <?php
        if (isset($_GET['search-bt'])) {
            $keyword = $_GET['search'];
            $toureSql = "SELECT * FROM `dat_toure` WHERE user_name LIKE '%$keyword%' or toure_name LIKE '%$keyword%'";
        }else{
            $toureSql = "SELECT * FROM `dat_toure` WHERE 1";
        }

        $toures = conn()->query($toureSql);
        while($toure = $toures->fetch_assoc()){
            ?>
            <tr>
                <td scope="row"><?php echo $toure['id'];?></td>
                <td><?php echo $toure['user_name'];?></td>
                <td><?php echo $toure['toure_name'];?></td>
                <td>
                    <?php
                         if($toure['type']==1) echo '<span style="color:darkgreen">Đã duyệt</span>';
                         else echo '<a href="duyetToure.php?idsend='.$toure['id'].'"  class="btn btn-danger">Duyệt</a>';
                    ?>
                </td>
            </tr>
            <?php
        }
        ?>
        </tbody>
    </table>
</div>
</body>
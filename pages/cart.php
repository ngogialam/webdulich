<div class="container mt-2">
    <div class="text-center">
        <h2 class="text-success">Xin Chào <?php echo $_SESSION['user']['name']; ?> </h2>
    </div>
    <div class="row">
        <h4 class="text-primary">Đặt Toure</h4>
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>Thời gian</th>
                <th>Số người</th>
                <th>Đặt</th>
            </tr>
            </thead>
            <form method="post">
                <tbody>
                <?php
                if(isset($_GET['id'])) {
                    $name = $_SESSION['user'];
                    $toureID = $_GET['id'];
                    $toureSql = "SELECT * FROM toure WHERE id = $toureID";
                    $toures = conn()->query($toureSql);
                    $toure = $toures->fetch_assoc();
                    $toureName = $toure['name'];
                        ?>
                        <tr>
                            <td scope="row"><?php echo $toure['id']; ?></td>
                            <td><?php echo $toureName; ?></td>
                            <td><?php echo $toure['start']; ?></td>
                            <td><input type="text" name="amount" id="amount"></td>
                            <td>
                                <input type="submit" class="btn btn-sm btn-primary" name="submit" value="Đặt Toure">
                            </td>
                        </tr>
                        <?php
                }
                ?>
                </tbody>
            </form>
        </table>
    </div>
</div>
<?php
    if (isset($_POST['submit'])){
        $amount = $_POST['amount']!='' ? $_POST['amount'] : 0;
        $cart  = "INSERT INTO `dat_toure` (`id`, `user_name`, `toure_name`, `amount`, `type`) VALUES (NULL,     '$name', '$toureName', '$amount', '0')";
        

        if(conn()->query($cart)) {
            echo '<script type="text/javascript">
                         alert("Đặt toure thành công và đang được chờ duyệt");
                  </script>';
            header('Location: /dulich/user');
        }
    }
?>
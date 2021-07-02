<div class="container mt-2">
    <div class="text-center">
        <h2 class="text-success">Xin Chào <?php echo $_SESSION['user']['name']; ?> </h2>
    </div>
    <div class="row">
        <h4 class="text-primary">Các Toure đã đặt</h4>
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>TIME</th>
                <th>AMOUNT</th>
                <th>DUYỆT</th>
            </tr>
            </thead>
            <tbody>
            <?php
            $name = $_SESSION['user']['name'];
            $toureSql = "SELECT * FROM toure,dat_toure WHERE dat_toure.user_name = '$name' AND dat_toure.toure_name = toure.name";
            $toures = conn()->query($toureSql);
            while ($toure = $toures->fetch_assoc()) {
                ?>
                <tr>
                    <td scope="row"><?php echo $toure['id']; ?></td>
                    <td><?php echo $toure['name']; ?></td>
                    <td><?php echo $toure['start']; ?></td>
                    <td><?php echo $toure['amount']; ?> Người</td>
                    <td>
                        <?php
                        if ($toure['type'] == 1) echo '<span style="color:darkgreen">Đã duyệt</span>';
                        else echo '<span class="text-danger">Chờ Duyệt</span>';
                        ?>
                    </td>
                </tr>
                <?php
            }
            ?>
            </tbody>
        </table>
    </div>
</div>
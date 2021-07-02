<div class="container mt-2">
    <div class="text-center" style="margin-top: 30px;">
        <h2  class="text-danger">Miền Bắc Khởi Nguồn Văn Hóa</h2>
    </div>
    <div class="row">
        <?php
        $getToure = 'SELECT * FROM `toure` where mien = 1 ';
        $toure = conn()->query($getToure);
        while ($row = $toure->fetch_assoc()) {
            ?>
            <div class="col-6 mt-5 row">
            <a href="chitiettour?id=<?php echo $row['id'];?>"><div class="col-6 tour" style="background-image: url('assets/image/toure/<?php echo $row["image"]?>'); width: 390px; height: 300px; max-width: 100%; border: solid 2px  #0d44f4;">
            </div></a>
            <div style="height: 320px; width: 400px; -webkit-box-flex: 0">
                <div class="" style="height: 320px">
                    <a href="chitiettour?id=<?php echo $row['id'];?>"><h3 style="margin: 15px 0 15px 70px; color: blue;"><?php echo $row['name'];?></h3></a>
                    <p class="text-danger" style="margin-bottom: 5px;"><?php echo $row['price'];?>vnđ</p>
                    <div style="height: 50%">
                        <b>Khởi Hành:  </b><?php echo $row['start']?><br>
                        <b>Thời gian:  </b><?php echo $row['time']?><br>
                        <b>Phương tiện:  </b><?php echo $row['phuongtien']?><br>
                        <span class=""><b>Giới Thiệu: </b><?php echo $row['content'];?></span>
                    </div>
                    <div style="height:30%; padding-top: 0px;">
                        <a  style="margin: 20px 0 0 100px;"href="cart?id=<?php echo $row['id'];?>" class="bg-info text-light btn btn-danger">
                        </style>Đặt Tour</a>
                        <a  style="margin: 20px 0 0 10px;"href="chitiettour?id=<?php echo $row['id'];?>" class="bg-info text-light btn btn-danger">
                        </style>Mô tả</a>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>
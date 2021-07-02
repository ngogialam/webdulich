

<div class="container mt-1">
    <div class="text-center" style="margin-top: 30px;">
        <h2 class="text-success">Việt Nam điểm đến lí tưởng</h2>
    </div>
        <?php 
        if(isset($_GET['id'])){
            $id = $_GET['id'];
            $getToure = "SELECT * FROM `toure` where id = '$id'";
        }
        $toure = conn()->query($getToure);
        while ($row = $toure->fetch_assoc()) {
        ?>
    <div class="row">
        <div class="col-5 mt-5 row">
            <a href=""><div class="col-5 tour" style="background-image: url('assets/image/toure/<?php echo $row["image"]?>'); width: 400px; height: 300px; max-width: 100%; border: solid 2px  #0d44f4;">
            </div></a>
        </div>
        <div class="col-7 mt-5 row">
            <div >
                <div class="">
                    <a href="chitiettour"><h1 style="margin: 15px 0 15px 70px; color: blue;"><?php echo $row['name'];?></h1></a>
                    <h3  style="margin: 10px 0 10px 30px; color: red; "><?php echo $row['price'];?>vnđ</h3>
                    <div style="font-size: 22px;">
                        <strong>Khởi Hành:  </strong><?php echo $row['start']?><br/>
                        <strong>Thời gian:  </strong><?php echo $row['time']?><br/>
                        <strong>Phương tiện:  </strong><?php echo $row['phuongtien']?><br/>
                    </div>
                    <div style="height:40%; padding-top: 0px; margin-top: 20px;">
                        <a  style="margin-left: 200px;"href="cart?id=<?php echo $row['id'];?>" class="bg-info text-light btn btn-danger">
                        Đặt Tour</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 row" style="background-color: #00608c; color: white; padding:5px 0 5px 45%; margin-top: 20px;">
           <h3>MÔ TẢ</h3>
        </div>
        <br>
        <br>
        <br>
           <div class="col-12">
               <h1 style="color: green;padding-left: 35%;padding-top: 20px;"><?php echo $row['name']; ?></h1><br><br><br>

           </div>
           <div class="col-12" style="text-align: center; color: blue;">
             <span><b><p><?php echo $row['content']; ?></p></b></span>
           </div>
           <div class="col-12">
               <p><?php echo $row['info']; ?></p>
               <div class="col-10 tour" style="background-image: url('assets/image/toure/<?php echo $row["anh1"]?>'); width: 700px; height: 400px; max-width: 100%; border: solid 1px  black;margin-left: 150px">
               </div><br><br>
           </div>
           <div class="col-12">
               <p><?php echo $row['info1']; ?></p>
               <div class="col-10 tour" style="background-image: url('assets/image/toure/<?php echo $row["anh2"]?>'); width: 700px; height: 400px; max-width: 100%; border: solid 1px  black;margin-left: 150px">
              </div><br><br>
           </div>
           <div class="col-12">
               <p><?php echo $row['info2']; ?></p>
           </div>
           <div class="col-12" ">
             <strong> Kết thúc chuyến đi!!!</strong><br><br>
             <span style="color: red;text-align: center;"><p>Cảm ơn quý khách!</p></span>
           </div>

        </div>
        <?php } ?>
    </div>
</div>
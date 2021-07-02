<?php 
  session_start();
  include '../../common/connect.php';
  if (!isset($_SESSION['admin'])) {
    header('location: /admin/login.php');
  }
?>
<?php
    if(isset($_GET['idsend'])){
        $idsend = $_GET['idsend'];
        $sql2 = "UPDATE `dat_toure` SET `type`='1' WHERE id = $idsend";
		conn()->query($sql2);
    }
        header('location: datToure.php');

?>
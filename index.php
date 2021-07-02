<?php include 'header.php'; ?>
<?php
$page = isset($_GET['pages']) ? $_GET['pages'] : 'home';
include 'pages/' . $page . '.php';
?>
<?php
include 'footer.php';
?>
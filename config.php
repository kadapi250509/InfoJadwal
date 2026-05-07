<?php
$host = "sql104.infinityfree.com";
$user = "if0_41851968";
$pass = "Sekolah123"; 
$db   = "if0_41851968_db_InfoJadwalfinal";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>
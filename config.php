<?php
// Pengaturan Koneksi Database InfinityFree
$host = "sql110.infinityfree.com";
$user = "if0_41851573";
$pass = "InfoJadwal07"; // Isi dengan password yang kamu buat tadi
$db   = "if0_41851573_db_Infojadwal";

$conn = mysqli_connect($host, $user, $pass, $db);

// Cek Koneksi
if (!$conn) {
    die("Koneksi ke database gagal: " . mysqli_connect_error());
}
?>
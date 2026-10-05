<?php
// Konfigurasi database untuk praktikum lokal XAMPP.
$host = '127.0.0.1'; // Ganti 'localhost' menjadi '127.0.0.1' agar lebih stabil
$user = 'root';
$password = ''; // Kosongkan jika belum set password di XAMPP
$database = 'telkom_profile';

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

try {
    $conn = new mysqli($host, $user, $password, $database);
    $conn->set_charset('utf8mb4');
} catch (mysqli_sql_exception $e) {
    // Tampilkan error aslinya agar kelihatan penyebab persisnya
    exit('Koneksi database gagal: ' . $e->getMessage());
}
?>
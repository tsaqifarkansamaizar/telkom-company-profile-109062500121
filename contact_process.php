<?php
require_once 'config/database.php';
require_once 'includes/functions.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Sanitasi input menggunakan fungsi dari includes/functions.php
    $nama    = sanitize($_POST['name'] ?? '');
    $email   = sanitize($_POST['email'] ?? '');
    $subjek  = sanitize($_POST['subject'] ?? '');
    $pesan   = sanitize($_POST['message'] ?? '');

    if (!empty($nama) && !empty($email) && !empty($pesan)) {
        // Menggunakan Prepared Statement untuk mencegah SQL Injection
        $stmt = $conn->prepare("INSERT INTO pesan_kontak (nama, email, subjek, pesan) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $nama, $email, $subjek, $pesan);

        if ($stmt->execute()) {
            header("Location: contact.php?status=success");
            exit();
        } else {
            header("Location: contact.php?status=error");
            exit();
        }
    } else {
        header("Location: contact.php?status=empty");
        exit();
    }
}
?>
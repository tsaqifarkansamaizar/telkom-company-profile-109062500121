<?php
require_once 'config/database.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nama  = trim($_POST['nama'] ?? '');
    $email = trim($_POST['email'] ?? '');
    $pesan = trim($_POST['pesan'] ?? '');

    if ($nama !== '' && $pesan !== '' && filter_var($email, FILTER_VALIDATE_EMAIL)) {
        try {
            $stmt = $conn->prepare('INSERT INTO pesan (nama, email, pesan) VALUES (?, ?, ?)');
            $stmt->bind_param('sss', $nama, $email, $pesan);
            $stmt->execute();
            header('Location: contact.php?status=success');
            exit();
        } catch (mysqli_sql_exception $e) {
            header('Location: contact.php?status=error');
            exit();
        }
    }

    header('Location: contact.php?status=empty');
    exit();
}

header('Location: contact.php');
exit();
?>
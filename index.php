<?php
$pageTitle = 'Beranda - Telkom University';
require 'includes/header.php';
?>
<section class="hero">
    <div class="container hero-content">
        <h1>Selamat Datang di Portal Utama Telkom University</h1>
        <p>Proyek ini dibuat untuk mempraktikkan alur kerja pengembangan web berbasis PHP Native dan version control menggunakan Git.</p>
        <div class="hero-actions">
            <a href="programs.php" class="btn btn-primary">Lihat Program Studi</a>
            <a href="contact.php" class="btn btn-secondary">Hubungi Kami</a>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <h2>Informasi Proyek</h2>
        <div class="grid grid-3">
            <div class="card">
                <h3>PHP & MySQL</h3>
                <p>Menggunakan struktur modular PHP dan integrasi basis data relational.</p>
            </div>
            <div class="card">
                <h3>Git Workflow</h3>
                <p>Menerapkan commit, branching, merge, serta penanganan konflik secara terstruktur.</p>
            </div>
            <div class="card">
                <h3>UI Sederhana</h3>
                <p>Tampilan yang bersih dan responsif menggunakan CSS murni tanpa framework external.</p>
            </div>
        </div>
    </div>
</section>
<?php require 'includes/footer.php'; ?>
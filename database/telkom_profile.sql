-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2026 at 09:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telkom_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(180) NOT NULL,
  `ringkasan` varchar(300) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_publish` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `ringkasan`, `isi`, `tanggal_publish`, `created_at`) VALUES
(1, 'Workshop Git untuk Mahasiswa', 'Mahasiswa mempraktikkan version control melalui proyek web terpadu.', 'Kegiatan workshop membahas repository lokal, staging, commit, branch, merge, remote, push, pull, dan kolaborasi dasar melalui GitHub.', '2026-09-20', '2026-10-03 18:22:23'),
(2, 'Praktikum Web Dinamis', 'Pembelajaran mengintegrasikan PHP native dan basis data.', 'Mahasiswa membangun halaman program studi, berita, dan kontak berbasis PHP native serta MySQL/MariaDB.', '2026-09-18', '2026-10-03 18:22:23'),
(3, 'Simulasi Kolaborasi Developer', 'Mahasiswa mempraktikkan branch dan penyelesaian conflict.', 'Simulasi dilakukan dengan dua folder kerja yang mewakili dua perangkat agar alur push dan pull lebih mudah dipahami.', '2026-09-15', '2026-10-03 18:22:23'),
(4, 'Workshop Git untuk Mahasiswa', 'Mahasiswa mempraktikkan version control melalui proyek web terpadu.', 'Kegiatan workshop membahas repository lokal, staging, commit, branch, merge, remote, push, pull, dan kolaborasi dasar melalui GitHub.', '2026-09-20', '2026-10-05 05:00:19'),
(5, 'Praktikum Web Dinamis', 'Pembelajaran mengintegrasikan PHP native dan basis data.', 'Mahasiswa membangun halaman program studi, berita, dan kontak berbasis PHP native serta MySQL/MariaDB.', '2026-09-18', '2026-10-05 05:00:19'),
(6, 'Simulasi Kolaborasi Developer', 'Mahasiswa mempraktikkan branch dan penyelesaian conflict.', 'Simulasi dilakukan dengan dua folder kerja yang mewakili dua perangkat agar alur push dan pull lebih mudah dipahami.', '2026-09-15', '2026-10-05 05:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(120) NOT NULL,
  `jenjang` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`id`, `nama`, `jenjang`, `deskripsi`, `created_at`) VALUES
(1, 'Sistem Informasi', 'S1', 'Mempelajari integrasi proses bisnis, data, manusia, dan teknologi informasi.', '2026-10-03 18:22:23'),
(2, 'Informatika', 'S1', 'Mempelajari pengembangan perangkat lunak, komputasi, dan kecerdasan buatan.', '2026-10-03 18:22:23'),
(3, 'Teknik Telekomunikasi', 'S1', 'Mempelajari jaringan, komunikasi digital, dan teknologi telekomunikasi.', '2026-10-03 18:22:23'),
(4, 'Bisnis Digital', 'S1', 'Mempelajari strategi bisnis yang memanfaatkan teknologi dan data digital.', '2026-10-03 18:22:23'),
(5, 'Sistem Informasi', 'S1', 'Mempelajari integrasi proses bisnis, data, manusia, dan teknologi informasi.', '2026-10-05 05:00:19'),
(6, 'Informatika', 'S1', 'Mempelajari pengembangan perangkat lunak, komputasi, dan kecerdasan buatan.', '2026-10-05 05:00:19'),
(7, 'Teknik Telekomunikasi', 'S1', 'Mempelajari jaringan, komunikasi digital, dan teknologi telekomunikasi.', '2026-10-05 05:00:19'),
(8, 'Bisnis Digital', 'S1', 'Mempelajari strategi bisnis yang memanfaatkan teknologi dan data digital.', '2026-10-05 05:00:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

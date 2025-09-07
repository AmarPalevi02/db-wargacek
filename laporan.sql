-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2025 at 12:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wargacek`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` varchar(191) NOT NULL,
  `jenisKerusakanId` varchar(191) NOT NULL,
  `foto_url` varchar(191) NOT NULL,
  `waktu_laporan` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `userId` varchar(191) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `deskripsi` varchar(191) NOT NULL,
  `location` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `jenisKerusakanId`, `foto_url`, `waktu_laporan`, `userId`, `latitude`, `longitude`, `deskripsi`, `location`) VALUES
('12e8adf8-7dcb-4296-bef2-017de65dc9b2', 'ffd9886b-ced2-4484-a4be-dbcd9ac4992d', '/uploads/17811945_jalanrusak.jpeg', '2025-09-01 10:18:25.551', 'ea415e8f-f0c8-4e60-9b01-e8e76242fea2', -7.30900638054224, 112.7705812454224, 'harap hati ada penutupan jalan, dan banyak jalan yang rusak', 'nginden baru II'),
('188ecad0-c5b8-4a93-a454-e63d4bdf2caf', 'ffd9886b-ced2-4484-a4be-dbcd9ac4992d', '/uploads/4361879_jalanrusak.jpeg', '2025-09-04 12:56:33.929', 'ea415e8f-f0c8-4e60-9b01-e8e76242fea2', -7.307238087915338, 112.7641189097267, 'Jalan berlubang besar di dekat persimpangan, sangat berbahaya untuk pengendara', 'jl. nginden baru II'),
('91ed20d5-504d-4436-afc9-5ef1da56beee', '426f12f8-299a-4a2c-afcf-4b633d1c6488', '/uploads/68093315_penutupanjalan.jpeg', '2025-09-01 10:19:44.258', 'ea415e8f-f0c8-4e60-9b01-e8e76242fea2', -7.306856760365731, 112.7627921104431, 'penutupan jalann karena kegiatan resepsi agusgustusan warga', 'nginden baru II'),
('c1ceb329-9cc2-4805-89f3-ff8b94385025', '426f12f8-299a-4a2c-afcf-4b633d1c6488', '/uploads/5621846_penutupanjalan.jpeg', '2025-08-30 02:09:51.332', '9df85921-2964-4de8-b04c-63e1c5c8833d', -7.300336893772477, 112.7670335760922, 'penutupan jalan kegiatan warga 17 agustus', 'jl. nginden baru II');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Laporan_userId_fkey` (`userId`),
  ADD KEY `Laporan_jenisKerusakanId_fkey` (`jenisKerusakanId`),
  ADD KEY `idx_lat_lng` (`latitude`,`longitude`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `Laporan_jenisKerusakanId_fkey` FOREIGN KEY (`jenisKerusakanId`) REFERENCES `jeniskerusakan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Laporan_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

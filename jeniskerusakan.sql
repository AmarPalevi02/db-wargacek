-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2025 at 12:24 PM
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
-- Table structure for table `jeniskerusakan`
--

CREATE TABLE `jeniskerusakan` (
  `id` varchar(191) NOT NULL,
  `jenis_kerusakan` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jeniskerusakan`
--

INSERT INTO `jeniskerusakan` (`id`, `jenis_kerusakan`) VALUES
('426f12f8-299a-4a2c-afcf-4b633d1c6488', 'Penutupan jalan'),
('ffd9886b-ced2-4484-a4be-dbcd9ac4992d', 'Jalan Berlubang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jeniskerusakan`
--
ALTER TABLE `jeniskerusakan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

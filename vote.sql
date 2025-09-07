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
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `laporanId` varchar(191) NOT NULL,
  `type` enum('LIKE','DISLIKE') NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `userId`, `laporanId`, `type`, `createdAt`) VALUES
('3d3ecda1-5da6-407a-b211-e648c8c084a2', '9df85921-2964-4de8-b04c-63e1c5c8833d', 'c1ceb329-9cc2-4805-89f3-ff8b94385025', 'LIKE', '2025-09-02 09:24:23.164'),
('669f353f-4ed4-4d6e-836a-aba6b91a3cda', 'ea415e8f-f0c8-4e60-9b01-e8e76242fea2', '12e8adf8-7dcb-4296-bef2-017de65dc9b2', 'LIKE', '2025-09-03 03:29:32.327'),
('6869e1ee-26c7-4642-9a72-fe27b93f24f2', '9df85921-2964-4de8-b04c-63e1c5c8833d', '91ed20d5-504d-4436-afc9-5ef1da56beee', 'LIKE', '2025-09-03 03:58:57.267'),
('6ec8d4e6-0f71-4241-9144-2fc63ae04b07', 'ea415e8f-f0c8-4e60-9b01-e8e76242fea2', 'c1ceb329-9cc2-4805-89f3-ff8b94385025', 'DISLIKE', '2025-09-03 03:44:57.289'),
('94c72e38-b46d-40bb-8fdb-38ea37e0f387', 'ea415e8f-f0c8-4e60-9b01-e8e76242fea2', '91ed20d5-504d-4436-afc9-5ef1da56beee', 'DISLIKE', '2025-09-03 03:50:50.690'),
('ab970891-dd4a-44e3-9f16-99e8cde51d96', '9df85921-2964-4de8-b04c-63e1c5c8833d', '12e8adf8-7dcb-4296-bef2-017de65dc9b2', 'LIKE', '2025-09-02 09:24:32.697');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Vote_userId_laporanId_key` (`userId`,`laporanId`),
  ADD KEY `Vote_laporanId_fkey` (`laporanId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `Vote_laporanId_fkey` FOREIGN KEY (`laporanId`) REFERENCES `laporan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Vote_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

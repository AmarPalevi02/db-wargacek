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
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('22a4968c-c245-4408-a589-757e5ae94d13', '1377eb358dafe7d7fb79081625da43ab9c8a484607182c06c5a621dbd079fbc3', '2025-08-07 06:46:54.152', '20250807064654_edit_table_laporan_deskripsi', NULL, NULL, '2025-08-07 06:46:54.127', 1),
('3d7fc148-0c4b-4313-83cc-12b31dfa4996', '7686cdabb933dd282065f3d445ad98669487c5ff3803c9623645e8b3ad5080b1', '2025-09-02 07:39:59.648', '20250902073959_add_model_vote', NULL, NULL, '2025-09-02 07:39:59.329', 1),
('6de3244d-76b2-4060-8620-8bf885fd5a30', '523a40451df26b95ac7b41de82e3ee7981d569aaf0e3972c54140afa935a15e3', '2025-07-10 18:51:26.107', '20250710185125_make_tabel_user', NULL, NULL, '2025-07-10 18:51:26.011', 1),
('7be7ca6a-07cf-482b-a157-b860f4384613', '491841684848f4bd07c4312fa03d844a67ccca95d7a1ef0ffc7ebe14b80ee45a', '2025-08-07 03:27:20.995', '20250807032720_edit_table_laporan', NULL, NULL, '2025-08-07 03:27:20.884', 1),
('83c8f887-7424-4a1c-978b-e66c40a33b86', '0207599d09392245fac114dd4c7da1917709a50d2890bc1b68a5300d34eecb78', '2025-08-30 02:00:57.736', '20250830020057_add_location', NULL, NULL, '2025-08-30 02:00:57.617', 1),
('c9cb9a32-2a49-4328-8a3a-18e87fc9cc93', 'd9f93d1e8e69f0ab2f1b04ff0154296ab2fa1b0df0aa877423cae3eb3c550b85', '2025-08-30 02:05:47.006', '20250830020546_edit_location', NULL, NULL, '2025-08-30 02:05:46.868', 1),
('d11efc86-b295-40ce-9ffe-6f68229bdbec', '0df8cadb633dc2161446d67adbdd69bbf0ffce34b60e381c782966bb6e240fe9', '2025-08-12 14:06:22.891', '20250812140622_add_lat_lng_index', NULL, NULL, '2025-08-12 14:06:22.802', 1),
('ef048c68-4a8c-476d-a9dd-00e075d623ef', '7cf2e90168feff94b61f425eef1afaa2ee36dc74f07f072056c033265293e0ac', '2025-07-27 17:18:34.718', '20250727171833_tabel_model_laporan', NULL, NULL, '2025-07-27 17:18:34.100', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

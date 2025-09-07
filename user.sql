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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `createdAt`) VALUES
('190fa86d-570f-4276-a991-ef6952d06d13', 'jhon', 'jhon123@gmail.com', '$2b$10$QlBxQ0K0WTsx0OAnVK/c/edOCGrCkZ3zVz4zTdk3VlCZFLMJ8fr.G', 'USER', '2025-07-11 21:57:18.427'),
('3b5b7e5e-baf9-4d9d-8e34-4e52fd6c524e', 'amarpalevi', 'amar@example.com', '$2a$10$8RRY3LlgcYHisUbiMgz6EuI5b67s3YDmS8B7/xRmAtUFPWGUNk7CW', 'USER', '2025-07-11 02:21:24.000'),
('56da92f1-ecd8-46bc-be2d-e6ef5162d719', 'jhon', 'jhon20@gmail.com', '$2b$10$jrmz9G7PYIzEoYvWRJT7q.t4GGCLmMi3tTiFwCm/kLmPClj7z6Y56', 'USER', '2025-07-13 15:33:54.242'),
('76af63a7-643a-4ee2-93a3-9d00bf1c0fe2', 'amar', 'amarpalevi@gmail.com', '$2b$10$LhQ0SCVC2LdMh36O5IoIEultFWDGcjVi1sXvOIP3y9u1Xljav01h2', 'USER', '2025-07-27 13:36:09.387'),
('9df85921-2964-4de8-b04c-63e1c5c8833d', 'marzkyy', 'amarpalevi82@gmail.com', '$2b$10$iNNKAgXYGQoNj1gjJUfMuOYBhrd8D3IHSzUdtkCnR4tFf6wNejnqW', 'USER', '2025-07-13 15:44:34.091'),
('c36c3082-6b12-11f0-80db-54e1ad3909bc', 'Amar', 'adminamar@gmail.com', '$2a$12$ukiO1h2w11xqdsZRQoF1w.osvxqxRNOt3M7cz9Yp8XvT16AuXdGPa', 'ADMIN', '2025-07-28 00:54:38.000'),
('ea415e8f-f0c8-4e60-9b01-e8e76242fea2', 'gilang', 'gilang@gmail.com', '$2b$10$Psk2d/lcahpWRfGXyaP0D.929.s33/80kKeSL7B7skXZ6bfbm1JDC', 'USER', '2025-07-21 02:41:28.064');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

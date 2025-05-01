-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 10:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `leave_date` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_application`
--

INSERT INTO `leave_application` (`id`, `subject`, `message`, `user_id`, `leave_date`, `status`) VALUES
(18, 'english', 'english book', 3, '2025-03-12', ''),
(19, 'math', 'math book', 3, '2025-03-20', 'Rejected'),
(20, 'pak study', 'pak study', 3, '2025-03-26', 'Accepted'),
(21, 'english', 'qwerthj', 19, '2025-03-20', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `task_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `priority` varchar(100) NOT NULL DEFAULT 'normal',
  `created_by_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `task_title`, `description`, `start_date`, `end_date`, `status`, `priority`, `created_by_id`, `user_id`) VALUES
(11, 'check attiendence ', 'attiendence ', '2025-02-22 00:00:00', '2025-02-22 00:00:00', 'completed', 'normal', 1, 3),
(12, 'test system', 'test system', '2025-02-21 00:00:00', '2025-02-21 00:00:00', 'pending', 'normal', 1, 4),
(13, 'top roof paint', 'fghjk', '0025-05-29 00:00:00', '2025-03-19 00:00:00', 'pending', 'normal', 1, 4),
(14, 'test', 'test', '2025-03-05 00:00:00', '2025-03-13 00:00:00', 'completed', 'normal', 1, 3),
(15, 'top roof paint', 'dfghj', '2025-03-27 00:00:00', '2025-03-12 00:00:00', 'pending', 'normal', 1, 4),
(16, 'Holy quarn', 'ywewhdj', '2025-03-19 00:00:00', '2025-03-26 00:00:00', 'pending', 'normal', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `role` varchar(11) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `mobile`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '12345', 1234567899, 'admin'),
(3, 'hassan', 'hassan@gmail.com', '12345678', 1234567891, 'user'),
(16, 'amir', 'amir@gmail.com', '1234567', 0, 'user'),
(18, 'waseem', 'waseem@gmail.com', '1234567890', 0, 'user'),
(19, 'faizan', 'faizan@gmail.com', 'faizan123', 0, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

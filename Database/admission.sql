-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 08:23 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(15) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(12) NOT NULL,
  `u_state` varchar(50) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_pincode`, `file`, `u_mother`, `staff_id`, `image`, `uploaded`) VALUES
(128, '203210033', 'Dema Puspita', 'Kiranti', 'Rivan Widagdo', '2001-09-19', 'Perempuan', 'demapuspita@gmail.com', '081292364808', '', 'Telukjambe Timur', 'Sukaharja', '41361', '', 'Tri Ismiyati', 'A001', 'WhatsApp Image 2022-06-14 at 9.11.32 PM.jpeg', '2022-06-14 22:15:17'),
(129, '203210003', 'Lina', 'Celse', 'Yudi', '2002-01-14', 'Perempuan', 'linacelse@gmail.com', '082236361411', 'Jembrana', 'Mendoyo', 'Yeh Buah', '36361', '', 'Mira', 'A002', 'WhatsApp Image 2022-06-14 at 10.09.31 PM.jpeg', '2022-06-14 22:23:39'),
(130, '203210002', 'Lisa', 'Dwi', 'Budi', '2001-07-26', 'Perempuan', 'lisadwi@gmail.com', '081234345678', 'Mojokerto', 'Bangsal', 'Mejoyo', '34564', '', 'Rani', 'A001', '🤍 _ -𝚝𝚑𝚎 𝚑𝚊𝚝!-.jpg', '2022-06-14 22:39:24'),
(131, '203210030', 'Zulbaeti', '', 'Muhidin', '2001-10-15', 'Perempuan', 'zulbaeti@gmail.com', '083856743233', 'Pemalang', 'Bojongnangka', 'Pelutan', '52311', '', 'Lastri', 'A002', 'WhatsApp Image 2022-06-14 at 10.52.11 PM.jpeg', '2022-06-14 22:52:49'),
(132, '203210013', 'Mufrotun', 'Kholifah', 'Widodo', '2002-08-15', 'Perempuan', 'mufrotun@gmail.com', '087602129422', '', 'Adiwerna', 'Kalimati', '52121', '', 'Marina', 'A001', 'WhatsApp Image 2022-06-14 at 11.10.25 PM.jpeg', '2022-06-14 23:10:58'),
(133, '203210019', 'M. Fajri', 'Reznandya', 'Dede', '2001-09-19', 'Laki - Laki', 'mfajri@gmail.com', '081289887654', '', 'Nagasari', 'Karang Indah', '41363', '', 'Eka', 'A001', 'WhatsApp Image 2022-06-14 at 11.21.35 PM.jpeg', '2022-06-14 23:21:49'),
(134, '203210005', 'Raihan', 'Dika', 'Budi', '', 'Laki - Laki', 'raihan@gmail.com', '081276988765', 'Karawang', 'Nagasari', 'Kepuh', '41365', '', 'Jasmin', 'A001', 'WhatsApp Image 2022-06-14 at 11.22.49 PM.jpeg', '2022-06-14 23:24:13'),
(135, '203210016', 'Firman', 'Maulana', 'Bambang', '', 'Laki - Laki', 'firman@gmail.com', '085617789241', 'Karawang', 'Klari', 'Majalaya', '41367', '', 'Lilis', 'A002', 'WhatsApp Image 2022-06-14 at 11.32.59 PM.jpeg', '2022-06-14 23:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(9, 'admin2', '$2y$10$5gjj66O2cMBQ1Qwgz79.hOthrRdR80DSZ92I0ykK7zpp.dTFkVmoG', '2022-06-14 09:48:18'),
(10, 'admin', '$2y$10$TYOkf/zhl7spuTSHaazIre4YB705btuMq8dy136FPLGVt5ZniiW.K', '2022-06-14 12:58:26'),
(11, 'admin3', '$2y$10$z78Uxs/malIesCPyeXlCUeB4svLxRoJdSb9QcRSQiid5ptjokgmEy', '2022-06-14 16:34:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 12:41 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Sri Lankan'),
(2, 'Chinese'),
(3, 'Italian'),
(4, 'Dessert'),
(5, 'Ice Cream');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `category`, `name`, `price`, `image`) VALUES
(1, '1', 'Chicken Kothu', '12.00', 'picture/srilankan/kothu.jpeg'),
(2, '1', 'Fish Ambul Thiyal', '15.00', 'picture/srilankan/ambul.jpeg'),
(3, '1', 'Lamprais', '18.00', 'picture/srilankan/lamparis.jpeg'),
(4, '1', 'Kukul Mas Curry', '13.00', 'picture/srilankan/OIP.jpeg'),
(5, '1', 'Hoppers', '10.00', 'picture/srilankan/hoppers.jpg'),
(6, '1', 'Pol Sambol', '8.00', 'picture/srilankan/sambol.jpeg'),
(7, '1', 'Parrota-Salna', '12.00', 'picture/srilankan/Parotta-Salna.JPG'),
(8, '1', 'Kiribath', '11.00', 'picture/srilankan/kiri.jpeg'),
(9, '2', 'Sweet and Sour Pork', '14.00', 'picture/chinese/1.jpeg'),
(10, '2', 'Kung Pao Chicken', '13.00', 'picture/chinese/2.jpeg'),
(11, '2', 'Spring Rolls', '10.00', 'picture/chinese/3.jpeg'),
(12, '2', 'Fried Rice', '11.00', 'picture/chinese/4.jpeg'),
(13, '2', 'Dim Sum', '16.00', 'picture/chinese/5.jpeg'),
(14, '2', 'Ma Po Tofu', '12.00', 'picture/chinese/6.jpeg'),
(15, '2', 'Chow Mein', '14.00', 'picture/chinese/7.jpeg'),
(16, '2', 'Peking Duck', '22.00', 'picture/chinese/8.jpeg'),
(17, '3', 'Margherita Pizza', '15.00', 'picture/italian/1.jpeg'),
(18, '3', 'Lasagna', '17.00', 'picture/italian/2.jpeg'),
(19, '3', 'Spaghetti Carbonara', '14.00', 'picture/italian/3.jpeg'),
(20, '3', 'Risotto', '16.00', 'picture/italian/4.jpeg'),
(21, '3', 'Gnocchi', '13.00', 'picture/italian/5.jpeg'),
(22, '3', 'Tiramisu', '9.00', 'picture/italian/6.jpeg'),
(23, '3', 'Bruschetta', '11.00', 'picture/italian/7.jpeg'),
(24, '3', 'Panna Cotta', '10.00', 'picture/italian/8.jpeg'),
(25, '4', 'Chocolate Cake', '8.00', 'picture/dessert/1.jpeg'),
(26, '4', 'Cheesecake', '9.00', 'picture/dessert/2.jpg'),
(27, '4', 'Brownies', '7.00', 'picture/dessert/2.jpeg'),
(28, '4', 'Lemon Tart', '8.00', 'picture/dessert/3..jpeg'),
(29, '4', 'Cupcakes', '6.00', 'picture/dessert/4.jpeg'),
(30, '4', 'Macarons', '10.00', 'picture/dessert/5.jpeg'),
(31, '4', 'Pavlova', '9.00', 'picture/dessert/6.jpeg'),
(32, '4', 'Mousse', '8.00', 'picture/dessert/7.jpeg'),
(33, '5', 'Vanilla Ice Cream', '5.00', 'picture/ice-cream/1.jpeg'),
(34, '5', 'Chocolate Ice Cream', '6.00', 'picture/ice-cream/2..jpeg'),
(35, '5', 'Strawberry Ice Cream', '6.00', 'picture/ice-cream/3.jpeg'),
(36, '5', 'Mint Chocolate Chip', '6.00', 'picture/ice-cream/4.jpeg'),
(37, '5', 'Rocky Road', '7.00', 'picture/ice-cream/5.jpeg'),
(38, '5', 'Butter Pecan', '7.00', 'picture/ice-cream/6.jpg'),
(39, '5', 'Cookie Dough', '8.00', 'picture/ice-cream/7.jpeg'),
(40, '5', 'Pistachio Ice Cream', '8.00', 'picture/ice-cream/8.jpg'),
(41, '1', 'white', '12.00', '\"C:xampphtdocspropicturesrilankanhoppers.jpg\"'),
(42, '1', 'white', '12.00', '\"C:xampphtdocspropicturesrilankanhoppers.jpg\"'),
(43, '1', 'white', '12.00', '\"C:xampphtdocspropicturesrilankanhoppers.jpg\"'),
(44, '1', 'white', '12.00', '\"C:xampphtdocspropicturesrilankanhoppers.jpg\"');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_names` text NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_names`, `total_amount`, `created_at`, `status`) VALUES
(1, 'Risotto, Tiramisu, Spring Rolls', '35.00', '2024-07-01 01:35:46', 'cancelled'),
(2, 'Risotto, Risotto', '32.00', '2024-07-01 01:36:34', 'processed'),
(3, 'Macarons, Spring Rolls', '50.00', '2024-07-01 02:07:44', 'processed'),
(4, 'Risotto, Gnocchi', '29.00', '2024-07-01 02:18:20', 'processed'),
(5, 'Vanilla Ice Cream', '5.00', '2024-07-01 13:21:39', 'processed'),
(6, 'Risotto', '16.00', '2024-07-01 14:53:57', ''),
(7, 'Lemon Tart', '96.00', '2024-07-01 15:19:31', 'shipped'),
(17, 'Lamprais, Gnocchi', '174.00', '2024-07-08 07:42:07', ''),
(18, 'Fish Ambul Thiyal', '180.00', '2024-07-11 10:27:19', ''),
(19, 'Margherita Pizza', '15.00', '2024-07-15 15:08:15', ''),
(20, 'Fried Rice, Butter Pecan', '139.00', '2024-07-26 05:38:36', 'shipped'),
(21, 'Fried Rice', '11.00', '2024-07-26 06:00:46', ''),
(22, 'Cupcakes', '6.00', '2024-07-26 02:38:08', 'pending'),
(23, 'Fried Rice', '11.00', '2024-07-26 02:38:53', 'pending'),
(24, 'Gnocchi', '13.00', '2024-07-26 06:10:53', ''),
(25, 'Gnocchi', '624.00', '2024-07-26 06:12:33', ''),
(26, 'Gnocchi', '13.00', '2024-07-26 06:16:20', ''),
(27, 'Gnocchi', '13.00', '2024-07-26 06:50:36', 'processed'),
(28, 'Spring Rolls, Risotto', '136.00', '2024-07-27 07:19:28', 'shipped'),
(29, 'Fried Rice, Fish Ambul Thiyal', '185.00', '2024-07-27 16:04:50', 'processed');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `guests` int(11) NOT NULL,
  `table` int(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL,
  `parking_slot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `date`, `time`, `guests`, `table`, `created_at`, `status`, `parking_slot`) VALUES
(6, 'white', 'ranoosanvasikaran@gmail.com', '0762052431', '2024-07-07', '02:24:00', 3, 19, '2024-06-29 14:48:38', 'cancelled', NULL),
(7, 'ranoosanvasikaran', 'ranoosanvasikaran@gmail.com', '0762052431', '2024-08-09', '23:23:00', 12, 20, '2024-06-29 14:51:07', 'cancelled', NULL),
(8, 'ranoosanvasikaran', 'ranoosanvasikaran@gmail.com', '0762052431', '2024-07-05', '23:24:00', 12, 20, '2024-06-29 14:52:03', 'approved', NULL),
(9, 'ranoosan vasikaran', 'ranoosanvasikaran@gmail.com', '0762052431', '2024-07-20', '11:53:00', 12, 20, '2024-06-30 17:22:22', 'approved', NULL),
(10, 'fun', '123@gmail.com', '0762052431', '2024-07-19', '14:00:00', 12, 3, '2024-07-01 17:26:57', 'approved', NULL),
(11, 'fun', '123@gmail.com', '0762052431', '2024-07-16', '13:11:00', 12, 4, '2024-07-01 17:35:18', 'cancelled', NULL),
(12, 'fun', '123@gmail.com', '0762052431', '2024-07-12', '13:14:00', 12, 4, '2024-07-08 07:41:20', 'approved', NULL),
(13, 'fun', '123@gmail.com', '0762052431', '2024-07-12', '13:15:00', 4, 4, '2024-07-11 10:28:45', '', NULL),
(14, 'Vasikaran Ranoosan', 'ranoosanvasikaran@gmail.com', '0752052431', '2024-08-04', '13:49:00', 12, 4, '2024-07-23 17:16:17', '', 1),
(15, 'ranoosanvasikaran', 'ranoosanvasikaran@gmail.com', '0762052431', '2024-07-25', '02:12:00', 12, 3, '2024-07-26 05:39:17', '', 1),
(16, 'ranoosanvasikaran', 'ranoosanvasikaran@gmail.com', '0762052431', '2024-07-24', '16:20:00', 12, 3, '2024-07-27 06:47:48', 'approved', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$BqDtHN3KvTmg1VDqabzUrOuhJQH3pt.BG0PcgRdb7tYnWemZ6ugVC', 'admin'),
(2, 'staff', '$2y$10$wDA.BpV0iQDnNY4/M9SFcuVdLLGbUfL1boPyJqPCFmS2Fc23UZhuW', 'staff'),
(7, 'admin', '$2y$10$XBiDzTyZQrbJAI8QSc.zcOeMRIwCCVA1mb8SyonoATyNrQa4lyUtS', 'admin'),
(8, 'admin', '$2y$10$IADK3Vw7V9dxSWpMjORlkOmZRG/J6MLSmSH2uvZumk6628AQX2WgW', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Email`, `Age`, `Password`) VALUES
(1, 'test2', 'ranoosanvasikaran@gmail.com', 23, '$2y$10$ST/YnAjZXE9AdV7kHkOhdOCoJm67jipJzRv3oegST8YzL2/p4aNOG'),
(2, 'fun', 'fun@gmail.com', 21, '$2y$10$Nfe8fPXYsPcv9ONILL4KuOsT7aONaWkqbUeRjZUlIjlTzBH5Rkqhu'),
(3, 'ranoosan', '123@gmail.com', 21, '$2y$10$M5s146BnIKrgMDXXJpSu6OSzw4rlKd.aVooGl5NOO/xk3IVGFcqKe'),
(4, '132', '1231', 21, '$2y$10$G.ldDbUySE08Y.6gN2vXEe7xKDNscz/gCh1B4mgzPZPib6LnZlorG'),
(5, 'white', 'white@gmail.com', 18, '$2y$10$vyaf2ys5TsOENUP5E1g9gudZsbH5ab6a97DFZFuEykMCKdbCmcf6a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

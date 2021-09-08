-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 08, 2021 at 06:04 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(10) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(15) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(11, 'Chandana', 'Asha', 200, '2018-09-20 05:32:58'),
(12, 'Asha', 'Ravi', 300, '2019-08-09 05:53:45'),
(13, 'Ravi', 'Ammu', 400, '2017-07-26 05:45:05'),
(14, 'Ammu', 'Saraswati', 500, '2020-05-13 09:56:56'),
(15, 'Saraswati', 'Ramu', 600, '2018-10-12 07:57:17'),
(16, 'Ramu', 'Krishna', 700, '2019-03-14 09:58:48'),
(17, 'Krishna', 'Rukmini', 800, '2021-07-29 08:59:47'),
(18, 'Rukmini', 'Radha', 780, '2021-07-01 07:01:17'),
(19, 'Radha', 'Vittal', 670, '2017-07-25 06:01:47'),
(20, 'Vittal', 'Chandana', 980, '2021-09-10 06:05:41'),
(21, 'Chandana', 'Asha', 600, '2021-09-06 05:24:11'),
(22, 'Chandana', 'Asha', 1000, '2021-09-06 05:32:02'),
(23, 'Asha', 'Saraswati', 700, '2021-09-06 05:34:11'),
(24, 'Chandana', 'Ammu', 400, '2021-09-07 04:59:09'),
(25, 'Chandana', 'Saraswati', 100, '2021-09-07 06:21:23'),
(26, 'Ammu', 'Chandana', 100, '2021-09-07 09:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Chandana', 'chandana12@gmail.com', 48000),
(2, 'Asha', 'asha34@gmail.com', 60900),
(3, 'Ravi', 'ravi56@gmail.com', 70000),
(4, 'Ammu', 'ammu67@gmail.com', 45300),
(5, 'Saraswati', 'sarswati89@gmail.com', 80800),
(6, 'Ramu', 'ramu123@gmail.com', 90000),
(7, 'Krishna', 'krishna456@gmail.com', 68000),
(8, 'Rukmini', 'rukmini478@gmail.com', 46500),
(9, 'Radha', 'radha890@gmail.com', 63000),
(10, 'Vittal', 'vittal567@gmail.com', 89000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

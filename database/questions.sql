-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2018 at 09:00 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `num` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `num`, `text`, `created_at`, `updated_at`) VALUES
(1, 4, 'Sed perspiciatis enim officiis blanditiis ab eaque dolore. Tempora expedita cum dicta distinctio ullam ea natus. Dolor magni ut enim est illo. Nihil in magnam voluptatem et rerum.', '1999-04-11 08:09:06', '2017-05-29 21:37:44'),
(2, 6, 'Quos molestias assumenda dolores unde in cumque quis. Repudiandae officia velit est non error ut esse mollitia. Quo doloremque aliquam quos voluptatem.', '1995-06-18 18:41:11', '2006-10-04 13:34:26'),
(3, 5, 'Id blanditiis quia amet ut quae ullam. Est aut quia ad quisquam et. Molestiae nihil iste veniam dolor. Nesciunt ab et sed est iste minima in.', '1995-01-29 22:27:42', '1981-07-07 09:53:05'),
(4, 3, 'Nulla ea expedita debitis corrupti earum ab perspiciatis. Qui ad repellat doloremque qui modi nam quo. Possimus officia ea est fugiat molestiae dolor labore.', '1970-05-10 23:43:18', '2009-08-29 06:25:26'),
(5, 1, 'Delectus et repellendus omnis culpa. Facilis beatae consequatur cupiditate totam illo sed aut. Omnis possimus est neque. Asperiores quod inventore quia.', '1997-12-09 00:17:37', '2018-01-25 07:25:53'),
(6, 2, 'Impedit recusandae officiis dicta. Dolor iusto possimus numquam et. Necessitatibus atque esse fugit consectetur qui. Aspernatur voluptatem cumque delectus pariatur placeat.', '2014-07-26 12:37:31', '1988-09-27 13:32:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questions_num_unique` (`num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

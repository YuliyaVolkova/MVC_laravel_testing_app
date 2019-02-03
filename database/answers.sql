-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2018 at 08:59 AM
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
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `right_or_not` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `text`, `question_id`, `right_or_not`, `created_at`, `updated_at`) VALUES
(1, 'Esse distinctio cumque esse est. Repellat voluptatem quam rerum placeat est optio. Optio eos est tempora ea consequatur nam voluptas.', 3, 0, '1976-02-08 11:36:34', '2007-06-24 05:18:06'),
(2, 'Sunt consequatur hic omnis. Provident similique quis consectetur quo est est a. Non neque impedit cumque. Eos sunt qui eos eius impedit consectetur beatae.', 2, 1, '1979-04-24 02:41:41', '2002-07-11 00:21:05'),
(3, 'Consectetur magni rem aliquam dolore. Adipisci dolores veniam in sapiente et velit. Error voluptatem consectetur quas nesciunt aut velit sint. Magnam optio eligendi quod autem est quia.', 2, 1, '1983-10-02 22:13:42', '1981-05-05 23:52:03'),
(4, 'Perferendis consequatur officiis sequi odit molestias nesciunt provident vel. Dolore eos corrupti odit. Explicabo quas dolor voluptas nulla et.', 2, 1, '2011-10-16 07:47:41', '1972-12-18 11:29:20'),
(5, 'Iste occaecati fugit quae alias neque consequatur et. Quo omnis odio aut a. Tempore eos et aspernatur aliquam. Atque distinctio dolore pariatur omnis deserunt quae fugiat.', 2, 0, '1994-08-14 22:40:08', '1987-12-16 10:52:13'),
(6, 'Et itaque excepturi consequatur sequi deserunt. Et omnis officiis at nemo.', 3, 1, '1984-09-01 16:30:29', '1981-08-18 15:09:34'),
(7, 'Omnis in nesciunt sed eos. Occaecati quia perspiciatis ducimus eligendi. Et reiciendis quis odio accusantium voluptatem.', 6, 1, '1995-01-12 20:13:35', '1989-09-01 11:38:00'),
(8, 'Quia aut quia eos consectetur at tempora perferendis. Sunt deserunt debitis ex in. Aut aut quaerat rem.', 4, 1, '1985-02-03 16:30:49', '1988-12-27 13:40:50'),
(9, 'Aliquam expedita cupiditate similique nihil accusantium velit officiis. Voluptas id fuga ut et qui. Accusantium numquam maiores velit eum et. Eaque incidunt veritatis molestiae et.', 3, 0, '1989-01-11 14:27:55', '1975-01-08 22:51:30'),
(10, 'Delectus laboriosam ea saepe modi. Rerum molestias delectus quod. Ipsum neque inventore commodi voluptatibus. Nisi aspernatur sint consectetur.', 4, 1, '1997-11-13 15:57:39', '1994-05-23 19:42:00'),
(11, 'Et veniam amet perferendis alias est itaque quibusdam assumenda. Quidem vel dolorum molestiae et non. Magni molestias delectus quo corrupti.', 5, 1, '1995-12-10 09:27:57', '1996-02-27 03:50:58'),
(12, 'Quaerat exercitationem tenetur nihil ratione necessitatibus. Qui veritatis sunt rerum. Soluta et enim fuga repudiandae maiores aperiam similique.', 5, 0, '2003-08-02 15:06:25', '1997-11-20 03:58:15'),
(13, 'Eveniet qui vitae incidunt est. Qui repellendus et ab voluptatem omnis veritatis est omnis. Dolor est et nemo eius.', 4, 0, '1972-02-02 06:49:38', '1984-12-14 02:13:39'),
(14, 'Nam ipsum aut qui. Praesentium alias nesciunt tempora illo nobis id voluptas odit.', 1, 1, '2011-09-07 16:42:11', '1978-01-06 07:05:57'),
(15, 'Rerum distinctio voluptas blanditiis id necessitatibus temporibus. Amet et ut commodi et et. Laudantium quod est omnis quod.', 1, 0, '1999-10-20 19:22:06', '1988-09-03 01:53:33'),
(16, 'Aut in similique quos dolores. Magni voluptatem ut nesciunt alias possimus reprehenderit tenetur. Vero occaecati minus sint sit voluptatibus molestiae. Rerum sit optio officiis.', 5, 1, '2013-12-09 23:34:13', '1977-04-27 10:13:09'),
(17, 'Perspiciatis et eum et dolores reprehenderit. Aut tenetur iusto ratione sunt esse repudiandae. Voluptatem qui voluptate sed nostrum. Quia omnis eum quibusdam et autem illum et.', 3, 0, '1986-07-01 11:29:14', '2018-04-02 19:47:53'),
(18, 'Eum hic atque et rem nihil. Repudiandae voluptatem non officia debitis optio in. Dolor sit et corrupti veniam.', 6, 1, '1981-07-12 16:59:36', '1980-09-28 03:50:05'),
(19, 'Minima est ipsam aspernatur quo illum quidem qui est. Inventore animi aliquam recusandae sint nobis quaerat.', 6, 0, '2009-12-20 09:00:17', '1980-03-25 06:54:10'),
(20, 'Est deleniti delectus explicabo tempora facere. Laboriosam est nisi qui. Cupiditate quis rerum eligendi temporibus et. Id atque consequatur pariatur quisquam.', 2, 1, '1995-10-16 17:00:00', '1997-05-05 01:55:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

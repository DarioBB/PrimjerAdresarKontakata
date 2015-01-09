-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Računalo: 127.0.0.1
-- Vrijeme generiranja: Lis 12, 2014 u 11:50 
-- Verzija poslužitelja: 5.6.14
-- PHP verzija: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza podataka: `phonebook`
--
CREATE DATABASE IF NOT EXISTS `phonebook` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `phonebook`;

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `city` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=268 ;

--
-- Izbacivanje podataka za tablicu `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `last_name`, `city`, `description`, `created`) VALUES
(1, 'aaa11', 'bb', 'ccc', 'zet', '2014-10-06 20:46:40'),
(243, 'ddd', 'dasd', 'sadsa', 'asdasd', '2014-10-09 20:42:10'),
(3, 'aaaa', 'fsfdsdf', '', '', '2014-10-06 20:46:57'),
(23, 'Žminj', 'bbb', 'ccc', 'sadasd', '2014-10-07 21:24:39'),
(242, 'qq', 'ttt', 'ee', 'dd', '2014-10-09 19:04:28'),
(24, 'ARRew', 'bbbb', 'ccc', 'dfdfsfsd', '2014-10-07 21:28:15'),
(25, 'loga', 'nogass', '', '', '2014-10-07 21:30:12'),
(26, 'dasd', 'sdgdfg', 'gdfg', 'dfg', '2014-10-07 21:39:45'),
(17, 'Krunoslav', 'Aničević', 'Zagreb2', 'Ovo su njegovi brojevi.. Ovo su njegovi brojevi.. Ovo su njegovi brojevi.. Ovo su njegovi brojevi..1 test..', '2014-10-06 21:06:55'),
(18, 'Anamarija', 'Jovanović', 'Split..', 'Brojevi telefona', '2014-10-06 21:47:00'),
(19, 'aaa2', 'bbbsssZĐŽ', 'cc2223455', 'fff', '2014-10-06 23:08:04'),
(27, 'dasd22', 'sdgdfg33', 'gdfg', 'dfg', '2014-10-07 21:39:53'),
(21, 'Antun', 'Antunić', 'Crikvenica', 'erewrewr', '2014-10-06 23:49:38'),
(22, 'Nnnn dasdasr45da ', 'fdsfšpš ćdfćgdfg dsf', 'sdfsdf', '', '2014-10-07 20:52:16'),
(28, 'dasd', 'sdgdfg', 'gdfg', 'dfg', '2014-10-07 21:40:07'),
(31, 'Ana', 'sdgdfg', 'gdfg', 'dfg', '2014-10-08 16:47:41'),
(32, 'dasd', 'sdgdfg', 'gdfg', 'dfg', '2014-10-08 16:48:02'),
(33, 'dasd', 'sdgdfg', 'gdfg', 'dfg', '2014-10-08 17:11:18'),
(34, 'Ivo', 'Ivić', 'gdfg', 'dfg', '2014-10-08 17:11:31'),
(35, 'Branko', 'Braković', 'gdfg', 'dfg', '2014-10-08 17:11:53'),
(36, 'dasd', 'sdgdfg', 'gdfg', 'dfg', '2014-10-08 17:12:01'),
(37, 'Marko', 'Zudi-Šain', 'gdfg', 'dfg', '2014-10-08 17:13:14'),
(38, 'dasd', 'sdgdfg', 'gdfg', 'dfg', '2014-10-08 17:13:22'),
(39, 'Barbara', 'Barić', 'gdfg', 'dfg', '2014-10-08 17:14:51'),
(40, 'Krunoslav', 'Kristijanić', 'gdfg', 'dfg', '2014-10-08 17:15:29'),
(41, 'Bersilav test', 'Božidarević', 'gdfg', 'dfg', '2014-10-08 17:15:46'),
(42, 'Testiranje ime', 'testiranje prezime', 'gdfg', 'dfg', '2014-10-08 17:16:19'),
(43, 'dasd', 'sdgdfg', 'gdfg', 'dfg', '2014-10-08 17:17:06'),
(44, 'Aaa', 'Bbbb', 'cccc', 'eee', '2014-10-08 17:18:10'),
(45, 'Aaa', 'Bbbb', 'cccc', 'eee', '2014-10-08 17:18:58'),
(46, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:19:17'),
(47, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:19:40'),
(48, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:21:28'),
(49, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:22:03'),
(50, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:22:09'),
(51, 'tt232', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:22:20'),
(52, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:22:40'),
(53, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:22:59'),
(54, 'tt34tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:23:04'),
(55, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:23:18'),
(56, 'ime test', 'prezime test', 'gdf', 'dfgdfg', '2014-10-08 17:23:40'),
(57, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:25:08'),
(58, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:25:45'),
(59, 'Agata', 'Brankoviš', 'gdf', 'dfgdfg', '2014-10-08 17:25:53'),
(60, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:26:03'),
(61, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:26:28'),
(62, 'Edin', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:26:44'),
(63, 'Mario', 'Marković', 'gdf', 'dfgdfg', '2014-10-08 17:29:17'),
(64, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:29:53'),
(65, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:30:16'),
(66, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:33:01'),
(67, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:33:59'),
(68, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:34:26'),
(69, 'Petar', 'Šerić', 'gdf', 'dfgdfg', '2014-10-08 17:34:57'),
(70, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:35:28'),
(71, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:36:03'),
(72, 'Gustav', 'Žardin', 'gdf', 'dfgdfg', '2014-10-08 17:36:20'),
(73, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:36:56'),
(74, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:37:19'),
(75, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:38:28'),
(76, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:38:44'),
(77, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:45:35'),
(78, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:45:55'),
(79, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:46:31'),
(80, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:47:03'),
(81, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:49:11'),
(82, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:49:26'),
(83, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:49:40'),
(84, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:49:52'),
(85, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:49:53'),
(86, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:50:44'),
(87, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:51:50'),
(88, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:52:14'),
(89, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:52:23'),
(90, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:52:42'),
(91, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:52:58'),
(92, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:53:05'),
(93, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:53:17'),
(94, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:53:21'),
(95, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:53:55'),
(96, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:54:01'),
(97, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:54:34'),
(98, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:54:41'),
(99, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:54:55'),
(100, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:55:46'),
(101, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:55:54'),
(102, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:56:56'),
(103, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:58:09'),
(104, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:58:36'),
(105, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:59:00'),
(106, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 17:59:14'),
(107, 'tt', 'tt', 'gdf', 'dfgdfg', '2014-10-08 18:00:26'),
(108, 'aas', 'sad', 'fdsf', 'fsdfsdf', '2014-10-08 18:00:45'),
(109, 'gfd jhjh', 'hhg sdsd', 'fdsf', 'fsdfsdf', '2014-10-08 18:00:56'),
(110, 'aas', 'sad', 'fdsf', 'fsdfsdf', '2014-10-08 18:01:02'),
(111, 'aasre 343', 'sad', 'fdsf', 'fsdfsdf', '2014-10-08 18:03:32'),
(112, 'aas pš', 'sad', 'fdsf', 'fsdfsdf', '2014-10-08 18:04:46'),
(113, 'Zdravko', 'Zrnić Krunović', 'fdsf', 'fsdfsdf', '2014-10-08 18:05:02'),
(114, 'aas', 'sad', 'fdsf', 'fsdfsdf', '2014-10-08 18:05:07'),
(115, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:05:55'),
(116, 'sdfdsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:06:06'),
(117, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:07:20'),
(118, 'dsafg dfdsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:07:55'),
(119, 'Monika', 'Monić', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:10:49'),
(120, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:15:02'),
(121, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:15:38'),
(122, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:15:54'),
(123, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:16:41'),
(124, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:16:54'),
(125, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:17:08'),
(126, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:17:22'),
(127, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:17:31'),
(128, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:17:49'),
(129, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:19:13'),
(130, 'Testiranje ime', 'Neko prezime', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:19:22'),
(131, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:19:30'),
(132, 'Zdravko', 'Zdravkić', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:20:06'),
(133, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:20:46'),
(134, 'Tomislav', 'Tomić TEst', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:21:53'),
(135, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:22:07'),
(136, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:23:19'),
(137, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:26:43'),
(138, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:26:54'),
(139, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:27:02'),
(140, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:27:12'),
(141, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:27:45'),
(142, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:30:30'),
(143, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:31:01'),
(144, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:31:33'),
(145, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:31:46'),
(146, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:32:02'),
(147, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:32:11'),
(148, 'dd dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:32:37'),
(149, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:33:30'),
(150, 'Ivoo', 'Anić', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:36:59'),
(151, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:40:10'),
(152, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:40:39'),
(153, 'Ana', 'Anić test test', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:41:03'),
(154, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:41:11'),
(155, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:41:23'),
(156, 'dsadsa', 'sadasd', 'sdfgfdgfd', 'gfdg', '2014-10-08 18:41:43'),
(157, 'fff', 'asd', 'asdsad', 'fsdfdsf', '2014-10-08 18:46:30'),
(158, 'fff', 'asd', 'asdsad', 'fsdfdsf', '2014-10-08 18:47:58'),
(159, 'ggg', 'sdfdsfds', '', '', '2014-10-08 18:48:11'),
(160, 'asdsad', 'sadasd', '', '', '2014-10-08 18:49:27'),
(161, 'asdsad', 'sadasd', '', '', '2014-10-08 18:50:12'),
(162, '324324', 'sadsad', '', 'ddsdsa', '2014-10-08 18:53:38'),
(163, '324324', 'sadsad', '', 'ddsdsa', '2014-10-08 18:54:19'),
(164, 'sdasdas', 'ewrwerweew', '', '', '2014-10-08 18:54:41'),
(165, 'sdasdas', 'ewrwerweew', '', '', '2014-10-08 18:54:46'),
(166, 'sdasdas', 'ewrwerweew', '', 'ewrewr', '2014-10-08 18:54:48'),
(167, 'Boris Boris', 'Borić', 'tret', 'ewrewr', '2014-10-08 18:55:04'),
(168, 'sdasdas', 'ewrwerweew', 'tretrtert', 'ewrewr', '2014-10-08 18:55:07'),
(169, 'sdasdas', 'ewrwerweew', 'tretrtert', 'ewrewr', '2014-10-08 18:55:16'),
(170, 'sdasdas', 'ewrwerweew', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:55:20'),
(171, 'Robert', 'Ivanišević', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:55:25'),
(172, 'sdasdas44', 'ewrwerweew', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:55:28'),
(173, 'sdasdas44', 'ewrwerweew55', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:55:30'),
(174, 'sdasdas44', 'ewrwerweew55', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:55:37'),
(175, 'sdasdas445', 'ewrwerweew55', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:55:44'),
(176, 'Roberto', 'Tavelli', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:58:40'),
(177, 'Marko Ivan', 'Šatkotivš', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:58:42'),
(178, 'sdasdas445', 'ewrwerweew55', 'tretrtertrtt', 'ewrewr', '2014-10-08 18:59:11'),
(179, 'sdasdas445', 'ewrwerweew55', 'tretrtertrtt', 'ewrewr', '2014-10-08 19:01:06'),
(180, 'Asdasd', 'ddd', '', 'dsfdsf', '2014-10-08 19:05:51'),
(181, 'test', 'ddd', '', 'dsfdsffsdf', '2014-10-08 19:06:06'),
(182, 'test', 'prezime', '', 'dsfdsffsdf', '2014-10-08 19:06:16'),
(183, 'Asdasd', 'ddd', '', 'dsfdsffsdf', '2014-10-08 19:06:16'),
(184, 'Asdasd', 'ddd', '', 'dsfdsffsdf', '2014-10-08 19:06:17'),
(185, 'Asdasd', 'ddd', '', 'dsfdsffsdf', '2014-10-08 19:06:18'),
(186, 'Asdasd', 'ddd', '', 'dsfdsffsdf', '2014-10-08 19:06:23'),
(187, 'vvvvv', 'mm yyy', '', 'dsfdsffsdf', '2014-10-08 19:06:24'),
(188, 'Asdasd', 'ddd', '', 'dsfdsffsdf', '2014-10-08 19:06:25'),
(189, 'Asdasd', 'ddd', '', 'dsfdsffsdf', '2014-10-08 19:06:25'),
(190, 'Asdasd', 'ddd', '', 'dsfdsffsdf', '2014-10-08 19:06:57'),
(191, 'sadsad', 'sadsa', 'sadsad', 'sdsad', '2014-10-08 19:07:09'),
(192, 'asdasd', 'dsfdsf', 'fsfsdf', 'sdfsdfds', '2014-10-08 19:07:16'),
(193, 'fdsfds dddddd ddd', 'fsdfsdf', '', 'sdsad', '2014-10-08 19:08:02'),
(196, 'ssss', 'fff', 'fsdfsdf', 'fdds', '2014-10-08 19:56:58'),
(197, 'ssss', 'fff', 'fsdfsdf', 'fdds', '2014-10-08 19:57:14'),
(198, 'ssss', 'fff', 'fsdfsdf', 'fdds', '2014-10-08 19:59:15'),
(199, 'ssss', 'fff', 'fsdfsdf', 'fdds', '2014-10-08 19:59:46'),
(200, 'trztr', 'ztrz', 'ztrztrz', 'ztrztrztr', '2014-10-08 20:01:02'),
(201, 'fffffffffffffff', 'fffffff', 'f', '', '2014-10-08 20:02:37'),
(202, 'gggggggggg', 'hhhhhhhhhhh', '', 'sdfsdf', '2014-10-08 20:03:57'),
(203, 'ttt', 'gdfgdfg', 'fgdfgdfg', 'dfgd', '2014-10-08 20:04:32'),
(204, 'aaaaRR', 'fdsfdsf', 'fsdf', 'dsfs', '2014-10-08 20:07:43'),
(205, 'dsfsdfsd', 'dfsdfsdsd', 'sdfsdfsdf', 'fsdf', '2014-10-08 20:08:14'),
(206, 'ffff333', 'eeee', '', '', '2014-10-08 20:08:50'),
(207, 'zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:09:26'),
(208, 'zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:42:52'),
(209, 'ss ff zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:43:45'),
(210, 'zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:46:21'),
(211, 'zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:46:41'),
(212, 'Tomislav', 'Tomislavić', 'ewrwer', 'rwer', '2014-10-08 20:47:51'),
(213, 'zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:49:09'),
(214, 'zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:49:49'),
(215, 'zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:50:57'),
(216, 'zzz44', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:53:04'),
(217, 'Anamarija', 'Anamarijić', 'Zagreb', 'Anaimarijini kontati', '2014-10-08 20:53:50'),
(218, 'zzz446', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:54:54'),
(219, 'zzz446zzz', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:54:59'),
(220, 'zzz446zzz1', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:55:05'),
(221, 'zzz4 46zzz12', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:55:10'),
(222, 'zzz446zzz12', 'rrew', 'ewrwer', 'rwer', '2014-10-08 20:55:19'),
(230, 'xxx', 'cccff', 'yy', 'yhhheeer33377733335233', '2014-10-09 00:30:59'),
(229, 'nocc', 'dan', 'zg', 'ovo je opis...', '2014-10-09 00:07:21'),
(225, 'zzz446zzz12', 'rrew', 'ewrwer', 'rwer', '2014-10-08 22:55:25'),
(231, 'eee', 'ffd', 'ff', 'dsfd', '2014-10-09 18:29:55'),
(227, 'zzz44645gggRY', 'rrew', 'ewrwer4', 'rwer4455sdf', '2014-10-08 22:57:00'),
(232, 'sdasdas', 'sadad', 'adsadasd', 'dasds', '2014-10-09 18:44:40'),
(233, 'asdasd', 'dsfdsf', 'sdf', 'asdsad', '2014-10-09 18:49:10'),
(234, 'sss', 'fdsfdsf', 'fdsfdf', 'dsfds', '2014-10-09 18:49:48'),
(235, 'dasdas', 'asdas', 'asd', 'sadasd', '2014-10-09 18:50:00'),
(236, 'ertert', 'erter', 'ertertert', 'tertert', '2014-10-09 18:50:24'),
(237, 'ert', 'ertert', 'ertertert', 'teert', '2014-10-09 18:50:38'),
(238, 'ere', 'fsdf', 'sfs', 'frewfr', '2014-10-09 18:56:27'),
(239, 'eee', 'fsdfsdf', 'sdf', 'fsdf', '2014-10-09 18:58:29'),
(240, 'eee', 'gdfgfdg', 'dgdf', 'ffg', '2014-10-09 18:59:43'),
(241, 'ŠĐČĆŽžćčđš', 'aaa', 'bbb', 'ccc', '2014-10-09 19:02:41'),
(244, 'dsadsad', 'dasdas', 'sadas', 'dsad', '2014-10-09 20:43:10'),
(245, 'aaa2222', '34334', '234324', '234234', '2014-10-09 20:44:45'),
(246, 'eeee', 'tertet', 'etertert', 'et', '2014-10-09 20:45:37'),
(248, 'rweeeeeeeeee', 'eeeeeeeee', 'eeeeeeeeeeeeee', 'eeeeeee', '2014-10-09 20:46:36'),
(249, 'www', 'rrr', 'werwe', 'rwerwer', '2014-10-09 20:47:22'),
(250, 'eerewrwe', 'rwerew', 'werwe', 'werwer', '2014-10-09 20:48:12'),
(251, 'rtretret', 'ertertert', '', '', '2014-10-09 20:48:32'),
(253, 'tertert22223', 'terter333334', 'ertret', '', '2014-10-09 20:49:19'),
(254, 'ertret', 'ert', 'etert', '', '2014-10-09 20:49:26'),
(255, 'eeee', 'weqwe', 'qweqwewq', '', '2014-10-09 20:50:08'),
(256, 'eeeeeeeee', 'eeeeeeeeeeeee', '', '', '2014-10-09 20:52:24'),
(257, 'fsdfsd', 'fsdfsdf', '', '', '2014-10-09 20:52:34'),
(258, 'mmmmm', 'mmmmmm', 'mmmmmmmm', 'mmmmmmm', '2014-10-09 20:52:53'),
(260, 'eeerwer', 'werwer', 'werwerewr', '', '2014-10-09 20:53:51'),
(261, 'rwerwerwer', 'erew', 'ee', '', '2014-10-09 20:54:12'),
(266, 'gggACX', 'eee', 'cc', 'gggfdgdfgdfgdfg', '2014-10-11 14:22:37'),
(263, 'ŠĐČĆŽfdsf', 'sdfsdf', '', '', '2014-10-09 20:55:59'),
(264, 'uu', 'zzz', 'ttt', 'dfgdfg', '2014-10-09 20:56:35'),
(265, 'AAAoŠĐŽĆ', 'prezime testss', 'Zagreb', 'Ja sam iz grada Zagrfeba11', '2014-10-09 20:58:35');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `contacts_numbers`
--

CREATE TABLE IF NOT EXISTS `contacts_numbers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contacts_id` int(10) unsigned NOT NULL,
  `number` varchar(15) NOT NULL,
  `number_type_id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=246 ;

--
-- Izbacivanje podataka za tablicu `contacts_numbers`
--

INSERT INTO `contacts_numbers` (`id`, `contacts_id`, `number`, `number_type_id`, `description`) VALUES
(1, 42, 'hhhh', 3, 'ddddd'),
(2, 43, 'hhhh', 3, 'ddddd'),
(3, 45, 'qq33', 2, 'q44'),
(4, 46, 'cc', 2, 'dd'),
(5, 47, 'cc', 2, 'dd'),
(6, 156, '111', 1, '22'),
(7, 156, '33', 2, '44'),
(8, 156, '55', 3, '66'),
(9, 156, '77', 1, '88'),
(10, 157, 'oooooooooo', 3, 'dsad3333333'),
(11, 157, 'ttttt', 2, 'eeeee'),
(12, 158, 'oooooooooo', 3, 'dsad3333333'),
(114, 227, 'zemlja', 3, 'dobra..'),
(113, 227, 'kkkk', 1, ''),
(112, 227, 'Raqwq', 3, 'Astur'),
(111, 227, 'WWWW', 2, 'QQQ'),
(110, 227, 'MMM', 1, 'Nnnnnn'),
(109, 227, 'iiii', 2, 'zzz'),
(161, 241, '3434', 1, '45345345'),
(160, 236, '', 1, 'ertert'),
(156, 229, 'ZZZZZ1', 1, 'YYYYYYYYY2'),
(159, 226, 'Qw', 3, 'avvvvv'),
(155, 229, 'sada', 3, 'sada ne234444'),
(154, 229, '09899999', 1, 'ovo je broj 0988999999999'),
(185, 265, 'Broj s posla', 3, 'Ovo je broj s posla.'),
(184, 265, '11122-233344', 2, 'broj dva'),
(183, 265, '098222323', 1, 'Ovo je broj mobiteladsad'),
(244, 17, '01 222 3333', 2, 'Ovo je kućni'),
(245, 17, '091 3443434', 1, 'Drugi broj mobitela... Drugi broj mobitela... Drugi broj mobitela... Drugi broj mobitela... Drugi broj mobitela... Drugi broj mobitela... '),
(243, 17, '099', 3, 'dasdasd ldlfsdlfsdf fsdfsfds'),
(242, 17, '098333333', 1, 'Ovo je mobitel bla bla123'),
(236, 267, 'rrr55', 1, 'ttt66'),
(237, 267, '77788', 2, '888899'),
(238, 18, '01 2883 493', 2, 'Kućni broj'),
(239, 18, '098 245 2334', 1, 'Broj mobitela.'),
(241, 21, '098 9233 434', 1, 'Broj mobitela (osobni i poslovni)');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `number_type`
--

CREATE TABLE IF NOT EXISTS `number_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Izbacivanje podataka za tablicu `number_type`
--

INSERT INTO `number_type` (`id`, `title`) VALUES
(1, 'Mobitel'),
(2, 'Kućni'),
(3, 'Posao');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderby` int(11) unsigned NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `table_id` int(11) unsigned NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Izbacivanje podataka za tablicu `photos`
--

INSERT INTO `photos` (`id`, `orderby`, `table_name`, `table_id`, `photo_name`, `title`, `created`) VALUES
(16, 16, 'contacts', 0, '309241819723082_101_3075.jpg', '', '2014-10-08 22:59:41'),
(15, 15, 'contacts', 225, '7769148784863_101_3063.jpg', '', '2014-10-08 22:55:26'),
(17, 17, 'contacts', 0, '11092010456.jpg', '', '2014-10-08 23:00:04'),
(42, 42, 'contacts', 228, '11092010422.jpg', '', '2014-10-09 00:44:11'),
(30, 30, 'contacts', 227, 'kukuruz-susa.jpg', '', '2014-10-09 00:04:26'),
(50, 50, 'contacts', 18, 'nature-b-1600-460269.jpg', '', '2014-10-12 16:35:05'),
(41, 41, 'contacts', 229, '11092010410.jpg', '', '2014-10-09 00:42:26'),
(45, 45, 'contacts', 265, '11092010405.jpg', '', '2014-10-09 20:58:36'),
(49, 49, 'contacts', 17, '11092010406.jpg', '', '2014-10-12 08:04:07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

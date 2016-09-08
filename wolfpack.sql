-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 08 Sep 2016 la 15:08
-- Versiune server: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wolfpack`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `make_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `km` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Salvarea datelor din tabel `cars`
--

INSERT INTO `cars` (`id`, `dealer_id`, `make_id`, `model_id`, `km`, `year`, `price`) VALUES
(1, 1, 1, 1, 140000, 2004, 3000),
(2, 2, 2, 2, 400000, 2003, 1500),
(3, 1, 1, 1, 10000, 2008, 5000),
(4, 1, 2, 2, 150000, 2005, 2500),
(5, 1, 2, 2, 1332, 2000, 150);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Salvarea datelor din tabel `dealers`
--

INSERT INTO `dealers` (`id`, `name`) VALUES
(1, 'Dealer 1'),
(2, 'Dealer 2');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `makes`
--

CREATE TABLE `makes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Salvarea datelor din tabel `makes`
--

INSERT INTO `makes` (`id`, `name`) VALUES
(1, 'Opel'),
(2, 'Volkswagen');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `make_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Salvarea datelor din tabel `models`
--

INSERT INTO `models` (`id`, `make_id`, `name`) VALUES
(1, 1, 'Astra H'),
(2, 2, 'Golf IV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `makes`
--
ALTER TABLE `makes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

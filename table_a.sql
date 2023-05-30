-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 Mei 2023 pada 14.34
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbank`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_a`
--

CREATE TABLE `table_a` (
  `ID` int(11) NOT NULL,
  `CARDNUMBER` int(11) NOT NULL,
  `ISS` varchar(10) NOT NULL,
  `ACQ` varchar(10) NOT NULL,
  `DEST` varchar(10) NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_a`
--

INSERT INTO `table_a` (`ID`, `CARDNUMBER`, `ISS`, `ACQ`, `DEST`, `STATUS`) VALUES
(1, 123, 'MDR', 'BNI', 'MDR', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_a`
--
ALTER TABLE `table_a`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 04:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`email`, `username`, `password`) VALUES
('usus@gmail.com', 'Novan12', '$2y$10$shWC2m73VZHIM/rJ6pLZnOSTkcd4WvCq2diHmaSvWpsZpcm2JprAm');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `pesanan` varchar(60) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `jumlah` int(60) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_wa` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `nama`, `pesanan`, `menu`, `jumlah`, `alamat`, `email`, `no_wa`, `status`, `foto`) VALUES
(24, 'novan', 'Food', 'Nasi Goreng ', 2, 'antasari', 'usus@gmail.com', '0831839128', 'sudah dibayar', NULL),
(25, 'abay', 'non-coffee', 'Red Velvet', 2, 'antasari', 'watiwati@gmail.com', '0812947838', 'sudah dibayar', NULL),
(26, 'abang', 'Food', 'Ayam Geprek ', 1, 'sutomo', 'lihatini@gmail.com', '081345678778', 'sudah dibayar', NULL),
(27, 'luffy', 'Snacks', 'Nugget & Sausage ', 3, 'kapal1', 'onepiece@gmail.com', '1111111', 'belum dibayar', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

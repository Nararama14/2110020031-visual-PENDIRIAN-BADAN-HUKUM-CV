-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 02:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2110020031`
--

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE `cv` (
  `kd_cv` int(20) NOT NULL,
  `nama_cv` varchar(30) NOT NULL,
  `alamat_cv` varchar(30) NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `modal` varchar(30) NOT NULL,
  `jenis_usaha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`kd_cv`, `nama_cv`, `alamat_cv`, `tgl_berdiri`, `modal`, `jenis_usaha`) VALUES
(1232, 'rame', 'batulincar', '2023-05-03', '200000', 'jasa'),
(1234, 'rama', 'batulincar', '2023-05-16', '12000', 'baju');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `nik` int(5) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `pass` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`nik`, `nama_petugas`, `user_name`, `pass`) VALUES
(123, 'ramadhan', 'admin', 'admin'),
(1234, 'rama2', 'admin2', '123'),
(1235, 'rama3', 'admin3', '123'),
(1236, 'rama4', 'admin4', '123');

-- --------------------------------------------------------

--
-- Table structure for table `notaris`
--

CREATE TABLE `notaris` (
  `kd_notaris` int(20) NOT NULL,
  `nm_notaris` varchar(30) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat_notaris` varchar(30) NOT NULL,
  `no_tlp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notaris`
--

INSERT INTO `notaris` (`kd_notaris`, `nm_notaris`, `jk`, `alamat_notaris`, `no_tlp`) VALUES
(12345, 'ramanota', 'P', 'batulicin', '8273728'),
(12346, 'notanota', 'L', 'batukasar', '8273722');

-- --------------------------------------------------------

--
-- Table structure for table `pemilk`
--

CREATE TABLE `pemilk` (
  `kd_pemilik` int(20) NOT NULL,
  `nm_pemilik` varchar(30) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `almt_pemilik` varchar(30) NOT NULL,
  `no_tlp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemilk`
--

INSERT INTO `pemilk` (`kd_pemilik`, `nm_pemilik`, `jk`, `almt_pemilik`, `no_tlp`) VALUES
(1234, 'ramapmk', 'L', 'batulicin ', '082159305132'),
(1235, 'damapmk', 'L', 'batukering', '738238237');

-- --------------------------------------------------------

--
-- Table structure for table `proses_register`
--

CREATE TABLE `proses_register` (
  `no_register` int(20) NOT NULL,
  `tgl_register` date NOT NULL,
  `batas_pendirian` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `kd_cv` int(20) NOT NULL,
  `kd_pemilik` int(20) NOT NULL,
  `nik` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`kd_cv`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `notaris`
--
ALTER TABLE `notaris`
  ADD PRIMARY KEY (`kd_notaris`);

--
-- Indexes for table `pemilk`
--
ALTER TABLE `pemilk`
  ADD PRIMARY KEY (`kd_pemilik`);

--
-- Indexes for table `proses_register`
--
ALTER TABLE `proses_register`
  ADD PRIMARY KEY (`no_register`),
  ADD KEY `kd_cv` (`kd_cv`,`kd_pemilik`,`nik`),
  ADD KEY `nik` (`nik`),
  ADD KEY `kd_pemilik` (`kd_pemilik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cv`
--
ALTER TABLE `cv`
  MODIFY `kd_cv` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12325;

--
-- AUTO_INCREMENT for table `notaris`
--
ALTER TABLE `notaris`
  MODIFY `kd_notaris` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12348;

--
-- AUTO_INCREMENT for table `pemilk`
--
ALTER TABLE `pemilk`
  MODIFY `kd_pemilik` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;

--
-- AUTO_INCREMENT for table `proses_register`
--
ALTER TABLE `proses_register`
  MODIFY `no_register` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `proses_register`
--
ALTER TABLE `proses_register`
  ADD CONSTRAINT `proses_register_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `login_admin` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proses_register_ibfk_2` FOREIGN KEY (`kd_cv`) REFERENCES `cv` (`kd_cv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proses_register_ibfk_3` FOREIGN KEY (`kd_pemilik`) REFERENCES `pemilk` (`kd_pemilik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

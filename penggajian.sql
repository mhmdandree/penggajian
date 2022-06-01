-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 04:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara_berita`
--

CREATE TABLE `acara_berita` (
  `id_program` int(11) NOT NULL,
  `id_acara` int(11) DEFAULT NULL,
  `nama_siaran` varchar(225) DEFAULT NULL,
  `simbol_usia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acara_hiburan`
--

CREATE TABLE `acara_hiburan` (
  `id_program` int(11) NOT NULL,
  `id_acara` int(11) DEFAULT NULL,
  `nama_acara` varchar(225) DEFAULT NULL,
  `simbol_usia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acara_olahraga`
--

CREATE TABLE `acara_olahraga` (
  `id_program` int(11) NOT NULL,
  `id_acara` int(11) DEFAULT NULL,
  `nama_acara` varchar(225) DEFAULT NULL,
  `simbol_usia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acara_pendidikan`
--

CREATE TABLE `acara_pendidikan` (
  `id_program` int(11) NOT NULL,
  `id_acara` int(11) DEFAULT NULL,
  `nama_acara` varchar(225) DEFAULT NULL,
  `simbol_usia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acara_promo`
--

CREATE TABLE `acara_promo` (
  `id_program` int(11) NOT NULL,
  `id_acara` int(11) DEFAULT NULL,
  `nama_acara` varchar(225) DEFAULT NULL,
  `simbol_usia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_acara`
--

CREATE TABLE `data_acara` (
  `id_acara` int(11) NOT NULL,
  `id_program` int(11) NOT NULL DEFAULT 0,
  `nama_acara` varchar(225) DEFAULT NULL,
  `sifat_siaran` varchar(50) DEFAULT NULL,
  `jenis_program` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_acara`
--

INSERT INTO `data_acara` (`id_acara`, `id_program`, `nama_acara`, `sifat_siaran`, `jenis_program`, `photo`) VALUES
(2326, 101, 'INDONESIA HARI INI', 'Live', 'Berita', 'acara-211202-724ec4048c.jpg'),
(2327, 101, 'INFO COVID 19 TERKINI', 'Live', 'Berita', 'acara-211202-63209cf4b0.jpg'),
(31895, 102, 'BELAJAR DARI RUMAH', 'Tunda', 'Pendidikan', 'acara-211202-4722692a4f.jpg'),
(36457, 104, 'THE TRAINS', 'Tunda', 'Hiburan', 'acara-211202-f98621cbce.jpg'),
(42873, 102, 'SAHABAT PELANGI', 'Tunda', 'Pendidikan', 'acara-211202-8193681acb.jpg'),
(43971, 103, 'SALAM OLAHRAGA', 'Tunda', 'Olahraga', 'acara-211202-09240b921d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'HRD', '4000000', '600000', '400000'),
(2, 'Staff Marketing', '2500000', '300000', '200000'),
(3, 'Admin', '2200000', '300000', '200000'),
(4, 'Sales', '2500000', '300000', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(1, '012021', '0987654321', 'Dodi', 'Laki-Laki', 'Staff Marketing', 24, 0, 0),
(2, '012021', '123456789', 'Fauzi', 'Laki-Laki', 'Admin', 22, 0, 1),
(3, '112021', '0987654321', 'Dodi', 'Laki-Laki', 'Staff Marketing', -1, 0, 0),
(4, '112021', '123456789', 'Fauzi', 'Laki-Laki', 'Admin', 6, 0, -2),
(5, '112021', '0999899098', 'rivan', 'Laki-Laki', 'Admin', 0, 0, 0),
(6, '122021', '123456789', 'Fauzi', 'Laki-Laki', 'Admin', 1, 0, 0),
(7, '122021', '0987654321', 'M Rivan Padila', 'Laki-Laki', 'Staff Marketing', 1, 0, 0),
(8, '122021', '0999899098', 'rivan', 'Laki-Laki', 'Admin', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(32) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(1, '123456789', 'Fauzi', 'fauzi', '0bd9897bf12294ce35fdc0e21065c8a7', 'Laki-Laki', 'Admin', '2020-12-26', 'Karyawan Tetap', 'pegawai-210101-a7ca89f5fc.png', 1),
(2, '0987654321', 'M Rivan Padila', 'rivan', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-Laki', 'Staff Marketing', '2021-01-02', 'Karyawan Tidak Tetap', 'pegawai-211204-671b19952b.jpeg', 2),
(3, '0999899098', 'admin', 'admin', '7812e6305f6679ceafedd5fe94909a37', 'Laki-Laki', 'Admin', '2021-11-28', 'Karyawan Tetap', '123.png', 1),
(5, '123', 'Abimanyu', 'abimanyu', '827ccb0eea8a706c4c34a16891f84e7b', 'Laki-Laki', 'Staff Marketing', '2022-05-30', 'Karyawan Tetap', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_susunan`
--

CREATE TABLE `data_susunan` (
  `no` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `id_acara` int(11) DEFAULT NULL,
  `tanggal_siaran` date DEFAULT NULL,
  `waktu_siaran` time DEFAULT NULL,
  `nama_acara` varchar(225) DEFAULT NULL,
  `sifat_siaran` varchar(50) DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `jenis_program` varchar(100) DEFAULT NULL,
  `simbol_usia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_susunan`
--

INSERT INTO `data_susunan` (`no`, `id_program`, `id_acara`, `tanggal_siaran`, `waktu_siaran`, `nama_acara`, `sifat_siaran`, `durasi`, `jenis_program`, `simbol_usia`) VALUES
(2342146, 106, 132423, '2021-12-07', '14:25:00', 'INDONESIA HARI INI', 'Live', '30\'', 'Olahraga', 'R13+'),
(2342147, 123, 0, '2022-06-01', '08:15:00', 'Pernikahan Beni dan Dila', 'Tunda', '1 day', 'Hiburan', 'D18+');

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'Alpha', 100000),
(2, 'Sakit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `program_acara`
--

CREATE TABLE `program_acara` (
  `id_program` int(11) NOT NULL,
  `jenis_program` varchar(50) DEFAULT NULL,
  `tanggal_pembuatan` date NOT NULL,
  `tahun_pembuatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_acara`
--

INSERT INTO `program_acara` (`id_program`, `jenis_program`, `tanggal_pembuatan`, `tahun_pembuatan`) VALUES
(101, 'Berita', '2021-11-30', '2021'),
(102, 'Pendidikan', '2021-11-30', '2021'),
(103, 'Olahraga', '2021-11-30', '2021'),
(104, 'Hiburan', '2021-11-30', '2021'),
(105, 'Promo', '2021-11-30', '2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara_berita`
--
ALTER TABLE `acara_berita`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `acara_hiburan`
--
ALTER TABLE `acara_hiburan`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `acara_olahraga`
--
ALTER TABLE `acara_olahraga`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `acara_pendidikan`
--
ALTER TABLE `acara_pendidikan`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `acara_promo`
--
ALTER TABLE `acara_promo`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `data_acara`
--
ALTER TABLE `data_acara`
  ADD PRIMARY KEY (`id_acara`);

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `data_susunan`
--
ALTER TABLE `data_susunan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_acara`
--
ALTER TABLE `program_acara`
  ADD PRIMARY KEY (`id_program`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara_berita`
--
ALTER TABLE `acara_berita`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acara_hiburan`
--
ALTER TABLE `acara_hiburan`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acara_olahraga`
--
ALTER TABLE `acara_olahraga`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acara_pendidikan`
--
ALTER TABLE `acara_pendidikan`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acara_promo`
--
ALTER TABLE `acara_promo`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_acara`
--
ALTER TABLE `data_acara`
  MODIFY `id_acara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128137;

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_susunan`
--
ALTER TABLE `data_susunan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2342148;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 04:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesmonitoring`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `cek_jurnal`
-- (See below for the actual view)
--
CREATE TABLE `cek_jurnal` (
`pk` int(11)
,`notrs` varchar(50)
,`tgl` date
,`noref` varchar(50)
,`keterangan` varchar(100)
,`totaldebet` double
,`totalkredit` double
,`ctn` varchar(220)
,`jnspst` varchar(2)
,`stspst` tinyint(4)
,`stsref` tinyint(4)
,`jurnalkhusus` varchar(100)
,`dari` varchar(100)
,`nobaris` int(11)
,`rekfk` varchar(10)
,`nmrek` varchar(100)
,`debet` double
,`kredit` double
,`divisi` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cek_jurnal_tidakbalance`
-- (See below for the actual view)
--
CREATE TABLE `cek_jurnal_tidakbalance` (
`pk` int(11)
,`notrs` varchar(50)
,`tgl` date
,`noref` varchar(50)
,`keterangan` varchar(100)
,`totaldebet` double
,`totalkredit` double
,`ctn` varchar(220)
,`jnspst` varchar(2)
,`stspst` tinyint(4)
,`stsref` tinyint(4)
,`dateadded` datetime
,`addedbyfk` int(11)
,`datemodified` datetime
,`lastuserfk` int(11)
,`cabangfk` int(11)
,`jurnalkhusus` varchar(100)
,`dari` varchar(100)
,`hpp` tinyint(4)
,`divisi` int(11)
,`unitdari` varchar(10)
,`unitke` varchar(10)
,`nmcomp` varchar(50)
,`SumOfdebet` double
,`SumOfkredit` double
,`statu` int(1)
,`sisa` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cek_jurnal_tidakbalance2`
-- (See below for the actual view)
--
CREATE TABLE `cek_jurnal_tidakbalance2` (
`notrs` varchar(50)
,`noref` varchar(50)
,`debet` double
,`kredit` double
,`hasil` double
);

-- --------------------------------------------------------

--
-- Table structure for table `cetak_bukutabungan`
--

CREATE TABLE `cetak_bukutabungan` (
  `nobaris` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `sandi` varchar(10) NOT NULL,
  `debet` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `baris` int(11) DEFAULT NULL,
  `pk` int(11) NOT NULL,
  `ctn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cetak_bukutabungan`
--

INSERT INTO `cetak_bukutabungan` (`nobaris`, `tgl`, `sandi`, `debet`, `kredit`, `saldo`, `status`, `baris`, `pk`, `ctn`) VALUES
(1, '2023-01-31', 'STR', 0, 33230, 33230, 1, 1, 958, 'SHU_2022(50%)'),
(2, '2023-01-31', 'BNG', 0, 99.69, 33329.69, 1, 2, 959, ''),
(3, '2023-02-28', 'BNG', 0, 99.98907, 33429.67907, 1, 3, 960, ''),
(4, '2023-03-31', 'BNG', 0, 100.28903721, 33529.96810721, 1, 4, 961, ''),
(5, '2023-05-01', 'STR', 0, 6000000, 6033529.9681072, 1, 5, 962, '');

-- --------------------------------------------------------

--
-- Table structure for table `cetak_katalog`
--

CREATE TABLE `cetak_katalog` (
  `kd` varchar(80) NOT NULL,
  `bd` varchar(80) NOT NULL,
  `nmitem` varchar(100) NOT NULL,
  `hargajl` double NOT NULL DEFAULT 0,
  `grosira` double NOT NULL DEFAULT 0,
  `pk` int(11) NOT NULL,
  `itemfk` int(11) NOT NULL,
  `kd1` varchar(50) NOT NULL,
  `bd1` varchar(50) NOT NULL,
  `nmitem1` varchar(100) NOT NULL,
  `hargajl1` double NOT NULL DEFAULT 0,
  `grosira1` double NOT NULL DEFAULT 0,
  `kd2` varchar(50) NOT NULL,
  `bd2` varchar(50) NOT NULL,
  `nmitem2` varchar(100) NOT NULL,
  `hargajl2` double NOT NULL DEFAULT 0,
  `grosira2` double NOT NULL DEFAULT 0,
  `kd3` varchar(50) NOT NULL,
  `bd3` varchar(50) NOT NULL,
  `nmitem3` varchar(100) NOT NULL,
  `hargajl3` double NOT NULL DEFAULT 0,
  `grosira3` double NOT NULL DEFAULT 0,
  `periode` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cetak_katalog`
--

INSERT INTO `cetak_katalog` (`kd`, `bd`, `nmitem`, `hargajl`, `grosira`, `pk`, `itemfk`, `kd1`, `bd1`, `nmitem1`, `hargajl1`, `grosira1`, `kd2`, `bd2`, `nmitem2`, `hargajl2`, `grosira2`, `kd3`, `bd3`, `nmitem3`, `hargajl3`, `grosira3`, `periode`) VALUES
('0001', '', 'Barang Aki', 15000, 15000, 51, 1, '', '', '', 0, 0, '', '', '', 0, 0, '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cetak_tabungan`
--

CREATE TABLE `cetak_tabungan` (
  `nobaris` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `sandi` varchar(10) NOT NULL,
  `debet` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `baris` int(11) DEFAULT NULL,
  `pk` int(11) NOT NULL,
  `ctn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cetak_tabungan`
--

INSERT INTO `cetak_tabungan` (`nobaris`, `tgl`, `sandi`, `debet`, `kredit`, `saldo`, `status`, `baris`, `pk`, `ctn`) VALUES
(1, '2019-12-31', 'STR', 0, 7500, 7500, 1, 1, 2222, ''),
(2, '2019-12-31', 'STR', 0, 8450000, 8457500, 1, 2, 2223, ''),
(3, '2019-12-31', 'STR', 0, 419192.07, 8876692.07, 1, 3, 2224, ''),
(4, '2019-12-31', 'TRK', 40648.92, 0, 8836043.15, 1, 4, 2225, ''),
(5, '2019-12-31', 'STR', 0, 467190, 9303233.15, 1, 5, 2226, ''),
(6, '2020-01-01', 'STR', 0, 150000, 9453233.15, 1, 6, 2227, ''),
(7, '2020-02-01', 'STR', 0, 150000, 9603233.15, 1, 7, 2228, ''),
(8, '2020-03-01', 'STR', 0, 150000, 9753233.15, 1, 8, 2229, ''),
(9, '2020-04-01', 'STR', 0, 628476.11, 10381709.26, 1, 9, 2230, ''),
(10, '2020-04-01', 'STR', 0, 150000, 10531709.26, 1, 10, 2231, ''),
(11, '2020-05-01', 'STR', 0, 150000, 10681709.26, 1, 11, 2232, ''),
(12, '2020-06-01', 'STR', 0, 150000, 10831709.26, 1, 12, 2233, ''),
(13, '2020-07-29', 'STR', 0, 150000, 10981709.26, 1, 13, 2234, ''),
(14, '2020-08-01', 'STR', 0, 150000, 11131709.26, 1, 14, 2235, ''),
(NULL, NULL, '', NULL, NULL, NULL, 0, 16, 2236, ''),
(15, '2020-09-01', 'STR', 0, 150000, 11281709.26, 1, 16, 2237, ''),
(16, '2020-10-01', 'STR', 0, 150000, 11431709.26, 1, 17, 2238, ''),
(17, '2020-11-01', 'STR', 0, 150000, 11581709.26, 1, 18, 2239, ''),
(18, '2020-12-01', 'STR', 0, 150000, 11731709.26, 1, 19, 2240, ''),
(19, '2020-12-31', 'BNG', 0, 800, 11732509.26, 1, 20, 2241, ''),
(20, '2021-01-27', 'STR', 0, 150000, 11882509.26, 1, 21, 2242, ''),
(21, '2021-01-31', 'BNG', 0, 200, 11882709.26, 1, 22, 2243, ''),
(22, '2021-02-03', 'STR', 0, 150000, 12032709.26, 1, 23, 2244, ''),
(23, '2021-02-26', 'STR', 0, 1466850.14, 13499559.4, 1, 24, 2245, ''),
(24, '2021-02-28', 'BNG', 0, 200, 13499759.4, 1, 25, 2246, ''),
(25, '2021-03-19', 'STR', 0, 150000, 13649759.4, 1, 26, 2247, ''),
(26, '2021-03-31', 'BNG', 0, 200, 13649959.4, 1, 27, 2248, ''),
(27, '2021-04-05', 'STR', 0, 150000, 13799959.4, 1, 28, 2249, ''),
(28, '2021-04-30', 'BNG', 0, 200, 13800159.4, 1, 29, 2250, ''),
(29, '2021-05-17', 'STR', 0, 150000, 13950159.4, 1, 30, 2251, ''),
(30, '2021-05-31', 'BNG', 0, 200, 13950359.4, 1, 31, 2252, ''),
(31, '2021-06-18', 'STR', 0, 150000, 14100359.4, 1, 32, 2253, ''),
(32, '2021-06-30', 'BNG', 0, 200, 14100559.4, 1, 33, 2254, ''),
(33, '2021-07-08', 'STR', 0, 150000, 14250559.4, 1, 34, 2255, ''),
(34, '2021-07-31', 'BNG', 0, 200, 14250759.4, 1, 35, 2256, ''),
(35, '2021-08-03', 'STR', 0, 150000, 14400759.4, 1, 36, 2257, ''),
(36, '2021-08-31', 'BNG', 0, 200, 14400959.4, 1, 37, 2258, ''),
(37, '2021-09-01', 'STR', 0, 114675, 14515634.4, 1, 38, 2259, ''),
(38, '2021-09-07', 'STR', 0, 150000, 14665634.4, 1, 39, 2260, ''),
(39, '2021-09-30', 'BNG', 0, 200, 14665834.4, 1, 40, 2261, ''),
(40, '2021-10-08', 'STR', 0, 150000, 14815834.4, 1, 41, 2262, ''),
(41, '2021-10-31', 'BNG', 0, 200, 14816034.4, 1, 42, 2263, ''),
(42, '2021-11-03', 'STR', 0, 150000, 14966034.4, 1, 43, 2264, ''),
(43, '2021-11-30', 'BNG', 0, 200, 14966234.4, 1, 44, 2265, ''),
(44, '2021-12-02', 'STR', 0, 150000, 15116234.4, 1, 45, 2266, ''),
(45, '2021-12-31', 'BNG', 0, 200, 15116434.4, 1, 46, 2267, ''),
(46, '2022-01-04', 'STR', 0, 150000, 15266434.4, 1, 47, 2268, ''),
(47, '2022-01-31', 'STR', 0, 150000, 15416434.4, 1, 48, 2269, ''),
(48, '2022-01-31', 'BNG', 0, 800, 15417234.4, 1, 49, 2270, ''),
(49, '2022-02-28', 'BNG', 0, 800, 15418034.4, 1, 50, 2271, ''),
(50, '2022-03-09', 'STR', 0, 150000, 15568034.4, 1, 51, 2272, ''),
(51, '2022-03-31', 'STR', 0, 150000, 15718034.4, 1, 52, 2273, ''),
(52, '2022-03-31', 'BNG', 0, 800, 15718834.4, 1, 53, 2274, ''),
(53, '2022-04-29', 'STR', 0, 150000, 15868834.4, 1, 54, 2275, ''),
(54, '2022-04-30', 'BNG', 0, 800, 15869634.4, 1, 55, 2276, ''),
(55, '2022-05-31', 'STR', 0, 150000, 16019634.4, 1, 56, 2277, ''),
(56, '2022-05-31', 'BNG', 0, 800, 16020434.4, 1, 57, 2278, ''),
(57, '2022-06-30', 'BNG', 0, 900, 16021334.4, 1, 58, 2279, ''),
(58, '2022-07-05', 'TRK', 300000, 0, 15721334.4, 1, 59, 2280, ''),
(59, '2022-07-06', 'STR', 0, 150000, 15871334.4, 1, 60, 2281, ''),
(60, '2022-07-28', 'STR', 0, 150000, 16021334.4, 1, 61, 2282, ''),
(61, '2022-09-06', 'STR', 0, 150000, 16171334.4, 1, 62, 2283, ''),
(62, '2022-10-30', 'STR', 0, 300000, 16471334.4, 1, 63, 2284, ''),
(63, '2022-11-29', 'STR', 0, 150000, 16621334.4, 1, 64, 2285, ''),
(64, '2022-11-30', 'BNG', 0, 600, 16621934.4, 1, 65, 2286, ''),
(65, '2022-12-01', 'STR', 0, 1025810, 17647744.4, 1, 66, 2287, ''),
(66, '2022-12-20', 'STR', 0, 150000, 17797744.4, 1, 67, 2288, ''),
(67, '2022-12-30', 'BNG', 0, 2100, 17799844.4, 1, 68, 2289, ''),
(68, '2023-01-31', 'STR', 0, 94302, 17894146.4, 1, 69, 2290, 'SHU_2022(50%)'),
(69, '2023-01-31', 'STR', 0, 94302, 17988448.4, 1, 70, 2291, 'SHU_2022(50%)'),
(70, '2023-01-31', 'STR', 0, 150000, 18138448.4, 1, 71, 2292, ''),
(71, '2023-01-31', 'STR', 0, 1000000, 19138448.4, 1, 72, 2293, 'Pemotongan Jan 2023'),
(72, '2023-01-31', 'BNG', 0, 3245.255, 19141693.655, 1, 73, 2294, ''),
(73, '2023-02-20', 'STR', 0, 1000000, 20141693.655, 1, 74, 2295, 'Pemotongan Feb2023'),
(74, '2023-02-21', 'STR', 0, 150000, 20291693.655, 1, 75, 2296, ''),
(75, '2023-02-28', 'BNG', 0, 8245.255, 20299938.91, 1, 76, 2297, ''),
(76, '2023-03-20', 'STR', 0, 150000, 20449938.91, 1, 77, 2298, ''),
(77, '2023-03-20', 'STR', 0, 1000000, 21449938.91, 1, 78, 2299, 'Pemotongan Maret 2023'),
(78, '2023-03-31', 'TRK', 200000, 0, 21249938.91, 1, 79, 2300, 'Bayar Arisan'),
(79, '2023-03-31', 'TRK', 100000, 0, 21149938.91, 1, 80, 2301, 'Kas Bon'),
(80, '2023-03-31', 'BNG', 0, 7495.255, 21157434.165, 1, 81, 2302, ''),
(81, '2023-04-19', 'STR', 0, 150000, 21307434.165, 1, 82, 2303, ''),
(82, '2023-04-19', 'STR', 0, 1000000, 22307434.165, 1, 83, 2304, 'Pemotongan April 2023');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_laporan`
--

CREATE TABLE `daftar_laporan` (
  `menu` int(11) NOT NULL,
  `submenu` int(11) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `nmform` varchar(50) NOT NULL,
  `pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_laporan`
--

INSERT INTO `daftar_laporan` (`menu`, `submenu`, `nm`, `nmform`, `pk`) VALUES
(1, 1, 'Daftar Simpanan', 'rpt_daftarisimpanan', 1),
(1, 2, 'Transaksi Harian', 'rpt_transaksi_simpanan', 2),
(1, 3, 'Simpanan per Nasabah', 'rpt_simpanan_nasabah', 3),
(2, 1, 'Daftar Kredit', 'rpt_daftar_kredit', 4),
(2, 2, 'Transaksi Kredit', 'rpt_trx_kredit', 5),
(2, 3, 'Saldo Kredit', 'rpt_saldo_kredit', 6),
(2, 4, 'Kredit Jatuh Tempo', 'rpt_jtmp_kredit', 7);

-- --------------------------------------------------------

--
-- Table structure for table `downloadfile`
--

CREATE TABLE `downloadfile` (
  `pk` int(11) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `path` text NOT NULL,
  `ctn` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `downloadfile`
--

INSERT INTO `downloadfile` (`pk`, `nm`, `path`, `ctn`) VALUES
(1, 'Formulir Tabungan Program', 'https://www.mediafire.com/file/iua7rq57c0p1qrq/FORM_TAB_PROGRAM.doc/file', 'Formulir Tabungan Program'),
(2, 'Formulir Elektrik', 'https://www.mediafire.com/file/ouaevom6csqa36h/Formulir_Elektronik.doc/file', 'Formulir pengembalian barang'),
(3, 'Perjanjian Pinjaman', 'https://www.mediafire.com/file/nn405r62zfmq831/Perjanjian_Pinjaman.doc/file', 'Silakan download file ini untuk mengisi formulir perjanjian pinjaman');

-- --------------------------------------------------------

--
-- Table structure for table `format_lr`
--

CREATE TABLE `format_lr` (
  `rekfk` varchar(10) NOT NULL,
  `grupfk` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `format_lr`
--

INSERT INTO `format_lr` (`rekfk`, `grupfk`, `status`, `nomor`) VALUES
('', '4-21', 'Pendapatan', 1),
('', '4-22', 'Pendapatan', 2),
('', '4-23', 'Pendapatan', 3),
('', '4-25', 'Pendapatan', 4),
('', '4-26', 'Pendapatan', 5),
('', '4-11', 'Pendapatan', 6),
('', '4-12', 'Pendapatan', 7),
('', '5-10', 'Biaya', 8),
('', '5-20', 'Biaya', 9),
('', '6-11', 'Biaya', 10),
('', '6-12', 'Biaya', 11),
('', '6-13', 'Biaya', 12),
('', '6-14', 'Biaya', 13),
('', '6-15', 'Biaya', 14),
('', '6-16', 'Biaya', 15),
('', '6-17', 'Biaya', 16),
('', '6-18', 'Biaya', 17),
('', '6-21', 'Biaya', 18),
('', '6-22', 'Biaya', 19),
('', '6-23', 'Biaya', 20),
('', '6-24', 'Biaya', 21),
('', '6-25', 'Biaya', 22),
('', '6-26', 'Biaya', 23);

-- --------------------------------------------------------

--
-- Table structure for table `format_neraca`
--

CREATE TABLE `format_neraca` (
  `pk` int(11) NOT NULL,
  `grupfk` varchar(10) NOT NULL,
  `grup` varchar(100) NOT NULL,
  `subgrup` varchar(100) NOT NULL,
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `format_neraca`
--

INSERT INTO `format_neraca` (`pk`, `grupfk`, `grup`, `subgrup`, `divisi`) VALUES
(1, '1-11', 'AKTIVA', 'KAS', 1),
(2, '1-12', 'AKTIVA', '', 1),
(3, '1-13', 'AKTIVA', '', 1),
(4, '1-14', 'AKTIVA', '', 1),
(5, '1-15', 'AKTIVA', '', 1),
(6, '1-16', 'AKTIVA', '', 1),
(7, '1-17', 'AKTIVA', '', 1),
(8, '1-18', 'AKTIVA', '', 1),
(9, '1-19', 'AKTIVA', '', 1),
(10, '1-21', 'AKTIVA', '', 1),
(11, '1-22', 'AKTIVA', '', 1),
(12, '1-30', 'AKTIVA', '', 1),
(13, '1-31', 'AKTIVA', '', 1),
(14, '1-32', 'AKTIVA', '', 1),
(15, '2-11', 'KEWAJIBAN DAN MODAL', '', 1),
(16, '2-12', 'KEWAJIBAN DAN MODAL', '', 1),
(17, '2-13', 'KEWAJIBAN DAN MODAL', '', 1),
(18, '2-14', 'KEWAJIBAN DAN MODAL', '', 1),
(19, '2-15', 'KEWAJIBAN DAN MODAL', '', 1),
(20, '2-16', 'KEWAJIBAN DAN MODAL', '', 1),
(21, '3-11', 'KEWAJIBAN DAN MODAL', '', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jurnaldetail_cek`
-- (See below for the actual view)
--
CREATE TABLE `jurnaldetail_cek` (
`notrs` varchar(50)
,`SumOfdebet` double
,`SumOfkredit` double
);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_labarugi`
--

CREATE TABLE `laporan_labarugi` (
  `nomor` int(11) NOT NULL,
  `rekfk` varchar(10) NOT NULL,
  `nm` text NOT NULL,
  `saldo` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `periode` varchar(10) NOT NULL,
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_labarugi`
--

INSERT INTO `laporan_labarugi` (`nomor`, `rekfk`, `nm`, `saldo`, `total`, `periode`, `divisi`) VALUES
(13, '4-111', 'Penjualan', 13000, NULL, '202312', 1),
(14, '', 'Pendapatan Toko', NULL, 13000, '202312', 1),
(15, '5-101', 'Harga Pokok Penjualan', 9000, NULL, '202312', 1),
(16, '', 'Beban Pokok', NULL, -9000, '202312', 1),
(17, '6-151', 'Beban Penyusutan Peraltan Pusat', 133333, NULL, '202401', 1),
(18, '', 'Beban Penyusutan', NULL, -133333, '202401', 1),
(23, '4-111', 'Penjualan', 160700, NULL, '202311', 1),
(24, '', 'Pendapatan Toko', NULL, 160700, '202311', 1),
(25, '5-101', 'Harga Pokok Penjualan', 209000, NULL, '202311', 1),
(26, '', 'Beban Pokok', NULL, -209000, '202311', 1);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_labarugi_all`
--

CREATE TABLE `laporan_labarugi_all` (
  `nomor` int(10) NOT NULL,
  `rekfk` varchar(10) DEFAULT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `nmgroup` varchar(100) DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `periode` varchar(20) NOT NULL,
  `divisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_labarugi_all`
--

INSERT INTO `laporan_labarugi_all` (`nomor`, `rekfk`, `nm`, `nmgroup`, `saldo`, `total`, `periode`, `divisi`) VALUES
(1, '6-151', 'Beban Penyusutan Peraltan Pusat', NULL, 133333, NULL, '202401', 0),
(2, NULL, NULL, 'Beban Penyusutan', NULL, -133333, '202401', 0);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_neraca`
--

CREATE TABLE `laporan_neraca` (
  `pk` int(11) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `rekfk` varchar(50) NOT NULL,
  `nm` varchar(150) NOT NULL,
  `grupfk` varchar(50) NOT NULL,
  `grup` varchar(100) NOT NULL,
  `subgrup` varchar(100) NOT NULL,
  `saldo` double NOT NULL,
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_neraca`
--

INSERT INTO `laporan_neraca` (`pk`, `periode`, `rekfk`, `nm`, `grupfk`, `grup`, `subgrup`, `saldo`, `divisi`) VALUES
(13, '202311', '1-111', 'Kas Kecil', '1-11', 'AKTIVA', 'KAS', 136000, 0),
(14, '202311', '1-171', 'Persediaan Toko', '1-17', 'AKTIVA', 'PERSEDIAAN', 4285000, 0),
(15, '202311', '2-132', 'Hutang Dagang', '2-13', 'KEWAJIBAN DAN MODAL', 'HUTANG USAHA', 4372000, 0),
(16, '202311', '3-210', 'LabaTahun Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 0, 0),
(17, '202311', '3-213', 'Laba Bulan Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 49000, 0),
(25, '202312', '1-111', 'Kas Kecil', '1-11', 'AKTIVA', 'KAS', -7677900, 1),
(26, '202312', '1-124', 'Kas Kecil BRILink', '1-12', 'AKTIVA', 'BANK', 365135, 1),
(27, '202312', '1-145', 'Piutang Voucher', '1-14', 'AKTIVA', 'PIUTANG USAHA', 1172, 1),
(28, '202312', '1-171', 'Persediaan Toko', '1-17', 'AKTIVA', 'PERSEDIAAN', 6279448, 1),
(29, '202312', '1-191', 'Investasi Ke Pihak Kedua', '1-19', 'AKTIVA', 'INVESTASI', 7200000, 1),
(30, '202312', '2-132', 'Hutang Dagang', '2-13', 'KEWAJIBAN DAN MODAL', 'HUTANG USAHA', 5612123, 1),
(31, '202312', '3-210', 'LabaTahun Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 539925, 1),
(32, '202312', '3-213', 'Laba Bulan Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 4000, 1),
(33, '202401', '1-111', 'Kas Kecil', '1-11', 'AKTIVA', 'KAS', -7677900, 1),
(34, '202401', '1-124', 'Kas Kecil BRILink', '1-12', 'AKTIVA', 'BANK', 365135, 1),
(35, '202401', '1-145', 'Piutang Voucher', '1-14', 'AKTIVA', 'PIUTANG USAHA', 1172, 1),
(36, '202401', '1-171', 'Persediaan Toko', '1-17', 'AKTIVA', 'PERSEDIAAN', 6279448, 1),
(37, '202401', '1-191', 'Investasi Ke Pihak Kedua', '1-19', 'AKTIVA', 'INVESTASI', 7200000, 1),
(38, '202401', '1-221', 'Akumulasi Penyusutan Peralatan Pusat', '1-22', 'AKTIVA', 'AKUMULASI PENYUSUTAN', -133333, 1),
(39, '202401', '2-132', 'Hutang Dagang', '2-13', 'KEWAJIBAN DAN MODAL', 'HUTANG USAHA', 5612123, 1),
(40, '202401', '3-120', 'LabaTahun Lalu', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 543925, 1),
(41, '202401', '3-210', 'LabaTahun Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 0, 1),
(42, '202401', '3-213', 'Laba Bulan Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', -133333, 1),
(48, '202310', '3-210', 'LabaTahun Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 0, 1),
(49, '202310', '3-213', 'Laba Bulan Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 0, 1),
(50, '202311', '1-111', 'Kas Kecil', '1-11', 'AKTIVA', 'KAS', 91700, 1),
(51, '202311', '1-124', 'Kas Kecil BRILink', '1-12', 'AKTIVA', 'BANK', 70389, 1),
(52, '202311', '1-171', 'Persediaan Toko', '1-17', 'AKTIVA', 'PERSEDIAAN', -209000, 1),
(53, '202311', '3-210', 'LabaTahun Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', 0, 1),
(54, '202311', '3-213', 'Laba Bulan Berjalan', '3-11', 'KEWAJIBAN DAN MODAL', 'SIMPANAN ANGGOTA', -48300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_neraca_all`
--

CREATE TABLE `laporan_neraca_all` (
  `pk` int(11) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `rekfk` varchar(50) NOT NULL,
  `nm` varchar(150) NOT NULL,
  `grupfk` varchar(50) NOT NULL,
  `grup` varchar(100) NOT NULL,
  `subgrup` varchar(100) NOT NULL,
  `saldo` double NOT NULL,
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_cabang`
--

CREATE TABLE `m_cabang` (
  `pk` int(11) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_cabang`
--

INSERT INTO `m_cabang` (`pk`, `nm`, `alamat`, `aktif`) VALUES
(1, 'Cabang Negara', '', 1),
(2, 'Cabang Denpasar', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_cetak`
--

CREATE TABLE `m_cetak` (
  `pk` int(11) NOT NULL,
  `kd` varchar(50) NOT NULL,
  `bd` varchar(50) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `hargajl` double NOT NULL DEFAULT 0,
  `itemfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_cetak`
--

INSERT INTO `m_cetak` (`pk`, `kd`, `bd`, `nm`, `hargajl`, `itemfk`) VALUES
(1, '0001', '', 'Barang Aki', 15000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_daftarsandi`
--

CREATE TABLE `m_daftarsandi` (
  `kd` varchar(10) NOT NULL,
  `nm` varchar(30) NOT NULL,
  `sandi` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_daftarsandi`
--

INSERT INTO `m_daftarsandi` (`kd`, `nm`, `sandi`) VALUES
('ADM', 'Administrasi', 'Adm'),
('BDEP', 'Bunga Deposito', 'BDEP'),
('BNG', 'Bunga', 'Bunga'),
('DEP', 'Deposito', 'DEP'),
('PDEP', 'Pajak Deposito', 'PDEP'),
('PJK', 'Pajak', 'PJK'),
('SAM', 'Saldo Awal Mutasi', 'SAM'),
('SAT', 'Saldo Awal Tabungan', 'SAT'),
('STR', 'Setoran', 'STR'),
('TRF', 'Transfer/Pindah Buku', 'TRF'),
('TRK', 'Penarikan', 'TRK'),
('TRKD', 'Bayar Kredit', 'TRKD'),
('SHU1', 'SHU Keaktifan', 'SHU1'),
('SHU2', 'SHU Senioritas', 'SHU2'),
('PJM', 'Penyisihan Bunga PInjaman', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_departemen`
--

CREATE TABLE `m_departemen` (
  `pk` int(11) NOT NULL,
  `nm` varchar(50) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_departemen`
--

INSERT INTO `m_departemen` (`pk`, `nm`, `ket`) VALUES
(1, '-', '-'),
(5, 'SECURITY                      ', NULL),
(6, 'Public Area                   ', NULL),
(7, 'Programmer Supplier           ', NULL),
(8, 'Perhotelan & restoran         ', NULL),
(9, 'Pegawai Swasta                ', NULL),
(10, 'Manajemen                     ', NULL),
(11, 'Laundry                       ', NULL),
(12, 'Lain-lain                     ', NULL),
(13, 'Koperasi                      ', NULL),
(14, 'Kerja                         ', NULL),
(15, 'HOUSEKEEPING                  ', NULL),
(16, 'GO                            ', NULL),
(17, 'General Store                 ', NULL),
(18, 'FRONT OFFICE                  ', NULL),
(19, 'F&B-Restaurant                ', NULL),
(20, 'F&B Store                     ', NULL),
(21, 'F&B Kitchen                   ', NULL),
(22, 'F&B Dishwasher                ', NULL),
(23, 'F&B Bar                       ', NULL),
(24, 'Engineering                   ', NULL),
(25, 'Dishwasher                    ', NULL),
(26, 'Catering Supplier             ', NULL),
(27, 'Accounting/finance officer    ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_deposito`
--

CREATE TABLE `m_deposito` (
  `pk` int(11) NOT NULL,
  `nmdeposito` varchar(100) NOT NULL,
  `sistembunga` int(11) NOT NULL COMMENT '1= Saldo Rata-rata;2 = Saldo Minimum; 3= saldo Terakhir',
  `sukubunga` double DEFAULT 0,
  `jangkawaktu` int(11) NOT NULL DEFAULT 0,
  `saldominpajak` double NOT NULL DEFAULT 0,
  `pajak` double NOT NULL DEFAULT 0,
  `administrasi` double NOT NULL DEFAULT 0,
  `rekkas` varchar(10) DEFAULT '0',
  `reksetoran` varchar(10) NOT NULL,
  `rekpajak` varchar(10) NOT NULL,
  `rekpenarikan` varchar(10) NOT NULL,
  `rekbunga` text NOT NULL,
  `rekadministrasi` varchar(10) DEFAULT NULL,
  `rektitippajak` varchar(10) DEFAULT NULL,
  `rektitipbunga` varchar(10) DEFAULT NULL,
  `kodeawal` varchar(5) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_group_user_dt`
--

CREATE TABLE `m_group_user_dt` (
  `kd` int(11) DEFAULT NULL,
  `nmform` varchar(50) DEFAULT NULL,
  `stsadd` bit(1) DEFAULT NULL,
  `stsedit` bit(1) DEFAULT NULL,
  `stsdelete` bit(1) DEFAULT NULL,
  `stsview` bit(1) DEFAULT NULL,
  `editdetail` bit(1) DEFAULT NULL,
  `deletedetail` bit(1) DEFAULT NULL,
  `pk` int(11) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_group_user_dt`
--

INSERT INTO `m_group_user_dt` (`kd`, `nmform`, `stsadd`, `stsedit`, `stsdelete`, `stsview`, `editdetail`, `deletedetail`, `pk`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(15, 'm_group_user', b'1', b'1', b'1', b'1', b'0', b'0', 1258, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'dashboard', b'1', b'1', b'1', b'1', b'0', b'0', 1259, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'm_user', b'1', b'1', b'1', b'1', b'0', b'0', 1260, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'm_pinjaman', b'1', b'1', b'1', b'1', b'0', b'0', 1261, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'm_nasabah', b'1', b'1', b'1', b'1', b'0', b'0', 1262, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'm_tabungan', b'1', b'1', b'1', b'1', b'0', b'0', 1263, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'm_depart', b'1', b'1', b'1', b'1', b'0', b'0', 1264, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'm_kredit', b'1', b'1', b'1', b'1', b'0', b'0', 1265, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'm_rek_hd', b'1', b'1', b'1', b'1', b'0', b'0', 1266, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_deposit_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1267, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_tarikdeposito_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1268, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_orderbeli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1269, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_beli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1270, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_returbeli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1271, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_bayarhutang_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1272, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_bayarpiutang_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1273, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_jurnal_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1274, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_kasmasuk_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1275, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_kaskeluar_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1276, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_transferkas_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1277, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_transferitem_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1278, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_itemmasuk_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1279, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_itemkeluar_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1280, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_stokopname_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1281, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_supplier', b'1', b'1', b'1', b'1', b'0', b'0', 1282, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_konsumen', b'1', b'1', b'1', b'1', b'0', b'0', 1283, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_po', b'1', b'1', b'1', b'1', b'0', b'0', 1284, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_beli', b'1', b'1', b'1', b'1', b'0', b'0', 1285, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_beli_persupplier', b'1', b'1', b'1', b'1', b'0', b'0', 1286, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_beli_perpetugas', b'1', b'1', b'1', b'1', b'0', b'0', 1287, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_bayarhutang', b'1', b'1', b'1', b'1', b'0', b'0', 1288, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_jual', b'1', b'1', b'1', b'1', b'0', b'0', 1289, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_jual_peritem', b'1', b'1', b'1', b'1', b'0', b'0', 1290, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_jual_perkonsumen', b'1', b'1', b'1', b'1', b'0', b'0', 1291, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_labarugi_jual', b'1', b'1', b'1', b'1', b'0', b'0', 1292, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_bayarpiutang', b'1', b'1', b'1', b'1', b'0', b'0', 1293, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_alurkas', b'1', b'1', b'1', b'1', b'0', b'0', 1294, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'edithargaitem', b'1', b'1', b'1', b'1', b'0', b'0', 1295, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_transferitem', b'1', b'1', b'1', b'1', b'0', b'0', 1296, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_itemkeluar', b'1', b'1', b'1', b'1', b'0', b'0', 1297, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_itemmasuk', b'1', b'1', b'1', b'1', b'0', b'0', 1298, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_stokopname', b'1', b'1', b'1', b'1', b'0', b'0', 1299, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_nilaistok', b'1', b'1', b'1', b'1', b'0', b'0', 1300, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_jurnal', b'1', b'1', b'1', b'1', b'0', b'0', 1301, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_kaskeluar', b'1', b'1', b'1', b'1', b'0', b'0', 1302, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_kasmasuk', b'1', b'1', b'1', b'1', b'0', b'0', 1303, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_transferkas', b'1', b'1', b'1', b'1', b'0', b'0', 1304, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_bukubesar', b'1', b'1', b'1', b'1', b'0', b'0', 1305, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_neracasaldo', b'1', b'1', b'1', b'1', b'0', b'0', 1306, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_labarugi', b'1', b'1', b'1', b'1', b'0', b'0', 1307, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 'r_neraca', b'1', b'1', b'1', b'1', b'0', b'0', 1308, '2023-06-22 23:28:29', 0, NULL, 0),
(15, 't_jual_ae', b'1', b'1', b'1', b'1', b'0', b'1', 1309, '2023-06-22 23:28:29', 0, NULL, 0),
(14, 'm_group_user', b'1', b'1', b'1', b'1', b'0', b'0', 1848, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'dashboard', b'1', b'1', b'1', b'1', b'0', b'0', 1849, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'lockcabang', b'1', b'1', b'1', b'1', b'0', b'0', 1850, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'm_user', b'1', b'1', b'1', b'1', b'0', b'0', 1851, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'printer', b'1', b'1', b'1', b'1', b'0', b'0', 1852, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'm_konsumen', b'1', b'1', b'1', b'1', b'0', b'0', 1853, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'm_salesman', b'1', b'1', b'1', b'1', b'0', b'0', 1854, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'm_supplier', b'1', b'1', b'1', b'1', b'0', b'0', 1855, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'm_item', b'1', b'1', b'1', b'1', b'0', b'0', 1856, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'm_rek', b'1', b'1', b'1', b'1', b'0', b'0', 1857, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_deposit_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1858, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_tarikdeposito_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1859, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_orderbeli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1860, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_beli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1861, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_returbeli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1862, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_bayarhutang_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1863, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_bayarpiutang_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1864, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_returjual_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1865, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_jurnal_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1866, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_kasmasuk_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1867, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_kaskeluar_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1868, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_transferkas_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1869, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_transferitem_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1870, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_itemmasuk_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1871, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_itemkeluar_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1872, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_stokopname_ae', b'1', b'1', b'1', b'1', b'0', b'0', 1873, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_supplier', b'1', b'1', b'1', b'1', b'0', b'0', 1874, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_konsumen', b'1', b'1', b'1', b'1', b'0', b'0', 1875, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_po', b'1', b'1', b'1', b'1', b'0', b'0', 1876, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_beli', b'1', b'1', b'1', b'1', b'0', b'0', 1877, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'tanpastok', b'1', b'1', b'1', b'1', b'0', b'0', 1878, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_beli_persupplier', b'1', b'1', b'1', b'1', b'0', b'0', 1879, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_beli_perpetugas', b'1', b'1', b'1', b'1', b'0', b'0', 1880, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_bayarhutang', b'1', b'1', b'1', b'1', b'0', b'0', 1881, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_jual', b'1', b'1', b'1', b'1', b'0', b'0', 1882, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_jual_peritem', b'1', b'1', b'1', b'1', b'0', b'0', 1883, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_jual_perkonsumen', b'1', b'1', b'1', b'1', b'0', b'0', 1884, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_labarugi_jual', b'1', b'1', b'1', b'1', b'0', b'0', 1885, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_bayarpiutang', b'1', b'1', b'1', b'1', b'0', b'0', 1886, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_alurkas', b'1', b'1', b'1', b'1', b'0', b'0', 1887, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'edithargaitem', b'1', b'1', b'1', b'1', b'0', b'0', 1888, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_transferitem', b'1', b'1', b'1', b'1', b'0', b'0', 1889, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_itemkeluar', b'1', b'1', b'1', b'1', b'0', b'0', 1890, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_itemmasuk', b'1', b'1', b'1', b'1', b'0', b'0', 1891, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_stokopname', b'1', b'1', b'1', b'1', b'0', b'0', 1892, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_nilaistok', b'1', b'1', b'1', b'1', b'0', b'0', 1893, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_jurnal', b'1', b'1', b'1', b'1', b'0', b'0', 1894, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_kaskeluar', b'1', b'1', b'1', b'1', b'0', b'0', 1895, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_kasmasuk', b'1', b'1', b'1', b'1', b'0', b'0', 1896, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_transferkas', b'1', b'1', b'1', b'1', b'0', b'0', 1897, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_bukubesar', b'1', b'1', b'1', b'1', b'0', b'0', 1898, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_neracasaldo', b'1', b'1', b'1', b'1', b'0', b'0', 1899, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_labarugi', b'1', b'1', b'1', b'1', b'0', b'0', 1900, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'r_neraca', b'1', b'1', b'1', b'1', b'0', b'0', 1901, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 't_jual_ae', b'1', b'1', b'1', b'1', b'0', b'1', 1902, '2023-06-26 16:05:26', 4, NULL, 0),
(14, 'm_group_user', b'1', b'1', b'1', b'1', b'0', b'0', 2013, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'dashboard', b'1', b'1', b'1', b'1', b'0', b'0', 2014, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'lockcabang', b'1', b'1', b'1', b'1', b'0', b'0', 2015, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'm_user', b'1', b'1', b'1', b'1', b'0', b'0', 2016, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'printer', b'1', b'1', b'1', b'1', b'0', b'0', 2017, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'm_konsumen', b'1', b'1', b'1', b'1', b'0', b'0', 2018, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'm_salesman', b'1', b'1', b'1', b'1', b'0', b'0', 2019, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'm_supplier', b'1', b'1', b'1', b'1', b'0', b'0', 2020, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'm_item', b'1', b'1', b'1', b'1', b'0', b'0', 2021, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 'm_rek', b'1', b'1', b'1', b'1', b'0', b'0', 2022, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_deposit_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2023, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_tarikdeposito_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2024, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_orderbeli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2025, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_beli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2026, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_returbeli_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2027, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_bayarhutang_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2028, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_bayarpiutang_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2029, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_returjual_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2030, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_jurnal_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2031, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_kasmasuk_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2032, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_kaskeluar_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2033, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_transferkas_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2034, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_transferitem_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2035, '2023-08-09 17:53:03', 0, NULL, 0),
(14, 't_itemmasuk_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2036, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 't_itemkeluar_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2037, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 't_stokopname_ae', b'1', b'1', b'1', b'1', b'0', b'0', 2038, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_supplier', b'1', b'1', b'1', b'1', b'0', b'0', 2039, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_konsumen', b'1', b'1', b'1', b'1', b'0', b'0', 2040, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_po', b'1', b'1', b'1', b'1', b'0', b'0', 2041, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_beli', b'1', b'1', b'1', b'1', b'0', b'0', 2042, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'tanpastok', b'1', b'1', b'1', b'1', b'0', b'0', 2043, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_beli_persupplier', b'1', b'1', b'1', b'1', b'0', b'0', 2044, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_beli_perpetugas', b'1', b'1', b'1', b'1', b'0', b'0', 2045, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_bayarhutang', b'1', b'1', b'1', b'1', b'0', b'0', 2046, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_jual', b'1', b'1', b'1', b'1', b'0', b'0', 2047, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_jual_peritem', b'1', b'1', b'1', b'1', b'0', b'0', 2048, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_jual_perkonsumen', b'1', b'1', b'1', b'1', b'0', b'0', 2049, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_labarugi_jual', b'1', b'1', b'1', b'1', b'0', b'0', 2050, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_bayarpiutang', b'1', b'1', b'1', b'1', b'0', b'0', 2051, '2023-08-09 17:53:04', 0, NULL, 0),
(14, 'r_alurkas', b'1', b'1', b'1', b'1', b'0', b'0', 2052, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'edithargaitem', b'1', b'1', b'1', b'1', b'0', b'0', 2053, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_transferitem', b'1', b'1', b'1', b'1', b'0', b'0', 2054, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_itemkeluar', b'1', b'1', b'1', b'1', b'0', b'0', 2055, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_itemmasuk', b'1', b'1', b'1', b'1', b'0', b'0', 2056, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_stokopname', b'1', b'1', b'1', b'1', b'0', b'0', 2057, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_nilaistok', b'1', b'1', b'1', b'1', b'0', b'0', 2058, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_jurnal', b'1', b'1', b'1', b'1', b'0', b'0', 2059, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_kaskeluar', b'1', b'1', b'1', b'1', b'0', b'0', 2060, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_kasmasuk', b'1', b'1', b'1', b'1', b'0', b'0', 2061, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_transferkas', b'1', b'1', b'1', b'1', b'0', b'0', 2062, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_bukubesar', b'1', b'1', b'1', b'1', b'0', b'0', 2063, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_neracasaldo', b'1', b'1', b'1', b'1', b'0', b'0', 2064, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_labarugi', b'1', b'1', b'1', b'1', b'0', b'0', 2065, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 'r_neraca', b'1', b'1', b'1', b'1', b'0', b'0', 2066, '2023-08-09 17:53:05', 0, NULL, 0),
(14, 't_jual_ae', b'1', b'1', b'1', b'1', b'0', b'1', 2067, '2023-08-09 17:53:05', 0, NULL, 0),
(13, 'm_group_user', b'1', b'1', b'1', b'1', NULL, NULL, 2068, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'dashboard', b'1', b'1', b'1', b'1', NULL, NULL, 2069, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'lockcabang', b'1', b'1', b'1', b'1', NULL, NULL, 2070, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'tutupkasir', b'1', b'1', b'1', b'1', NULL, NULL, 2071, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'm_user', b'1', b'1', b'1', b'1', NULL, NULL, 2072, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'printer', b'0', b'0', b'0', b'0', NULL, NULL, 2073, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'm_konsumen', b'1', b'1', b'1', b'1', NULL, NULL, 2074, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'm_salesman', b'1', b'1', b'1', b'1', NULL, NULL, 2075, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'm_supplier', b'1', b'1', b'1', b'1', NULL, NULL, 2076, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'm_item', b'1', b'1', b'1', b'1', NULL, NULL, 2077, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'm_rek', b'1', b'1', b'1', b'1', NULL, NULL, 2078, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_deposit_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2079, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_tarikdeposito_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2080, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_orderbeli_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2081, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_beli_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2082, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_returbeli_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2083, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_bayarhutang_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2084, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_bayarpiutang_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2085, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_returjual_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2086, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_jurnal_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2087, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_kasmasuk_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2088, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_kaskeluar_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2089, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_transferkas_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2090, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_transferitem_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2091, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_itemmasuk_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2092, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_itemkeluar_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2093, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_stokopname_ae', b'1', b'1', b'1', b'1', NULL, NULL, 2094, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_supplier', b'0', b'0', b'0', b'1', NULL, NULL, 2095, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_konsumen', b'0', b'0', b'0', b'1', NULL, NULL, 2096, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_po', b'0', b'0', b'0', b'1', NULL, NULL, 2097, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_beli', b'0', b'0', b'0', b'1', NULL, NULL, 2098, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'tanpastok', b'0', b'0', b'0', b'1', NULL, NULL, 2099, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_beli_persupplier', b'0', b'0', b'0', b'1', NULL, NULL, 2100, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_beli_perpetugas', b'0', b'0', b'0', b'1', NULL, NULL, 2101, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_bayarhutang', b'0', b'0', b'0', b'1', NULL, NULL, 2102, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_jual', b'0', b'0', b'0', b'1', NULL, NULL, 2103, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_jual_peritem', b'0', b'0', b'0', b'1', NULL, NULL, 2104, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_jual_perkonsumen', b'0', b'0', b'0', b'1', NULL, NULL, 2105, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_labarugi_jual', b'0', b'0', b'0', b'1', NULL, NULL, 2106, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_bayarpiutang', b'0', b'0', b'0', b'1', NULL, NULL, 2107, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_alurkas', b'0', b'0', b'0', b'1', NULL, NULL, 2108, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'edithargaitem', b'0', b'1', b'0', b'0', NULL, NULL, 2109, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_transferitem', b'0', b'0', b'0', b'1', NULL, NULL, 2110, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_itemkeluar', b'0', b'0', b'0', b'1', NULL, NULL, 2111, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_itemmasuk', b'0', b'0', b'0', b'1', NULL, NULL, 2112, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_stokopname', b'0', b'0', b'0', b'1', NULL, NULL, 2113, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_nilaistok', b'0', b'0', b'0', b'1', NULL, NULL, 2114, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_jurnal', b'0', b'0', b'0', b'1', NULL, NULL, 2115, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_kaskeluar', b'0', b'0', b'0', b'1', NULL, NULL, 2116, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_kasmasuk', b'0', b'0', b'0', b'1', NULL, NULL, 2117, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_transferkas', b'0', b'0', b'0', b'1', NULL, NULL, 2118, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_bukubesar', b'0', b'0', b'0', b'1', NULL, NULL, 2119, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_neracasaldo', b'0', b'0', b'0', b'1', NULL, NULL, 2120, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_labarugi', b'0', b'0', b'0', b'1', NULL, NULL, 2121, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 'r_neraca', b'0', b'0', b'0', b'1', NULL, NULL, 2122, '2023-11-29 12:02:43', 4, NULL, 0),
(13, 't_jual_ae', b'1', b'1', b'1', b'1', NULL, b'1', 2123, '2023-11-29 12:02:43', 4, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_group_user_hd`
--

CREATE TABLE `m_group_user_hd` (
  `pk` int(11) NOT NULL,
  `nm` varchar(50) DEFAULT NULL,
  `ket` varchar(75) DEFAULT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_group_user_hd`
--

INSERT INTO `m_group_user_hd` (`pk`, `nm`, `ket`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(13, 'Admin', 'Admin', '2023-06-22 23:27:44', 0, '2023-11-29 12:02:42', 4),
(14, 'Kasir', 'Kasir', '2023-06-22 23:27:44', 0, '2023-06-26 16:05:25', 4),
(15, 'admin 2', 'admin 2', '2023-06-22 23:27:44', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_gudang`
--

CREATE TABLE `m_gudang` (
  `pk` int(11) NOT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kotafk` int(11) DEFAULT NULL,
  `provinsifk` int(11) DEFAULT NULL,
  `kodepos` varchar(20) DEFAULT NULL,
  `negarafk` int(11) DEFAULT NULL,
  `notlp` varchar(50) DEFAULT NULL,
  `nofax` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nmkontak` varchar(100) DEFAULT NULL,
  `notlpkontak` varchar(50) DEFAULT NULL,
  `emailkontak` varchar(50) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `pilih` bit(1) DEFAULT NULL,
  `default` bit(1) DEFAULT NULL,
  `kas` varchar(5) NOT NULL,
  `jnsperusahaan` int(11) NOT NULL DEFAULT 2,
  `npwp` varchar(50) NOT NULL,
  `cabangfk` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_gudang`
--

INSERT INTO `m_gudang` (`pk`, `kd`, `nm`, `alamat`, `kotafk`, `provinsifk`, `kodepos`, `negarafk`, `notlp`, `nofax`, `email`, `nmkontak`, `notlpkontak`, `emailkontak`, `ctn`, `status`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `pilih`, `default`, `kas`, `jnsperusahaan`, `npwp`, `cabangfk`) VALUES
(1, 'PST', 'Jati Boga', 'Jl.Raya Sinduwati-Sidemen', 85, 6, NULL, 1, '+62 878-6151-4471', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, '2019-12-05 16:40:36', 11, b'0', b'0', '1-111', 2, '', 1),
(3, 'CBN3', 'Jati Boga II', 'Jl Rama - Semarapura Kangin', 85, 6, NULL, 1, '+62 878-6151-4471', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, '2019-12-05 16:40:36', 11, b'0', b'0', '1-112', 2, '', 2),
(4, 'CBN4', 'Gudang I', 'Gudang I', 85, 6, NULL, 1, '+62 878-6151-4471', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, '2019-12-05 16:40:36', 11, b'0', b'0', '1-111', 2, '', 1),
(5, 'CBN5', 'Gudang II', 'Gudang II\r\n', 85, 6, NULL, 1, '+62 878-6151-4471', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, '2019-12-05 16:40:36', 11, b'0', b'0', '1-111', 2, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_item`
--

CREATE TABLE `m_item` (
  `pk` int(11) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `bd` varchar(50) DEFAULT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `jenis` tinyint(4) DEFAULT 1 COMMENT '1=Stok, 2= jasa,3\r\n=Konsinyasi 4=tenant;5=event\r\n',
  `tipe` tinyint(6) NOT NULL DEFAULT 1,
  `divisifk` varchar(50) DEFAULT NULL,
  `jenisfk` varchar(50) DEFAULT NULL,
  `kategorifk` varchar(50) DEFAULT NULL,
  `ukuranfk` varchar(50) DEFAULT NULL,
  `merekfk` varchar(50) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `rakfk` int(11) NOT NULL,
  `selving` varchar(20) NOT NULL,
  `profit` double DEFAULT 0,
  `jmlprofit` double DEFAULT 0,
  `hargabl` double DEFAULT 0,
  `hargajl` double DEFAULT 0,
  `grosira` double DEFAULT 0,
  `grosirb` double DEFAULT 0,
  `grosirc` double DEFAULT 0,
  `persengrosira` double DEFAULT 0,
  `persengrosirb` double DEFAULT 0,
  `persengrosirc` double DEFAULT 0,
  `diskon` double DEFAULT 0,
  `belimin` double DEFAULT 0,
  `pembulatan` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `metodehpp` tinyint(4) DEFAULT 1,
  `stockmin` double DEFAULT 0,
  `stock` double DEFAULT 0,
  `gudangfk` int(11) DEFAULT 1,
  `supplierfk` int(11) DEFAULT NULL,
  `rekhpp` varchar(20) DEFAULT NULL,
  `rekjual` varchar(20) DEFAULT NULL,
  `rekpersediaan` varchar(20) DEFAULT NULL,
  `rekreturjual` varchar(20) DEFAULT NULL,
  `pjkbeli` int(11) DEFAULT NULL,
  `pjkjual` int(11) DEFAULT NULL,
  `nmgambar` varchar(100) DEFAULT NULL,
  `ctn` mediumtext DEFAULT NULL,
  `status` varchar(15) DEFAULT 'Aktif',
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT 0,
  `pilih` bit(1) DEFAULT NULL,
  `aktif` bit(1) DEFAULT b'1',
  `chkmargin` tinyint(1) DEFAULT 0,
  `satuanfk1` int(11) DEFAULT NULL,
  `konversi1` double DEFAULT 0,
  `hargapokok1` double DEFAULT 0,
  `retail1` double DEFAULT 0,
  `grosir1A` double DEFAULT 0,
  `grosir1b` double DEFAULT 0,
  `grosir1c` double DEFAULT 0,
  `persenretail1` double DEFAULT 0,
  `persengrosir1a` double DEFAULT 0,
  `persengrosir1b` double DEFAULT 0,
  `persengrosir1c` double DEFAULT 0,
  `satuanfk2` int(11) DEFAULT NULL,
  `konversi2` double DEFAULT 0,
  `hargapokok2` double DEFAULT 0,
  `retail2` double DEFAULT 0,
  `grosir2a` double DEFAULT 0,
  `grosir2b` double DEFAULT 0,
  `grosir2c` double DEFAULT 0,
  `persenretail2` double DEFAULT 0,
  `persengrosir2a` double DEFAULT 0,
  `persengrosir2b` double DEFAULT 0,
  `persengrosir2c` double DEFAULT 0,
  `grosird` double DEFAULT 0,
  `grosir1d` double DEFAULT 0,
  `grosir2d` double DEFAULT 0,
  `grosir3d` double DEFAULT 0,
  `persengrosird` double DEFAULT 0,
  `persengrosir2d` double DEFAULT 0,
  `persengrosir1d` double DEFAULT 0,
  `persengrosir3d` double DEFAULT 0,
  `pulsa` smallint(3) DEFAULT 0,
  `jmlgrosir` double NOT NULL DEFAULT 0,
  `jmlgrosir1` float NOT NULL DEFAULT 0,
  `pkp` tinyint(2) NOT NULL DEFAULT 0,
  `stspoin` tinyint(2) NOT NULL DEFAULT 1,
  `hargagrosir` double NOT NULL DEFAULT 0,
  `maxjual` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_item`
--

INSERT INTO `m_item` (`pk`, `kode`, `kd`, `bd`, `nm`, `jenis`, `tipe`, `divisifk`, `jenisfk`, `kategorifk`, `ukuranfk`, `merekfk`, `satuanfk`, `rakfk`, `selving`, `profit`, `jmlprofit`, `hargabl`, `hargajl`, `grosira`, `grosirb`, `grosirc`, `persengrosira`, `persengrosirb`, `persengrosirc`, `diskon`, `belimin`, `pembulatan`, `hargapokok`, `metodehpp`, `stockmin`, `stock`, `gudangfk`, `supplierfk`, `rekhpp`, `rekjual`, `rekpersediaan`, `rekreturjual`, `pjkbeli`, `pjkjual`, `nmgambar`, `ctn`, `status`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `komisisales`, `pilih`, `aktif`, `chkmargin`, `satuanfk1`, `konversi1`, `hargapokok1`, `retail1`, `grosir1A`, `grosir1b`, `grosir1c`, `persenretail1`, `persengrosir1a`, `persengrosir1b`, `persengrosir1c`, `satuanfk2`, `konversi2`, `hargapokok2`, `retail2`, `grosir2a`, `grosir2b`, `grosir2c`, `persenretail2`, `persengrosir2a`, `persengrosir2b`, `persengrosir2c`, `grosird`, `grosir1d`, `grosir2d`, `grosir3d`, `persengrosird`, `persengrosir2d`, `persengrosir1d`, `persengrosir3d`, `pulsa`, `jmlgrosir`, `jmlgrosir1`, `pkp`, `stspoin`, `hargagrosir`, `maxjual`) VALUES
(1, NULL, '0001', '', 'Barang Aki', 1, 1, NULL, NULL, '001', NULL, NULL, 4, 0, '', 0, 0, 9000, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 10, 9900, 1, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Aktif', '2023-12-07 16:38:13', 4, '2023-12-29 16:42:58', 4, 0, NULL, b'1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_item_dt`
--

CREATE TABLE `m_item_dt` (
  `pk` int(11) NOT NULL,
  `itemfk` int(11) NOT NULL,
  `itembaku` int(11) NOT NULL,
  `jmlkonversi` double NOT NULL DEFAULT 0,
  `hargabl` double NOT NULL DEFAULT 0,
  `hargajl` double NOT NULL DEFAULT 0,
  `qty` double NOT NULL DEFAULT 0,
  `subtotal` double NOT NULL DEFAULT 0,
  `gudangfk` int(11) NOT NULL DEFAULT 1,
  `ctn` varchar(200) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_item_harga`
--

CREATE TABLE `m_item_harga` (
  `pk` int(11) NOT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `nobaris` int(11) DEFAULT NULL,
  `batasbawah` int(11) DEFAULT NULL,
  `batasatas` int(11) DEFAULT NULL,
  `hargajl` double DEFAULT NULL,
  `satuanfk` int(11) NOT NULL,
  `ctn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_item_kantin`
--

CREATE TABLE `m_item_kantin` (
  `pk` int(11) NOT NULL,
  `kd` varchar(30) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `hargabl` double NOT NULL DEFAULT 0,
  `hargajl` double NOT NULL DEFAULT 0,
  `jmlprofit` double NOT NULL DEFAULT 0,
  `supplierfk` int(11) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `modifiedbyfk` int(11) NOT NULL,
  `aktif` int(11) NOT NULL DEFAULT 1,
  `ctn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_jenis`
--

CREATE TABLE `m_jenis` (
  `pk` varchar(50) NOT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `kategorifk` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_jenis`
--

INSERT INTO `m_jenis` (`pk`, `nm`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `kategorifk`, `kode`) VALUES
('1', '-', NULL, '2022-07-27 05:34:30', NULL, '2022-07-27 05:34:30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kartukredit`
--

CREATE TABLE `m_kartukredit` (
  `pk` int(11) NOT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `chg` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `akun` varchar(20) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_kartukredit`
--

INSERT INTO `m_kartukredit` (`pk`, `nm`, `chg`, `ctn`, `akun`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(4, 'QRIS', 0, NULL, '1-126', NULL, NULL, NULL, NULL),
(7, 'Debet BCA', 0, NULL, '1-124', NULL, NULL, NULL, NULL),
(8, 'Master Card', 3, NULL, '1-124', NULL, NULL, NULL, NULL),
(9, 'Visa', 3, NULL, '1-124', NULL, NULL, NULL, NULL),
(10, 'BRI Debet', 3, NULL, '1-126', NULL, NULL, NULL, NULL),
(11, 'BRI Kredit', 3, NULL, '1-126', NULL, NULL, NULL, NULL),
(12, 'BNI Debet', 3, NULL, '1-126', NULL, NULL, NULL, NULL),
(13, 'BNI Kredit', 0, NULL, '1-126', NULL, NULL, NULL, NULL),
(14, 'Kartu Luar Debet', 5, NULL, '1-126', NULL, NULL, NULL, NULL),
(15, 'Mandiri Debet', 3, NULL, '1-126', NULL, NULL, NULL, NULL),
(16, 'Mandiri Kredit', 3, NULL, '1-126', NULL, NULL, NULL, NULL),
(17, 'Kartu Luar Kredit', 5, NULL, '1-126', NULL, NULL, NULL, NULL),
(18, 'BCA Kredit', 3, NULL, '1-126', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `pk` varchar(50) NOT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `supplierfk` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`pk`, `nm`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `supplierfk`) VALUES
('001', 'Makanan', '', '2023-12-07 16:37:51', 4, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `m_konsumen`
-- (See below for the actual view)
--
CREATE TABLE `m_konsumen` (
`pk` int(11)
,`kd` varchar(50)
,`ktp` varchar(50)
,`nm` varchar(255)
,`alamat` varchar(255)
,`kota` varchar(100)
,`Propinsi` varchar(100)
,`kodepos` varchar(8)
,`negara` varchar(50)
,`tlp` varchar(50)
,`sex` varchar(10)
,`tempatlahir` varchar(100)
,`tgllahir` date
,`agama` varchar(50)
,`email` varchar(50)
,`username` varchar(50)
,`password` varchar(50)
,`status` varchar(50)
,`aktif` varchar(10)
,`pekerjaan` varchar(255)
,`nmperusahaan` varchar(255)
,`alamatpekerjaan` varchar(255)
,`tlppekerjaan` varchar(50)
,`jabatan` varchar(50)
,`ctn` varchar(255)
,`foto` varchar(225)
,`dateadded` datetime
,`addedbyfk` int(11)
,`datemodified` datetime
,`lastuserfk` int(11)
,`marketingfk` int(11)
,`wilayahfk` int(10)
,`departemenfk` int(11)
,`anggota` tinyint(4)
,`tglregistrasi` date
,`norek` varchar(30)
,`an` varchar(100)
,`bank` varchar(50)
,`plafon` double
,`simpananpokok` double
,`simpananwajib` double
,`simpanansukarela` double
,`tabungan` double
,`pinjaman` double
,`pottabungan` double
,`potpinjaman` double
,`potwajib` double
,`potprogram` double
,`potlain` double
,`potpokok` double
,`pengelola` tinyint(4)
,`sisakredit` double
,`admin` int(11)
,`piutangtoko` double
,`jmlvoucher` double
,`noanggota` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `m_kota`
--

CREATE TABLE `m_kota` (
  `pk` int(11) NOT NULL,
  `negarafk` int(11) DEFAULT NULL,
  `provinsifk` int(11) DEFAULT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_kota`
--

INSERT INTO `m_kota` (`pk`, `negarafk`, `provinsifk`, `nm`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(1, 1, 9, 'Air Molek', NULL, NULL, NULL, NULL, NULL),
(2, 1, 30, 'Alor', NULL, NULL, NULL, NULL, NULL),
(3, 1, 31, 'Ambon', NULL, NULL, NULL, NULL, NULL),
(4, 1, 23, 'Ampah', NULL, NULL, NULL, NULL, NULL),
(5, 1, 26, 'Ampana', NULL, NULL, NULL, NULL, NULL),
(6, 1, 29, 'Ampenan', NULL, NULL, NULL, NULL, NULL),
(7, 1, 23, 'Amuntai', NULL, NULL, NULL, NULL, NULL),
(8, 1, 12, 'Argamakmur', NULL, NULL, NULL, NULL, NULL),
(10, 1, 30, 'Atambua', NULL, NULL, NULL, NULL, NULL),
(12, 1, 9, 'Bagan Siapi-api', NULL, NULL, NULL, NULL, NULL),
(13, 1, 30, 'Bajawa', NULL, NULL, NULL, NULL, NULL),
(14, 1, 22, 'Balik Papan', NULL, NULL, NULL, NULL, NULL),
(15, 1, 4, 'Banda Aceh', NULL, NULL, NULL, NULL, NULL),
(16, 1, 14, 'Bandar Jaya', NULL, NULL, NULL, NULL, NULL),
(17, 1, 14, 'Bandar Lampung', NULL, NULL, NULL, NULL, NULL),
(18, 1, 7, 'Bandung', NULL, NULL, NULL, NULL, NULL),
(19, 1, 19, 'Bangil (pasuruan)', NULL, NULL, NULL, NULL, NULL),
(20, 1, 19, 'Bangkalan (madura)', NULL, NULL, NULL, NULL, NULL),
(21, 1, 9, 'Bangkinang', NULL, NULL, NULL, NULL, NULL),
(22, 1, 6, 'Bangli', NULL, NULL, NULL, NULL, NULL),
(23, 1, 7, 'Banjar (kota)', NULL, NULL, NULL, NULL, NULL),
(24, 1, 23, 'Banjar Baru', NULL, NULL, NULL, NULL, NULL),
(25, 1, 7, 'Banjaran', NULL, NULL, NULL, NULL, NULL),
(26, 1, 23, 'Banjarmasin', NULL, NULL, NULL, NULL, NULL),
(28, 1, 19, 'Banyuwangi', NULL, NULL, NULL, NULL, NULL),
(29, 1, 23, 'Barabai', NULL, NULL, NULL, NULL, NULL),
(30, 1, 27, 'Barru', NULL, NULL, NULL, NULL, NULL),
(31, 1, 9, 'Batam', NULL, NULL, NULL, NULL, NULL),
(32, 1, 29, 'Batu Hijau', NULL, NULL, NULL, NULL, NULL),
(33, 1, 23, 'Batu Licin', NULL, NULL, NULL, NULL, NULL),
(34, 1, 19, 'Batu Malang', NULL, NULL, NULL, NULL, NULL),
(35, 1, 10, 'Batu Sangkar', NULL, NULL, NULL, NULL, NULL),
(37, 1, 13, 'Baturaja', NULL, NULL, NULL, NULL, NULL),
(38, 1, 28, 'Bau-bau', NULL, NULL, NULL, NULL, NULL),
(39, 1, 7, 'Bekasi', NULL, NULL, NULL, NULL, NULL),
(40, 1, 5, 'Belawan', NULL, NULL, NULL, NULL, NULL),
(41, 1, 15, 'Belinyu', NULL, NULL, NULL, NULL, NULL),
(42, 1, 9, 'Bengkalis', NULL, NULL, NULL, NULL, NULL),
(44, 1, 12, 'Bengkulu', NULL, NULL, NULL, NULL, NULL),
(45, 1, 22, 'Berau', NULL, NULL, NULL, NULL, NULL),
(46, 1, 4, 'Beureuneun', NULL, NULL, NULL, NULL, NULL),
(47, 1, 34, 'Biak', NULL, NULL, NULL, NULL, NULL),
(48, 1, 29, 'Bima', NULL, NULL, NULL, NULL, NULL),
(49, 1, 5, 'Binjai', NULL, NULL, NULL, NULL, NULL),
(50, 1, 9, 'Bintan utara', NULL, NULL, NULL, NULL, NULL),
(51, 1, 12, 'Bintuhan', NULL, NULL, NULL, NULL, NULL),
(52, 1, 33, 'Bintuni', NULL, NULL, NULL, NULL, NULL),
(53, 1, 4, 'Bireun', NULL, NULL, NULL, NULL, NULL),
(54, 1, 24, 'Bitung', NULL, NULL, NULL, NULL, NULL),
(55, 1, 19, 'Blitar', NULL, NULL, NULL, NULL, NULL),
(56, 1, 17, 'Blora', NULL, NULL, NULL, NULL, NULL),
(57, 1, 7, 'Bogor', NULL, NULL, NULL, NULL, NULL),
(58, 1, 19, 'Bojonegoro', NULL, NULL, NULL, NULL, NULL),
(59, 1, 27, 'Bone', NULL, NULL, NULL, NULL, NULL),
(60, 1, 22, 'Bontang', NULL, NULL, NULL, NULL, NULL),
(61, 1, 17, 'Boyolali', NULL, NULL, NULL, NULL, NULL),
(65, 1, 21, 'Buntok', NULL, NULL, NULL, NULL, NULL),
(66, 1, 26, 'Buol', NULL, NULL, NULL, NULL, NULL),
(67, 1, 7, 'Ciamis', NULL, NULL, NULL, NULL, NULL),
(68, 1, 7, 'Cianjur', NULL, NULL, NULL, NULL, NULL),
(70, 1, 7, 'Cicurug', NULL, NULL, NULL, NULL, NULL),
(71, 1, 7, 'Cikarang', NULL, NULL, NULL, NULL, NULL),
(72, 1, 17, 'Cilacap', NULL, NULL, NULL, NULL, NULL),
(73, 1, 8, 'Cilegon', NULL, NULL, NULL, NULL, NULL),
(75, 1, 7, 'Cimahi', NULL, NULL, NULL, NULL, NULL),
(76, 1, 7, 'Cirebon', NULL, NULL, NULL, NULL, NULL),
(81, 1, 12, 'Curup', NULL, NULL, NULL, NULL, NULL),
(82, 1, 9, 'Dabo singkep', NULL, NULL, NULL, NULL, NULL),
(84, 1, 17, 'Demak', NULL, NULL, NULL, NULL, NULL),
(85, 1, 6, 'Denpasar', NULL, NULL, NULL, NULL, NULL),
(86, 1, 7, 'Depok', NULL, NULL, NULL, NULL, NULL),
(88, 1, 29, 'Dompu', NULL, NULL, NULL, NULL, NULL),
(89, 1, 26, 'Donggala', NULL, NULL, NULL, NULL, NULL),
(90, 1, 9, 'Dumai', NULL, NULL, NULL, NULL, NULL),
(91, 1, 9, 'Duri', NULL, NULL, NULL, NULL, NULL),
(92, 1, 30, 'Ende', NULL, NULL, NULL, NULL, NULL),
(94, 1, 33, 'Fak fak', NULL, NULL, NULL, NULL, NULL),
(95, 1, 7, 'Garut', NULL, NULL, NULL, NULL, NULL),
(96, 1, 17, 'Gemolong', NULL, NULL, NULL, NULL, NULL),
(97, 1, 6, 'Gianyar', NULL, NULL, NULL, NULL, NULL),
(99, 1, 25, 'Gorontalo', NULL, NULL, NULL, NULL, NULL),
(100, 1, 27, 'Gowa', NULL, NULL, NULL, NULL, NULL),
(101, 1, 19, 'Gresik', NULL, NULL, NULL, NULL, NULL),
(102, 1, 7, 'Indramayu', NULL, NULL, NULL, NULL, NULL),
(103, 1, 16, 'Jakarta', NULL, NULL, NULL, NULL, NULL),
(104, 1, 11, 'Jambi', NULL, NULL, NULL, NULL, NULL),
(105, 1, 7, 'Jatinagor', NULL, NULL, NULL, NULL, NULL),
(106, 1, 35, 'Jayapura', NULL, NULL, NULL, NULL, NULL),
(107, 1, 15, 'Jebus', NULL, NULL, NULL, NULL, NULL),
(108, 1, 19, 'Jember', NULL, NULL, NULL, NULL, NULL),
(109, 1, 6, 'Jembrana', NULL, NULL, NULL, NULL, NULL),
(111, 1, 18, 'Jogjakarta', NULL, NULL, NULL, NULL, NULL),
(112, 1, 19, 'Jombang', NULL, NULL, NULL, NULL, NULL),
(114, 1, 30, 'Kalabahi', NULL, NULL, NULL, NULL, NULL),
(115, 1, 14, 'Kalianda', NULL, NULL, NULL, NULL, NULL),
(116, 1, 23, 'Kandangan', NULL, NULL, NULL, NULL, NULL),
(117, 1, 17, 'Karang anyar', NULL, NULL, NULL, NULL, NULL),
(118, 1, 6, 'Karangasem', NULL, NULL, NULL, NULL, NULL),
(119, 1, 7, 'Karawang', NULL, NULL, NULL, NULL, NULL),
(120, 1, 17, 'Kartasura', NULL, NULL, NULL, NULL, NULL),
(122, 1, 19, 'Kediri', NULL, NULL, NULL, NULL, NULL),
(123, 1, 30, 'Kefamenanu', NULL, NULL, NULL, NULL, NULL),
(125, 1, 28, 'Kendari', NULL, NULL, NULL, NULL, NULL),
(126, 1, 12, 'Kepahiyang', NULL, NULL, NULL, NULL, NULL),
(127, 1, 19, 'Kepanjen', NULL, NULL, NULL, NULL, NULL),
(128, 1, 20, 'Ketapang', NULL, NULL, NULL, NULL, NULL),
(130, 1, 17, 'Klaten', NULL, NULL, NULL, NULL, NULL),
(132, 1, 6, 'Klungkung', NULL, NULL, NULL, NULL, NULL),
(133, 1, 15, 'Koba', NULL, NULL, NULL, NULL, NULL),
(135, 1, 23, 'Kota baru', NULL, NULL, NULL, NULL, NULL),
(136, 1, 14, 'Kota bumi', NULL, NULL, NULL, NULL, NULL),
(138, 1, 21, 'Kuala kapuas', NULL, NULL, NULL, NULL, NULL),
(140, 1, 17, 'Kudus', NULL, NULL, NULL, NULL, NULL),
(142, 1, 30, 'Kupang', NULL, NULL, NULL, NULL, NULL),
(144, 1, 19, 'Lamongan', NULL, NULL, NULL, NULL, NULL),
(145, 1, 4, 'Langsa', NULL, NULL, NULL, NULL, NULL),
(146, 1, 30, 'Larantuka', NULL, NULL, NULL, NULL, NULL),
(147, 1, 19, 'Lawang', NULL, NULL, NULL, NULL, NULL),
(149, 1, 30, 'Lembata', NULL, NULL, NULL, NULL, NULL),
(150, 1, 30, 'Lewoleba', NULL, NULL, NULL, NULL, NULL),
(151, 1, 4, 'Lhokseumawe', NULL, NULL, NULL, NULL, NULL),
(152, 1, 10, 'Lubuk alung', NULL, NULL, NULL, NULL, NULL),
(153, 1, 10, 'Lubuk basung', NULL, NULL, NULL, NULL, NULL),
(154, 1, 13, 'Lubuk linggau', NULL, NULL, NULL, NULL, NULL),
(155, 1, 10, 'Lubuk sikaping', NULL, NULL, NULL, NULL, NULL),
(156, 1, 19, 'Lumajang', NULL, NULL, NULL, NULL, NULL),
(159, 1, 26, 'Luwuk', NULL, NULL, NULL, NULL, NULL),
(160, 1, 19, 'Madiun', NULL, NULL, NULL, NULL, NULL),
(161, 1, 17, 'Magelang', NULL, NULL, NULL, NULL, NULL),
(162, 1, 7, 'Majalaya', NULL, NULL, NULL, NULL, NULL),
(163, 1, 7, 'Majalengka', NULL, NULL, NULL, NULL, NULL),
(164, 1, 27, 'Majene', NULL, NULL, NULL, NULL, NULL),
(165, 1, 27, 'Makasar', NULL, NULL, NULL, NULL, NULL),
(166, 1, 19, 'Malang', NULL, NULL, NULL, NULL, NULL),
(168, 1, 27, 'Mamuju', NULL, NULL, NULL, NULL, NULL),
(169, 1, 24, 'Manado', NULL, NULL, NULL, NULL, NULL),
(170, 1, 12, 'Manna', NULL, NULL, NULL, NULL, NULL),
(171, 1, 33, 'Manukwari', NULL, NULL, NULL, NULL, NULL),
(172, 1, 27, 'Maros', NULL, NULL, NULL, NULL, NULL),
(173, 1, 23, 'Martapura', NULL, NULL, NULL, NULL, NULL),
(174, 1, 27, 'Masamba', NULL, NULL, NULL, NULL, NULL),
(175, 1, 4, 'Matang glampang', NULL, NULL, NULL, NULL, NULL),
(176, 1, 29, 'Mataram', NULL, NULL, NULL, NULL, NULL),
(177, 1, 30, 'Maumere', NULL, NULL, NULL, NULL, NULL),
(178, 1, 5, 'Medan', NULL, NULL, NULL, NULL, NULL),
(180, 1, 14, 'Menggala', NULL, NULL, NULL, NULL, NULL),
(181, 1, 15, 'Mentok', NULL, NULL, NULL, NULL, NULL),
(183, 1, 35, 'Merauke', NULL, NULL, NULL, NULL, NULL),
(184, 1, 14, 'Metro pusat', NULL, NULL, NULL, NULL, NULL),
(185, 1, 4, 'Meulaboh', NULL, NULL, NULL, NULL, NULL),
(186, 1, 9, 'Minas', NULL, NULL, NULL, NULL, NULL),
(187, 1, 19, 'Mojokerto', NULL, NULL, NULL, NULL, NULL),
(188, 1, 12, 'Muara aman', NULL, NULL, NULL, NULL, NULL),
(189, 1, 13, 'Muara enim', NULL, NULL, NULL, NULL, NULL),
(190, 1, 10, 'Muara labuh', NULL, NULL, NULL, NULL, NULL),
(191, 1, 21, 'Muara teweh', NULL, NULL, NULL, NULL, NULL),
(192, 1, 12, 'Muko-muko', NULL, NULL, NULL, NULL, NULL),
(194, 1, 34, 'Nabire', NULL, NULL, NULL, NULL, NULL),
(196, 1, 19, 'Ngawi', NULL, NULL, NULL, NULL, NULL),
(198, 1, 7, 'Padalarang', NULL, NULL, NULL, NULL, NULL),
(199, 1, 10, 'Padang', NULL, NULL, NULL, NULL, NULL),
(200, 1, 10, 'Padang panjang', NULL, NULL, NULL, NULL, NULL),
(201, 1, 5, 'Padang sidempuan', NULL, NULL, NULL, NULL, NULL),
(203, 1, 10, 'Painan', NULL, NULL, NULL, NULL, NULL),
(205, 1, 21, 'Palangkaraya', NULL, NULL, NULL, NULL, NULL),
(206, 1, 13, 'Palembang', NULL, NULL, NULL, NULL, NULL),
(208, 1, 26, 'Palu', NULL, NULL, NULL, NULL, NULL),
(209, 1, 19, 'Pandaan', NULL, NULL, NULL, NULL, NULL),
(211, 1, 15, 'Pangkal pinang', NULL, NULL, NULL, NULL, NULL),
(212, 1, 5, 'Pangkalan brandan', NULL, NULL, NULL, NULL, NULL),
(213, 1, 9, 'Pangkalan kerinci', NULL, NULL, NULL, NULL, NULL),
(214, 1, 21, 'Pangkalanbun', NULL, NULL, NULL, NULL, NULL),
(216, 1, 14, 'Panjang', NULL, NULL, NULL, NULL, NULL),
(217, 1, 27, 'Pare-pare', NULL, NULL, NULL, NULL, NULL),
(218, 1, 10, 'Pariaman', NULL, NULL, NULL, NULL, NULL),
(219, 1, 10, 'Pasaman', NULL, NULL, NULL, NULL, NULL),
(220, 1, 23, 'Pasir', NULL, NULL, NULL, NULL, NULL),
(221, 1, 19, 'Pasuruan', NULL, NULL, NULL, NULL, NULL),
(222, 1, 10, 'Payakumbuh', NULL, NULL, NULL, NULL, NULL),
(223, 1, 17, 'Pekalongan', NULL, NULL, NULL, NULL, NULL),
(224, 1, 9, 'Pekanbaru', NULL, NULL, NULL, NULL, NULL),
(225, 1, 9, 'Pematang reba', NULL, NULL, NULL, NULL, NULL),
(226, 1, 5, 'Pematang siantar', NULL, NULL, NULL, NULL, NULL),
(228, 1, 9, 'Perawang', NULL, NULL, NULL, NULL, NULL),
(229, 1, 4, 'Pidie', NULL, NULL, NULL, NULL, NULL),
(230, 1, 27, 'Pinrang', NULL, NULL, NULL, NULL, NULL),
(231, 1, 23, 'Pleihari', NULL, NULL, NULL, NULL, NULL),
(232, 1, 27, 'Polewali', NULL, NULL, NULL, NULL, NULL),
(234, 1, 28, 'Pomala', NULL, NULL, NULL, NULL, NULL),
(235, 1, 19, 'Ponorogo', NULL, NULL, NULL, NULL, NULL),
(236, 1, 20, 'Pontianak', NULL, NULL, NULL, NULL, NULL),
(237, 1, 26, 'Poso', NULL, NULL, NULL, NULL, NULL),
(238, 1, 13, 'Prabumulih', NULL, NULL, NULL, NULL, NULL),
(239, 1, 29, 'Praya', NULL, NULL, NULL, NULL, NULL),
(240, 1, 14, 'Pringsewu', NULL, NULL, NULL, NULL, NULL),
(241, 1, 19, 'Probolinggo', NULL, NULL, NULL, NULL, NULL),
(242, 1, 23, 'Pulau laut', NULL, NULL, NULL, NULL, NULL),
(243, 1, 7, 'Purwakarta', NULL, NULL, NULL, NULL, NULL),
(244, 1, 17, 'Purwokerto', NULL, NULL, NULL, NULL, NULL),
(245, 1, 28, 'Raha', NULL, NULL, NULL, NULL, NULL),
(248, 1, 23, 'Rantau', NULL, NULL, NULL, NULL, NULL),
(250, 1, 9, 'Rengat', NULL, NULL, NULL, NULL, NULL),
(251, 1, 30, 'Ruteng', NULL, NULL, NULL, NULL, NULL),
(252, 1, 4, 'Sabang', NULL, NULL, NULL, NULL, NULL),
(253, 1, 17, 'Salatiga', NULL, NULL, NULL, NULL, NULL),
(254, 1, 22, 'Samarinda', NULL, NULL, NULL, NULL, NULL),
(255, 1, 20, 'Sambas', NULL, NULL, NULL, NULL, NULL),
(256, 1, 21, 'Sampit', NULL, NULL, NULL, NULL, NULL),
(258, 1, 20, 'Sanggau', NULL, NULL, NULL, NULL, NULL),
(259, 1, 23, 'Satui', NULL, NULL, NULL, NULL, NULL),
(260, 1, 10, 'Sawah lunto', NULL, NULL, NULL, NULL, NULL),
(261, 1, 7, 'Sawangan', NULL, NULL, NULL, NULL, NULL),
(263, 1, 20, 'Sei raya', NULL, NULL, NULL, NULL, NULL),
(264, 1, 10, 'Sei rumbai', NULL, NULL, NULL, NULL, NULL),
(265, 1, 20, 'Sekadau', NULL, NULL, NULL, NULL, NULL),
(266, 1, 13, 'Sekayu', NULL, NULL, NULL, NULL, NULL),
(268, 1, 29, 'Selong', NULL, NULL, NULL, NULL, NULL),
(269, 1, 12, 'Seluma', NULL, NULL, NULL, NULL, NULL),
(270, 1, 17, 'Semarang', NULL, NULL, NULL, NULL, NULL),
(271, 1, 23, 'Senakin', NULL, NULL, NULL, NULL, NULL),
(273, 1, 8, 'Serang', NULL, NULL, NULL, NULL, NULL),
(274, 1, 34, 'Serui', NULL, NULL, NULL, NULL, NULL),
(275, 1, 5, 'Sibolga', NULL, NULL, NULL, NULL, NULL),
(276, 1, 19, 'Sidoarjo', NULL, NULL, NULL, NULL, NULL),
(278, 1, 4, 'Sigli', NULL, NULL, NULL, NULL, NULL),
(280, 1, 23, 'Simpang batulicin', NULL, NULL, NULL, NULL, NULL),
(281, 1, 7, 'Singaparna', NULL, NULL, NULL, NULL, NULL),
(282, 1, 6, 'Singaraja', NULL, NULL, NULL, NULL, NULL),
(283, 1, 20, 'Singkawang', NULL, NULL, NULL, NULL, NULL),
(287, 1, 30, 'Soe', NULL, NULL, NULL, NULL, NULL),
(288, 1, 17, 'Solo', NULL, NULL, NULL, NULL, NULL),
(289, 1, 10, 'Solok', NULL, NULL, NULL, NULL, NULL),
(292, 1, 33, 'Sorong', NULL, NULL, NULL, NULL, NULL),
(293, 1, 17, 'Sragen', NULL, NULL, NULL, NULL, NULL),
(295, 1, 7, 'Sukabumi', NULL, NULL, NULL, NULL, NULL),
(296, 1, 17, 'Sukoharjo', NULL, NULL, NULL, NULL, NULL),
(297, 1, 29, 'Sumbawa besar', NULL, NULL, NULL, NULL, NULL),
(298, 1, 7, 'Sumedang', NULL, NULL, NULL, NULL, NULL),
(299, 1, 15, 'Sungai liat', NULL, NULL, NULL, NULL, NULL),
(300, 1, 9, 'Sungai pakning', NULL, NULL, NULL, NULL, NULL),
(301, 1, 20, 'Sungai pinyuh', NULL, NULL, NULL, NULL, NULL),
(302, 1, 27, 'Sungguminasa', NULL, NULL, NULL, NULL, NULL),
(303, 1, 19, 'Surabaya', NULL, NULL, NULL, NULL, NULL),
(304, 1, 6, 'Tabanan', NULL, NULL, NULL, NULL, NULL),
(305, 1, 27, 'Takalar', NULL, NULL, NULL, NULL, NULL),
(306, 1, 4, 'Takengon', NULL, NULL, NULL, NULL, NULL),
(307, 1, 29, 'Taliwang', NULL, NULL, NULL, NULL, NULL),
(308, 1, 9, 'Taluk kuantan', NULL, NULL, NULL, NULL, NULL),
(310, 1, 22, 'Tanah grogot', NULL, NULL, NULL, NULL, NULL),
(311, 1, 8, 'Tangerang', NULL, NULL, NULL, NULL, NULL),
(312, 1, 23, 'Tanjung', NULL, NULL, NULL, NULL, NULL),
(314, 1, 5, 'Tanjung balai asahan', NULL, NULL, NULL, NULL, NULL),
(315, 1, 9, 'Tanjung balai karimun', NULL, NULL, NULL, NULL, NULL),
(317, 1, 20, 'Tanjung kapuas', NULL, NULL, NULL, NULL, NULL),
(318, 1, 15, 'Tanjung pandan', NULL, NULL, NULL, NULL, NULL),
(319, 1, 9, 'Tanjung pinang', NULL, NULL, NULL, NULL, NULL),
(320, 1, 20, 'Tanjung sekayam', NULL, NULL, NULL, NULL, NULL),
(321, 1, 9, 'Tanjung uban', NULL, NULL, NULL, NULL, NULL),
(322, 1, 4, 'Tapaktuan', NULL, NULL, NULL, NULL, NULL),
(323, 1, 22, 'Tarakan', NULL, NULL, NULL, NULL, NULL),
(324, 1, 7, 'Tasikmalaya', NULL, NULL, NULL, NULL, NULL),
(325, 1, 17, 'Tegal', NULL, NULL, NULL, NULL, NULL),
(326, 1, 22, 'Tenggarong', NULL, NULL, NULL, NULL, NULL),
(327, 1, 32, 'Ternate', NULL, NULL, NULL, NULL, NULL),
(328, 1, 34, 'Timika', NULL, NULL, NULL, NULL, NULL),
(329, 1, 15, 'Toboali', NULL, NULL, NULL, NULL, NULL),
(330, 1, 26, 'Tojo una-una', NULL, NULL, NULL, NULL, NULL),
(331, 1, 26, 'Tolai', NULL, NULL, NULL, NULL, NULL),
(332, 1, 26, 'Toli-toli', NULL, NULL, NULL, NULL, NULL),
(333, 1, 24, 'Tomohon', NULL, NULL, NULL, NULL, NULL),
(334, 1, 24, 'Tondano', NULL, NULL, NULL, NULL, NULL),
(335, 1, 19, 'Tuban (jatim)', NULL, NULL, NULL, NULL, NULL),
(336, 1, 19, 'Tulung agung', NULL, NULL, NULL, NULL, NULL),
(338, 1, 6, 'Ubud', NULL, NULL, NULL, NULL, NULL),
(339, 1, 9, 'Ujung batu', NULL, NULL, NULL, NULL, NULL),
(342, 1, 30, 'Waingapu', NULL, NULL, NULL, NULL, NULL),
(344, 1, 35, 'Wamena', NULL, NULL, NULL, NULL, NULL),
(345, 1, 17, 'Wonogiri', NULL, NULL, NULL, NULL, NULL),
(346, 1, 19, 'Sumenep', NULL, NULL, NULL, NULL, NULL),
(347, 1, 20, 'Sintang', NULL, NULL, NULL, NULL, NULL),
(348, 1, 17, 'Purbalingga', NULL, NULL, NULL, NULL, NULL),
(349, 1, 31, 'Tual', NULL, NULL, NULL, NULL, NULL),
(350, 1, 9, 'Siak', NULL, NULL, NULL, NULL, NULL),
(351, 1, 20, 'Nanga pinoh', NULL, NULL, NULL, NULL, NULL),
(352, 1, 19, 'Nganjuk', NULL, NULL, NULL, NULL, NULL),
(354, 1, 17, 'Batang', NULL, NULL, NULL, NULL, NULL),
(356, 1, 29, 'Cakranegara', NULL, NULL, NULL, NULL, NULL),
(357, 1, 10, 'Dharmasraya', NULL, NULL, NULL, NULL, NULL),
(358, 1, 10, 'Bukit tinggi', NULL, NULL, NULL, NULL, NULL),
(359, 1, 17, 'Wonosobo', NULL, NULL, NULL, NULL, NULL),
(360, 1, 17, 'Jepara', NULL, NULL, NULL, NULL, NULL),
(361, 1, 20, 'Mempawah', NULL, NULL, NULL, NULL, NULL),
(362, 1, 17, 'Kendal', NULL, NULL, NULL, NULL, NULL),
(363, 1, 17, 'Rembang', NULL, NULL, NULL, NULL, NULL),
(364, 1, 4, 'Jantho', NULL, NULL, NULL, NULL, NULL),
(365, 1, 4, 'Kutacane', NULL, NULL, NULL, NULL, NULL),
(366, 1, 4, 'Singkil', NULL, NULL, NULL, NULL, NULL),
(367, 1, 4, 'Sinabang', NULL, NULL, NULL, NULL, NULL),
(368, 1, 4, 'Blangpidie', NULL, NULL, NULL, NULL, NULL),
(369, 1, 4, 'Kuala simpang', NULL, NULL, NULL, NULL, NULL),
(370, 1, 4, 'Lhoksukon', NULL, NULL, NULL, NULL, NULL),
(371, 1, 4, 'Simpang tiga redelon', NULL, NULL, NULL, NULL, NULL),
(372, 1, 4, 'Subulussalam', NULL, NULL, NULL, NULL, NULL),
(373, 1, 4, 'Suka makmur', NULL, NULL, NULL, NULL, NULL),
(374, 1, 24, 'Stabat', NULL, NULL, NULL, NULL, NULL),
(375, 1, 5, 'Lubukpakam', NULL, NULL, NULL, NULL, NULL),
(376, 1, 5, 'Tebing tinggi', NULL, NULL, NULL, NULL, NULL),
(377, 1, 5, 'Kisaran', NULL, NULL, NULL, NULL, NULL),
(378, 1, 5, 'Sidikalang', NULL, NULL, NULL, NULL, NULL),
(379, 1, 5, 'Kabanjahe', NULL, NULL, NULL, NULL, NULL),
(380, 1, 5, 'Rantau prapat', NULL, NULL, NULL, NULL, NULL),
(382, 1, 5, 'Tarutung', NULL, NULL, NULL, NULL, NULL),
(383, 1, 5, 'Balige', NULL, NULL, NULL, NULL, NULL),
(384, 1, 5, 'Dolok sanggul', NULL, NULL, NULL, NULL, NULL),
(385, 1, 5, 'Siborong borong', NULL, NULL, NULL, NULL, NULL),
(386, 1, 5, 'Tanjung morawa', NULL, NULL, NULL, NULL, NULL),
(388, 1, 9, 'Pasir pangaraian', NULL, NULL, NULL, NULL, NULL),
(389, 1, 9, 'Siak sriindrapura', NULL, NULL, NULL, NULL, NULL),
(390, 1, 9, 'Tembilahan', NULL, NULL, NULL, NULL, NULL),
(391, 1, 9, 'Bandar seri bintan', NULL, NULL, NULL, NULL, NULL),
(392, 1, 9, 'Ranai (natuna)', NULL, NULL, NULL, NULL, NULL),
(393, 1, 9, 'Nongsa', NULL, NULL, NULL, NULL, NULL),
(394, 1, 9, 'Kabil', NULL, NULL, NULL, NULL, NULL),
(396, 1, 10, 'Muaro', NULL, NULL, NULL, NULL, NULL),
(397, 1, 10, 'Tua pejat', NULL, NULL, NULL, NULL, NULL),
(398, 1, 10, 'Sijunjung', NULL, NULL, NULL, NULL, NULL),
(399, 1, 11, 'Sungai penuh', NULL, NULL, NULL, NULL, NULL),
(400, 1, 11, 'Muara bungo', NULL, NULL, NULL, NULL, NULL),
(401, 1, 11, 'Bangko', NULL, NULL, NULL, NULL, NULL),
(402, 1, 11, 'Muara tebo', NULL, NULL, NULL, NULL, NULL),
(403, 1, 11, 'Sarolangun', NULL, NULL, NULL, NULL, NULL),
(404, 1, 11, 'Muara bulian', NULL, NULL, NULL, NULL, NULL),
(405, 1, 11, 'Kuala tungkal', NULL, NULL, NULL, NULL, NULL),
(406, 1, 11, 'Sengeti', NULL, NULL, NULL, NULL, NULL),
(407, 1, 13, 'Lahat', NULL, NULL, NULL, NULL, NULL),
(408, 1, 13, 'Kayu agung', NULL, NULL, NULL, NULL, NULL),
(409, 1, 13, 'Indralaya', NULL, NULL, NULL, NULL, NULL),
(410, 1, 13, 'Martapura', NULL, NULL, NULL, NULL, NULL),
(411, 1, 13, 'Muaradua', NULL, NULL, NULL, NULL, NULL),
(412, 1, 13, 'Pagar alam', NULL, NULL, NULL, NULL, NULL),
(413, 1, 13, 'Pangkalan balai', NULL, NULL, NULL, NULL, NULL),
(414, 1, 13, 'Tebing tinggi', NULL, NULL, NULL, NULL, NULL),
(415, 1, 13, 'Sungai gerong', NULL, NULL, NULL, NULL, NULL),
(416, 1, 14, 'Kota agung', NULL, NULL, NULL, NULL, NULL),
(417, 1, 14, 'Metro', NULL, NULL, NULL, NULL, NULL),
(419, 1, 14, 'Sukadana', NULL, NULL, NULL, NULL, NULL),
(420, 1, 14, 'Gunung sugih', NULL, NULL, NULL, NULL, NULL),
(421, 1, 14, 'Bakauheuni', NULL, NULL, NULL, NULL, NULL),
(422, 1, 14, 'Sumber jaya', NULL, NULL, NULL, NULL, NULL),
(423, 1, 14, 'Talang padang', NULL, NULL, NULL, NULL, NULL),
(424, 1, 8, 'Pandeglang', NULL, NULL, NULL, NULL, NULL),
(425, 1, 8, 'Rangkas bitung', NULL, NULL, NULL, NULL, NULL),
(426, 1, 8, 'Merak', NULL, NULL, NULL, NULL, NULL),
(427, 1, 8, 'Anyer', NULL, NULL, NULL, NULL, NULL),
(428, 1, 8, 'Balaraja', NULL, NULL, NULL, NULL, NULL),
(429, 1, 8, 'Serpong', NULL, NULL, NULL, NULL, NULL),
(430, 1, 7, 'Subang', NULL, NULL, NULL, NULL, NULL),
(431, 1, 7, 'Sumber', NULL, NULL, NULL, NULL, NULL),
(432, 1, 7, 'Kuningan', NULL, NULL, NULL, NULL, NULL),
(433, 1, 7, 'Cibinong', NULL, NULL, NULL, NULL, NULL),
(434, 1, 7, 'Soreang', NULL, NULL, NULL, NULL, NULL),
(435, 1, 7, 'Lembang', NULL, NULL, NULL, NULL, NULL),
(436, 1, 7, 'Rancaekek', NULL, NULL, NULL, NULL, NULL),
(437, 1, 7, 'Jatibarang', NULL, NULL, NULL, NULL, NULL),
(438, 1, 7, 'Kadipaten', NULL, NULL, NULL, NULL, NULL),
(439, 1, 7, 'Losari', NULL, NULL, NULL, NULL, NULL),
(440, 1, 7, 'Palimanan', NULL, NULL, NULL, NULL, NULL),
(441, 1, 7, 'Jatiwangi', NULL, NULL, NULL, NULL, NULL),
(442, 1, 17, 'Brebes', NULL, NULL, NULL, NULL, NULL),
(443, 1, 17, 'Pemalang', NULL, NULL, NULL, NULL, NULL),
(444, 1, 17, 'Pati', NULL, NULL, NULL, NULL, NULL),
(445, 1, 17, 'Purwodadi', NULL, NULL, NULL, NULL, NULL),
(446, 1, 17, 'Ungaran', NULL, NULL, NULL, NULL, NULL),
(447, 1, 17, 'Surakarta / solo', NULL, NULL, NULL, NULL, NULL),
(448, 1, 17, 'Slawi', NULL, NULL, NULL, NULL, NULL),
(449, 1, 17, 'Banjar negara', NULL, NULL, NULL, NULL, NULL),
(450, 1, 17, 'Kebumen', NULL, NULL, NULL, NULL, NULL),
(451, 1, 17, 'Purworejo', NULL, NULL, NULL, NULL, NULL),
(452, 1, 17, 'Mungkid', NULL, NULL, NULL, NULL, NULL),
(453, 1, 17, 'Temanggung', NULL, NULL, NULL, NULL, NULL),
(454, 1, 17, 'Ambarawa', NULL, NULL, NULL, NULL, NULL),
(455, 1, 17, 'Cepu', NULL, NULL, NULL, NULL, NULL),
(456, 1, 17, 'Bojonegoro', NULL, NULL, NULL, NULL, NULL),
(457, 1, 17, 'Majenang', NULL, NULL, NULL, NULL, NULL),
(458, 1, 17, 'Ajibarang', NULL, NULL, NULL, NULL, NULL),
(459, 1, 18, 'Wates', NULL, NULL, NULL, NULL, NULL),
(460, 1, 18, 'Bantul', NULL, NULL, NULL, NULL, NULL),
(461, 1, 18, 'Sleman', NULL, NULL, NULL, NULL, NULL),
(463, 1, 18, 'Wonosari', NULL, NULL, NULL, NULL, NULL),
(464, 1, 18, 'Prambanan', NULL, NULL, NULL, NULL, NULL),
(465, 1, 19, 'Magetan', NULL, NULL, NULL, NULL, NULL),
(466, 1, 19, 'Trenggalek', NULL, NULL, NULL, NULL, NULL),
(467, 1, 17, 'Bondowoso', NULL, NULL, NULL, NULL, NULL),
(468, 1, 19, 'Pacitan', NULL, NULL, NULL, NULL, NULL),
(469, 1, 19, 'Bondowoso', NULL, NULL, NULL, NULL, NULL),
(470, 1, 19, 'Situbondo', NULL, NULL, NULL, NULL, NULL),
(471, 1, 19, 'Sampang (madura)', NULL, NULL, NULL, NULL, NULL),
(472, 1, 19, 'Pamekasan (madura)', NULL, NULL, NULL, NULL, NULL),
(473, 1, 19, 'Caruban', NULL, NULL, NULL, NULL, NULL),
(474, 1, 19, 'Paiton', NULL, NULL, NULL, NULL, NULL),
(475, 1, 20, 'Putussibau', NULL, NULL, NULL, NULL, NULL),
(476, 1, 20, 'Ngabang', NULL, NULL, NULL, NULL, NULL),
(477, 1, 20, 'Kubu raya / sungai raya', NULL, NULL, NULL, NULL, NULL),
(478, 1, 20, 'Teluk melano', NULL, NULL, NULL, NULL, NULL),
(479, 1, 20, 'Wajok', NULL, NULL, NULL, NULL, NULL),
(480, 1, 20, 'Bengkayang', NULL, NULL, NULL, NULL, NULL),
(481, 1, 21, 'Kasongan', NULL, NULL, NULL, NULL, NULL),
(482, 1, 21, 'Kuala kurun', NULL, NULL, NULL, NULL, NULL),
(483, 1, 21, 'Purukcahu', NULL, NULL, NULL, NULL, NULL),
(484, 1, 23, 'Tamiang layang', NULL, NULL, NULL, NULL, NULL),
(485, 1, 21, 'Kuala pembuang', NULL, NULL, NULL, NULL, NULL),
(487, 1, 21, 'Pulang pisau', NULL, NULL, NULL, NULL, NULL),
(488, 1, 21, 'Sukamara', NULL, NULL, NULL, NULL, NULL),
(489, 1, 21, 'Lamandau / nangebulik', NULL, NULL, NULL, NULL, NULL),
(490, 1, 22, 'Sendawar', NULL, NULL, NULL, NULL, NULL),
(491, 1, 22, 'Sangata', NULL, NULL, NULL, NULL, NULL),
(492, 1, 22, 'Tanjung redeb', NULL, NULL, NULL, NULL, NULL),
(493, 1, 22, 'Tanjung selor', NULL, NULL, NULL, NULL, NULL),
(494, 1, 22, 'Malinau', NULL, NULL, NULL, NULL, NULL),
(495, 1, 22, 'Nunukan', NULL, NULL, NULL, NULL, NULL),
(496, 1, 22, 'Penajam', NULL, NULL, NULL, NULL, NULL),
(497, 1, 22, 'Teluk pandan', NULL, NULL, NULL, NULL, NULL),
(498, 1, 22, 'Sebatik', NULL, NULL, NULL, NULL, NULL),
(499, 1, 22, 'Palaran', NULL, NULL, NULL, NULL, NULL),
(501, 1, 22, 'Sanga sanga', NULL, NULL, NULL, NULL, NULL),
(502, 1, 22, 'Muara badak', NULL, NULL, NULL, NULL, NULL),
(503, 1, 22, 'Loa kulu', NULL, NULL, NULL, NULL, NULL),
(504, 1, 23, 'Marabahan', NULL, NULL, NULL, NULL, NULL),
(506, 1, 23, 'Sungai danau', NULL, NULL, NULL, NULL, NULL),
(507, 1, 24, 'Kotamobagu', NULL, NULL, NULL, NULL, NULL),
(508, 1, 24, 'Airmadidi', NULL, NULL, NULL, NULL, NULL),
(509, 1, 24, 'Amurang', NULL, NULL, NULL, NULL, NULL),
(510, 1, 24, 'Boroko', NULL, NULL, NULL, NULL, NULL),
(511, 1, 24, 'Ratahan', NULL, NULL, NULL, NULL, NULL),
(512, 1, 24, 'Tahuna', NULL, NULL, NULL, NULL, NULL),
(513, 1, 25, 'Limboto', NULL, NULL, NULL, NULL, NULL),
(514, 1, 25, 'Tilamuta', NULL, NULL, NULL, NULL, NULL),
(515, 1, 25, 'Kwandang', NULL, NULL, NULL, NULL, NULL),
(516, 1, 25, 'Marisa', NULL, NULL, NULL, NULL, NULL),
(517, 1, 25, 'Suwawa', NULL, NULL, NULL, NULL, NULL),
(518, 1, 26, 'Bungku', NULL, NULL, NULL, NULL, NULL),
(519, 1, 26, 'Banggai', NULL, NULL, NULL, NULL, NULL),
(520, 1, 26, 'Parigi', NULL, NULL, NULL, NULL, NULL),
(521, 1, 27, 'Pangkajene', NULL, NULL, NULL, NULL, NULL),
(522, 1, 27, 'Jeneponto', NULL, NULL, NULL, NULL, NULL),
(523, 1, 27, 'Bantaeng', NULL, NULL, NULL, NULL, NULL),
(524, 1, 27, 'Bulukumba', NULL, NULL, NULL, NULL, NULL),
(525, 1, 27, 'Sinjai', NULL, NULL, NULL, NULL, NULL),
(526, 1, 27, 'Watampone', NULL, NULL, NULL, NULL, NULL),
(527, 1, 27, 'Wattan soppeng', NULL, NULL, NULL, NULL, NULL),
(528, 1, 27, 'Sengkang', NULL, NULL, NULL, NULL, NULL),
(529, 1, 27, 'Sidenreng', NULL, NULL, NULL, NULL, NULL),
(530, 1, 27, 'Enrekang', NULL, NULL, NULL, NULL, NULL),
(531, 1, 9, 'Makale', NULL, NULL, NULL, NULL, NULL),
(532, 1, 27, 'Palopo', NULL, NULL, NULL, NULL, NULL),
(533, 1, 27, 'Belopa', NULL, NULL, NULL, NULL, NULL),
(534, 1, 27, 'Benteng', NULL, NULL, NULL, NULL, NULL),
(535, 1, 27, 'Malili', NULL, NULL, NULL, NULL, NULL),
(536, 1, 27, 'Soroako', NULL, NULL, NULL, NULL, NULL),
(537, 1, 28, 'Kolaka', NULL, NULL, NULL, NULL, NULL),
(538, 1, 28, 'Lasusua', NULL, NULL, NULL, NULL, NULL),
(539, 1, 28, 'Pasar wajo', NULL, NULL, NULL, NULL, NULL),
(540, 1, 28, 'Rumbia', NULL, NULL, NULL, NULL, NULL),
(541, 1, 28, 'Unaaha', NULL, NULL, NULL, NULL, NULL),
(542, 1, 28, 'Wanggodo/andolo', NULL, NULL, NULL, NULL, NULL),
(543, 1, 28, 'Wangi-wangi', NULL, NULL, NULL, NULL, NULL),
(544, 1, 6, 'Amlapura', NULL, NULL, NULL, NULL, NULL),
(545, 1, 6, 'Semarapura', NULL, NULL, NULL, NULL, NULL),
(546, 1, 6, 'Negara', NULL, NULL, NULL, NULL, NULL),
(547, 1, 6, 'Kuta', NULL, NULL, NULL, NULL, NULL),
(548, 1, 6, 'Nusa dua', NULL, NULL, NULL, NULL, NULL),
(549, 1, 6, 'Sanur', NULL, NULL, NULL, NULL, NULL),
(550, 1, 6, 'Gilimanuk', NULL, NULL, NULL, NULL, NULL),
(551, 1, 6, 'Ngurah rai', NULL, NULL, NULL, NULL, NULL),
(552, 1, 6, 'Jimbaran', NULL, NULL, NULL, NULL, NULL),
(553, 1, 6, 'Mengwi', NULL, NULL, NULL, NULL, NULL),
(554, 1, 29, 'Gerung', NULL, NULL, NULL, NULL, NULL),
(555, 1, 29, 'Woha / ramba', NULL, NULL, NULL, NULL, NULL),
(557, 1, 30, 'Waikabubak', NULL, NULL, NULL, NULL, NULL),
(558, 1, 30, 'Borong', NULL, NULL, NULL, NULL, NULL),
(559, 1, 30, 'Labuan bajo', NULL, NULL, NULL, NULL, NULL),
(560, 1, 30, 'Mbay', NULL, NULL, NULL, NULL, NULL),
(561, 1, 30, 'Oelamasi', NULL, NULL, NULL, NULL, NULL),
(562, 1, 30, 'Tambolaka', NULL, NULL, NULL, NULL, NULL),
(563, 1, 30, 'Waibakul', NULL, NULL, NULL, NULL, NULL),
(564, 1, 30, 'Baa', NULL, NULL, NULL, NULL, NULL),
(565, 1, 31, 'Namlea', NULL, NULL, NULL, NULL, NULL),
(566, 1, 31, 'Masohi', NULL, NULL, NULL, NULL, NULL),
(567, 1, 31, 'Saumlaki', NULL, NULL, NULL, NULL, NULL),
(568, 1, 31, 'Dataran hunimoa', NULL, NULL, NULL, NULL, NULL),
(569, 1, 31, 'Piru', NULL, NULL, NULL, NULL, NULL),
(570, 1, 32, 'Jailolo', NULL, NULL, NULL, NULL, NULL),
(571, 1, 32, 'Labuha', NULL, NULL, NULL, NULL, NULL),
(572, 1, 32, 'Maba', NULL, NULL, NULL, NULL, NULL),
(573, 1, 32, 'Sanana', NULL, NULL, NULL, NULL, NULL),
(574, 1, 32, 'Tidore', NULL, NULL, NULL, NULL, NULL),
(575, 1, 32, 'Tobelo', NULL, NULL, NULL, NULL, NULL),
(576, 1, 32, 'Weda / soasiu', NULL, NULL, NULL, NULL, NULL),
(577, 1, 33, 'Waisai', NULL, NULL, NULL, NULL, NULL),
(578, 1, 33, 'Kaimana', NULL, NULL, NULL, NULL, NULL),
(579, 1, 33, 'Teminabuan', NULL, NULL, NULL, NULL, NULL),
(580, 1, 33, 'Tembaga pura', NULL, NULL, NULL, NULL, NULL),
(581, 1, 34, 'Rasiei', NULL, NULL, NULL, NULL, NULL),
(582, 1, 34, 'Botawa', NULL, NULL, NULL, NULL, NULL),
(583, 1, 35, 'Sarmi', NULL, NULL, NULL, NULL, NULL),
(584, 1, 35, 'Mulia', NULL, NULL, NULL, NULL, NULL),
(585, 1, 35, 'Agats', NULL, NULL, NULL, NULL, NULL),
(586, 1, 35, 'Kepi', NULL, NULL, NULL, NULL, NULL),
(587, 1, 35, 'Tanah merah', NULL, NULL, NULL, NULL, NULL),
(588, 1, 35, 'Oksibil', NULL, NULL, NULL, NULL, NULL),
(589, 1, 35, 'Waris', NULL, NULL, NULL, NULL, NULL),
(590, 1, 35, 'Sumohai', NULL, NULL, NULL, NULL, NULL),
(591, 1, 35, 'Sentani', NULL, NULL, NULL, NULL, NULL),
(592, 1, 35, 'Burmeso', NULL, NULL, NULL, NULL, NULL),
(593, 1, 4, 'Blang kejeren', NULL, NULL, NULL, NULL, NULL),
(594, 1, 4, 'Idi rayeuk', NULL, NULL, NULL, NULL, NULL),
(595, 1, 4, 'Krueng sabee', NULL, NULL, NULL, NULL, NULL),
(596, 1, 4, 'Meureudu', NULL, NULL, NULL, NULL, NULL),
(597, 1, 4, 'Calang', NULL, NULL, NULL, NULL, NULL),
(598, 1, 5, 'Stabat', NULL, NULL, NULL, NULL, NULL),
(599, 1, 5, 'Penyabungan', NULL, NULL, NULL, NULL, NULL),
(600, 1, 5, 'Gunung sitoli', NULL, NULL, NULL, NULL, NULL),
(601, 1, 5, 'Gunung tua', NULL, NULL, NULL, NULL, NULL),
(602, 1, 5, 'Limapuluh', NULL, NULL, NULL, NULL, NULL),
(603, 1, 5, 'Pangururan', NULL, NULL, NULL, NULL, NULL),
(604, 1, 5, 'Salak', NULL, NULL, NULL, NULL, NULL),
(605, 1, 5, 'Sei rampah', NULL, NULL, NULL, NULL, NULL),
(606, 1, 5, 'Sibuhuan', NULL, NULL, NULL, NULL, NULL),
(607, 1, 5, 'Sipirok', NULL, NULL, NULL, NULL, NULL),
(608, 1, 5, 'Teluk dalam', NULL, NULL, NULL, NULL, NULL),
(609, 1, 5, 'Laguboti', NULL, NULL, NULL, NULL, NULL),
(610, 1, 9, 'Ujung tanjung', NULL, NULL, NULL, NULL, NULL),
(611, 1, 9, 'Teluk kuantan', NULL, NULL, NULL, NULL, NULL),
(612, 1, 9, 'Rumbai', NULL, NULL, NULL, NULL, NULL),
(613, 1, 9, 'Marpoyan', NULL, NULL, NULL, NULL, NULL),
(614, 1, 9, 'Lingga/daik', NULL, NULL, NULL, NULL, NULL),
(615, 1, 10, 'Arosuka', NULL, NULL, NULL, NULL, NULL),
(616, 1, 10, 'Padang pariaman', NULL, NULL, NULL, NULL, NULL),
(617, 1, 10, 'Lima puluh kota', NULL, NULL, NULL, NULL, NULL),
(618, 1, 10, 'Solok selatan', NULL, NULL, NULL, NULL, NULL),
(619, 1, 10, 'Kep pagai', NULL, NULL, NULL, NULL, NULL),
(620, 1, 11, 'Muara sabak', NULL, NULL, NULL, NULL, NULL),
(621, 1, 11, 'Ramba', NULL, NULL, NULL, NULL, NULL),
(622, 1, 12, 'Kaur', NULL, NULL, NULL, NULL, NULL),
(623, 1, 12, 'Lebong', NULL, NULL, NULL, NULL, NULL),
(624, 1, 12, 'Tais', NULL, NULL, NULL, NULL, NULL),
(625, 1, 13, 'Muara beliti', NULL, NULL, NULL, NULL, NULL),
(626, 1, 13, 'Sungai lilin', NULL, NULL, NULL, NULL, NULL),
(627, 1, 14, 'Liwa', NULL, NULL, NULL, NULL, NULL),
(628, 1, 14, 'Blambangan umpu', NULL, NULL, NULL, NULL, NULL),
(629, 1, 14, 'Gedong tataan', NULL, NULL, NULL, NULL, NULL),
(630, 1, 14, 'Krui/pesisir tengah', NULL, NULL, NULL, NULL, NULL),
(631, 1, 14, 'Bukit kemuning', NULL, NULL, NULL, NULL, NULL),
(632, 1, 15, 'Manggar', NULL, NULL, NULL, NULL, NULL),
(633, 1, 15, 'Kelapa', NULL, NULL, NULL, NULL, NULL),
(634, 1, 7, 'Ngamprah / cimamere', NULL, NULL, NULL, NULL, NULL),
(635, 1, 17, 'Bumi ayu', NULL, NULL, NULL, NULL, NULL),
(636, 1, 19, 'Batu', NULL, NULL, NULL, NULL, NULL),
(637, 1, 19, 'Krasaan', NULL, NULL, NULL, NULL, NULL),
(638, 1, 21, 'Tamiang layang', NULL, NULL, NULL, NULL, NULL),
(639, 1, 27, 'Makale', NULL, NULL, NULL, NULL, NULL),
(640, 1, 31, 'Dobo', NULL, NULL, NULL, NULL, NULL),
(641, 1, 12, 'Muko muko', NULL, NULL, NULL, NULL, NULL),
(642, 1, 12, 'Arga makmur', NULL, NULL, NULL, NULL, NULL),
(643, 1, 12, 'Kepahiang', NULL, NULL, NULL, NULL, NULL),
(644, 1, 14, 'Manggala', NULL, NULL, NULL, NULL, NULL),
(645, 1, 14, 'Blambangan umpu', NULL, NULL, NULL, NULL, NULL),
(646, 1, 8, 'Tigaraksa', NULL, NULL, NULL, NULL, NULL),
(647, 1, 7, 'Kota banjar', NULL, NULL, NULL, NULL, NULL),
(648, 1, 17, 'Kartosuro', NULL, NULL, NULL, NULL, NULL),
(649, 1, 19, 'Sumenep (madura)', NULL, NULL, NULL, NULL, NULL),
(650, 1, 20, 'Sekadau hilir', NULL, NULL, NULL, NULL, NULL),
(651, 1, 21, 'Pangkalan bun', NULL, NULL, NULL, NULL, NULL),
(652, 1, 23, 'Peleihari', NULL, NULL, NULL, NULL, NULL),
(653, 1, 14, 'Baradatu', NULL, NULL, NULL, NULL, NULL),
(654, 2, 37, 'xc', '', '2012-02-09 09:58:00', 0, NULL, NULL),
(655, 1, 6, 'Uluwatu', '', '2015-12-15 12:05:56', 11, NULL, NULL),
(656, 1, 6, 'Badung', '', '2015-12-15 12:08:20', 11, NULL, NULL),
(657, 1, 6, 'Legian', '', '2015-12-15 12:43:55', 11, NULL, NULL),
(658, 1, 6, 'Seminyak', '', '2015-12-15 12:52:32', 11, NULL, NULL),
(659, 1, 6, 'Pecatu', '', '2015-12-15 13:03:16', 11, NULL, NULL),
(660, 1, 6, 'Kerobokan', '', '2015-12-15 14:34:41', 11, NULL, NULL),
(661, 1, 6, 'ABIANSEMAL', '', '2019-10-11 10:34:06', 14, NULL, NULL),
(662, 1, 6, 'MAMBAL', '', '2019-10-11 12:51:41', 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_marketing`
--

CREATE TABLE `m_marketing` (
  `pk` int(11) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tlp` varchar(50) NOT NULL,
  `kdwilayah` varchar(5) DEFAULT NULL,
  `ctn` text DEFAULT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT 0,
  `username` varchar(5) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_marketing`
--

INSERT INTO `m_marketing` (`pk`, `nm`, `alamat`, `tlp`, `kdwilayah`, `ctn`, `aktif`, `username`, `pass`) VALUES
(2, 'santi', '-', '082839829', '1', NULL, 1, 'santi', '336d5ebc5436534e61d16e63ddfca327');

-- --------------------------------------------------------

--
-- Table structure for table `m_nasabah`
--

CREATE TABLE `m_nasabah` (
  `pk` int(11) NOT NULL,
  `kd` varchar(50) NOT NULL,
  `noanggota` varchar(50) NOT NULL,
  `ktp` varchar(50) NOT NULL DEFAULT '-',
  `nm` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL DEFAULT '-',
  `alamat1` varchar(255) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `propinsi` varchar(100) NOT NULL,
  `kodepos` varchar(8) NOT NULL,
  `negara` varchar(50) NOT NULL,
  `tlp` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL DEFAULT 'Pria',
  `tempatlahir` varchar(100) NOT NULL DEFAULT '-',
  `tgllahir` date NOT NULL,
  `agama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Good Debitur' COMMENT 'tambahan versi baru (baddebitur , good debitur)blacklist',
  `aktif` varchar(10) NOT NULL DEFAULT 'Aktif',
  `pekerjaan` varchar(255) NOT NULL,
  `nmperusahaan` varchar(255) NOT NULL,
  `alamatpekerjaan` varchar(255) NOT NULL,
  `tlppekerjaan` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `ctn` varchar(255) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) NOT NULL,
  `marketingfk` int(11) NOT NULL,
  `wilayahfk` int(10) DEFAULT NULL,
  `departemenfk` int(11) DEFAULT NULL,
  `anggota` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=anggota 0 bukan',
  `tglregistrasi` date NOT NULL,
  `norek` varchar(30) NOT NULL,
  `an` varchar(100) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `plafon` double NOT NULL DEFAULT 0,
  `simpananpokok` double NOT NULL DEFAULT 0,
  `simpananwajib` double NOT NULL DEFAULT 0,
  `simpanansukarela` double NOT NULL DEFAULT 0,
  `tabungan` double NOT NULL DEFAULT 0,
  `pinjaman` double NOT NULL DEFAULT 0,
  `pottabungan` double NOT NULL DEFAULT 0,
  `potpinjaman` double NOT NULL DEFAULT 0,
  `bungapinjaman` float NOT NULL DEFAULT 0,
  `pokokpinjaman` double NOT NULL DEFAULT 0,
  `potpinjamantetap` double NOT NULL DEFAULT 0,
  `bungapinjamantetap` double NOT NULL DEFAULT 0,
  `pokokpinjamantetap` double NOT NULL DEFAULT 0,
  `piutangvoucher` double NOT NULL DEFAULT 0,
  `angsurantanpabunga` double NOT NULL DEFAULT 0,
  `kredittoko` double NOT NULL DEFAULT 0,
  `konsumsi` double NOT NULL DEFAULT 0,
  `totalperdagangan` double NOT NULL DEFAULT 0,
  `potwajib` double DEFAULT 0,
  `potprogram` double DEFAULT 0,
  `potlain` double NOT NULL DEFAULT 0,
  `potpokok` double NOT NULL DEFAULT 0,
  `pengelola` tinyint(4) NOT NULL DEFAULT 0,
  `sisakredit` double NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0,
  `piutangtoko` double NOT NULL DEFAULT 0,
  `groupfk` int(11) DEFAULT 1,
  `limitpiutang` double NOT NULL DEFAULT 0,
  `nik` varchar(50) NOT NULL,
  `jmlvoucher` double NOT NULL DEFAULT 0,
  `jmlvoucherimport` int(11) NOT NULL DEFAULT 0,
  `member` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_nasabah`
--

INSERT INTO `m_nasabah` (`pk`, `kd`, `noanggota`, `ktp`, `nm`, `alamat`, `alamat1`, `kota`, `propinsi`, `kodepos`, `negara`, `tlp`, `sex`, `tempatlahir`, `tgllahir`, `agama`, `email`, `username`, `password`, `status`, `aktif`, `pekerjaan`, `nmperusahaan`, `alamatpekerjaan`, `tlppekerjaan`, `jabatan`, `ctn`, `foto`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `marketingfk`, `wilayahfk`, `departemenfk`, `anggota`, `tglregistrasi`, `norek`, `an`, `bank`, `plafon`, `simpananpokok`, `simpananwajib`, `simpanansukarela`, `tabungan`, `pinjaman`, `pottabungan`, `potpinjaman`, `bungapinjaman`, `pokokpinjaman`, `potpinjamantetap`, `bungapinjamantetap`, `pokokpinjamantetap`, `piutangvoucher`, `angsurantanpabunga`, `kredittoko`, `konsumsi`, `totalperdagangan`, `potwajib`, `potprogram`, `potlain`, `potpokok`, `pengelola`, `sisakredit`, `admin`, `piutangtoko`, `groupfk`, `limitpiutang`, `nik`, `jmlvoucher`, `jmlvoucherimport`, `member`) VALUES
(0, '0000', '0000', '', 'UMUM', '-', '', '', '', '', '', '', 'Pria', '-', '0000-00-00', '', '', '', '', 'Good Debitur', 'Aktif', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 23, 0, 0, 0, 0, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 766000, 0, 0, 0, 0, 0, 0, 0, 0, 448000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314854, '0001', '0001', '-', 'EKA PURNAMA ANTARI', 'JL RAJAWALI NO 12', '', '', '', '', '', '085338081188', 'Pria', 'TABANAN', '1987-11-06', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:03', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 14073, 14073, 1),
(314855, '0002', '0002', '-', 'DESI ADNYANI ', 'PENDEM', '', '', '', '', '', '0881038822793', 'Pria', 'PENDEM', '1998-12-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:06', 0, '2023-12-27 21:42:32', 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3096, 3096, 1),
(314856, '0003', '0003', '-', 'TINIK', 'BANYUBIRU', '', '', '', '', '', '087854799624', 'Pria', 'JEMBRANA', '1997-02-18', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:06', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1369, 1369, 1),
(314857, '0004', '0004', '-', 'I KOMANG SUARTAWAN', 'CANDIKUSUMA', '', '', '', '', '', '082146571981', 'Pria', 'KELUNGKUNG', '1981-10-19', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:06', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2142, 2142, 1),
(314858, '0005', '0005', '-', 'ASIANI', 'PENDEM', '', '', '', '', '', '081529972524', 'Pria', 'PENDEM', '2000-07-14', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:06', 0, '2023-12-27 21:39:14', 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 944, 944, 1),
(314859, '0006', '0006', '-', 'DR MERTA INDRAWATI', '', '', '', '', '', '', '', 'Pria', '', '2022-12-29', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 19178, 19178, 1),
(314860, '0007', '0007', '-', 'IBU DAYU', '', '', '', '', '', '', '087863989771', 'Pria', '', '2022-12-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2285, 2285, 1),
(314861, '0008', '0008', '-', 'SRI DEWI', 'BANYUBIRU', '', '', '', '', '', '081999561700', 'Pria', '', '2022-12-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2492, 2492, 1),
(314862, '0009', '0009', '-', 'I KETUT SARBA', 'MODING KAJA', '', '', '', '', '', '087762601888', 'Pria', 'MODING KAJA', '2022-12-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 7537, 7537, 1),
(314863, '0010', '0010', '-', 'MAHAYU SELINA YUDA ', '', '', '', '', '', '', '081805654127', 'Pria', '', '2022-12-31', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 703, 703, 1),
(314864, '0011', '0011', '-', 'KETUT ARNIATI', '', '', '', '', '', '', '081918061222', 'Pria', '', '2022-12-31', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 179, 179, 1),
(314865, '0012', '0012', '-', 'NI LUH MADE PURNAMA WATI', 'NEGARA', '', '', '', '', '', '081238414079', 'Pria', '', '2022-12-31', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3921, 3921, 1),
(314866, '0013', '0013', '-', 'EKA WAHYUNI', 'BALUK BANJAR ANYAR', '', '', '', '', '', '085738940432', 'Pria', 'NEGARA', '1990-03-06', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 11550, 11550, 1),
(314867, '0014', '0014', '-', 'NIA', '', '', '', '', '', '', '087863213337', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 4129, 4129, 1),
(314868, '0015', '0015', '-', 'IBU AYU', 'BANYUBIRU', '', '', '', '', '', '081239452158', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 14876, 14876, 1),
(314869, '0016', '0016', '-', 'DOKTER HAPPY', 'DANGIN TUKADDAYA', '', '', '', '', '', '081351248162', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 30082, 30082, 1),
(314870, '0017', '0017', '-', 'DIAH PUSPITA', 'BANYUBIRU', '', '', '', '', '', '081246304165', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 14682, 14682, 1),
(314871, '0018', '0018', '-', 'KADEK NOVIANA', 'BANYUBIRU', '', '', '', '', '', '081237343957', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 7879, 7879, 1),
(314872, '0019', '0019', '-', 'PUTU DIANA', 'BANYUBIRU', '', '', '', '', '', '087857370587', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 6068, 6068, 1),
(314873, '0020', '0020', '-', 'IBUK SUN', 'BANYUBIRU', '', '', '', '', '', '087851012262', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3483, 3483, 1),
(314874, '0021', '0021', '-', 'WYN ADIWIJAYA', 'ASAHDUREN', '', '', '', '', '', '08563770932', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:07', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 18893, 18893, 1),
(314875, '0022', '0022', '-', 'AYU NARIYANTI', 'BANYUBIRU', '', '', '', '', '', '087860485792', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 5182, 5182, 1),
(314876, '0023', '0023', '-', 'KADEK RATNA', 'BANYUBIRU', '', '', '', '', '', '087861805661', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 6877, 6877, 1),
(314877, '0024', '0024', '-', 'GEDE DARMA', 'BANYUBIRU', '', '', '', '', '', '087857767936', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 18690, 18690, 1),
(314878, '0025', '0025', '-', 'NINING ALFIA', 'BANYUBIRU', '', '', '', '', '', '081933139092', 'Pria', '', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 930, 930, 1),
(314879, '0026', '0026', '-', 'ARIANA', '', '', '', '', '', '', '081916144906', 'Pria', 'MENDOYO', '2023-01-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2010, 2010, 1),
(314880, '0027', '0027', '-', 'NUFA', 'JLN UDAYANA NO 80', '', '', '', '', '', '081286656663', 'Pria', '', '2023-01-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314881, '0028', '0028', '-', 'MADE DWI SUMITI', 'BANYUBIRU', '', '', '', '', '', '081238192787', 'Pria', '', '2023-01-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 10926, 10926, 1),
(314882, '0029', '0029', '-', 'FADLI', 'BANJAR AIR ANAKAN, BANYUBIRU', '', '', '', '', '', '087881321313', 'Pria', 'MALANG ', '1987-09-08', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1553, 1553, 1),
(314883, '0030', '0030', '-', 'IBUK BUDI', 'LELATENG', '', '', '', '', '', '087863095850', 'Pria', 'BANYUBIRU', '1974-11-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3783, 3783, 1),
(314884, '0031', '0031', '-', 'LUFI MURYANI', 'BANYUBIRU', '', '', '', '', '', '087863548447', 'Pria', 'BANYUWANGI', '1991-07-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 10520, 10520, 1),
(314885, '0032', '0032', '-', 'WAHYU', 'KALIAKAH', '', '', '', '', '', '081916199195', 'Pria', 'KALIAKAH', '2023-01-07', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 10488, 10488, 1),
(314886, '0033', '0033', '-', 'BAYU PRATAMA', 'ASAH DUREN', '', '', '', '', '', '087860285220', 'Pria', '', '2023-01-07', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 5383, 5383, 1),
(314887, '0034', '0034', '-', 'ICHA', '', '', '', '', '', '', '081805390609', 'Pria', '', '2023-01-09', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 4660, 4660, 1),
(314888, '0035', '0035', '-', 'MUSLIM', 'SATRIA', '', '', '', '', '', '081353097036', 'Pria', '', '1970-08-07', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 465, 465, 1),
(314889, '0036', '0036', '-', 'I NENGAH ARNAWA', 'BANJAR TANGIMEYEH', '', '', '', '', '', '087851321013', 'Pria', '', '1975-07-17', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 16818, 16818, 1),
(314890, '0037', '0037', '-', 'NI MADE AYU SEPTIANI', 'BR BRAWANTANGGI', '', '', '', '', '', '082247257885', 'Pria', '', '1991-09-28', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 843, 843, 1),
(314891, '0038', '0038', '-', 'I GST NGRH KT YUDIARTAWAN', 'MENDOYO DAUH TUKAD', '', '', '', '', '', '087862660999', 'Pria', '', '1981-10-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:08', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1448, 1448, 1),
(314892, '0039', '0039', '-', 'NI KETUT DIANTARI', '', '', '', '', '', '', '081717313388', 'Pria', '', '2023-01-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 606, 606, 1),
(314893, '0040', '0040', '-', 'SUMADI', '', '', '', '', '', '', '085739615856', 'Pria', '', '2023-01-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 630, 630, 1),
(314894, '0041', '0041', '-', 'NURSILAWATI', '', '', '', '', '', '', '082339779331', 'Pria', '', '2023-01-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 92, 92, 1),
(314895, '0042', '0042', '-', 'KM SUDIARTA', '', '', '', '', '', '', '087761691585', 'Pria', '', '2023-01-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2818, 2818, 1),
(314896, '0043', '0043', '-', 'I PUTU YUDIANA ', '', '', '', '', '', '', '081236129696', 'Pria', '', '2023-01-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314897, '0044', '0044', '-', 'YOGI JR', '', '', '', '', '', '', '081805368497', 'Pria', '', '1993-01-19', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 516, 516, 1),
(314898, '0045', '0045', '-', 'EDI ARYAWAN', '', '', '', '', '', '', '085737861778', 'Pria', '', '2023-01-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3090, 3090, 1),
(314899, '0046', '0046', '-', 'HOTEL JATI', '', '', '', '', '', '', '', 'Pria', '', '2023-01-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 27339, 27339, 1),
(314900, '0047', '0047', '-', 'NYOMAN MURNI', 'BALUK', '', '', '', '', '', '081338310809', 'Pria', '', '2023-01-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 7488, 7488, 1),
(314901, '0048', '0048', '-', 'PAK AGUS SAMSAT', '', '', '', '', '', '', '085857078588', 'Pria', '', '2023-01-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2201, 2201, 1),
(314902, '0049', '0049', '-', 'IB BARUNA', '', '', '', '', '', '', '081935687888', 'Pria', '', '2023-01-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314903, '0050', '0050', '-', 'ARI', 'BALUK', '', '', '', '', '', '081915606018', 'Pria', '', '2023-01-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 404, 404, 1),
(314904, '0051', '0051', '-', 'RINA INDRIANI', '', '', '', '', '', '', '083852495215', 'Pria', '', '2023-01-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 6430, 6430, 1),
(314905, '0052', '0052', '-', 'WAHYU', 'MELAYA', '', '', '', '', '', '082247442546', 'Pria', 'MELAYA', '2023-01-13', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314906, '0053', '0053', '-', 'BUK AGUNG SAMSAT', '', '', '', '', '', '', '082145199354', 'Pria', '', '2023-01-14', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 8461, 8461, 1),
(314907, '0054', '0054', '-', 'RITA PUSPITA', '', '', '', '', '', '', '081936345548', 'Pria', '', '2023-01-15', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:09', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314908, '0055', '0055', '-', 'SUKARMAN', '', '', '', '', '', '', '082144018490', 'Pria', '', '2023-01-16', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 787, 787, 1),
(314909, '0056', '0056', '-', 'NI NYOMAN WIRAWATI', 'BR KALIAKAH', '', '', '', '', '', '08226599962', 'Pria', '', '1967-08-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1324, 1324, 1),
(314910, '0057', '0057', '-', 'NI LUH OKTA RAINI', '', '', '', '', '', '', '081805378235', 'Pria', '', '2023-01-17', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1007, 1007, 1),
(314911, '0058', '0058', '-', 'IBUK SRI', 'BALUK 1', '', '', '', '', '', '081936364323', 'Pria', 'MEDEWI', '1988-07-03', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1079, 1079, 1),
(314912, '0059', '0059', '-', 'SUKMA YANI', 'ANYAR SARI KANGIN, MELAYA', '', '', '', '', '', '087859928236', 'Pria', 'DENPASAR', '1989-04-07', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314913, '0060', '0060', '-', 'SUNI JUNIARTI', '', '', '', '', '', '', '085792424876', 'Pria', '', '2023-01-18', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1290, 1290, 1),
(314914, '0061', '0061', '-', 'IBUK AYUK', '', '', '', '', '', '', '081337590163', 'Pria', '', '2023-01-19', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314915, '0062', '0062', '-', 'ASTITI', '', '', '', '', '', '', '087863213764', 'Pria', '', '2023-01-22', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 5369, 5369, 1),
(314916, '0063', '0063', '-', 'DEDEK JATI', '', '', '', '', '', '', '085738044790', 'Pria', '', '2023-01-22', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2620, 2620, 1),
(314917, '0064', '0064', '-', 'MILLENIA', '', '', '', '', '', '', '083147675938', 'Pria', '', '2023-01-22', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1370, 1370, 1),
(314918, '0065', '0065', '-', 'FEBRINA', '', '', '', '', '', '', '081228886999', 'Pria', '', '2023-01-23', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 334, 334, 1),
(314919, '0066', '0066', '-', 'KURNIASIH', '', '', '', '', '', '', '08113899977', 'Pria', '', '2023-01-23', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314920, '0067', '0067', '-', 'NI PUTU EMI CANDRA DEWI', '', '', '', '', '', '', '081994417111', 'Pria', '', '2023-01-23', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1943, 1943, 1),
(314921, '0068', '0068', '-', 'AYU TRI ABSARI', '', '', '', '', '', '', '081936610241', 'Pria', '', '2023-01-24', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 5530, 5530, 1),
(314922, '0069', '0069', '-', 'AYU NITA', '', '', '', '', '', '', '087863219493', 'Pria', '', '2023-01-24', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314923, '0070', '0070', '-', 'PAK DOK', '', '', '', '', '', '', '085969035632', 'Pria', '', '2023-01-25', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:10', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 4604, 4604, 1),
(314924, '0071', '0071', '-', 'NI WAYAN PELNI', '', '', '', '', '', '', '081338150686', 'Pria', '', '2023-01-25', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2243, 2243, 1),
(314925, '0072', '0072', '-', 'IGA SEKARINI', 'BANYUBIRU', '', '', '', '', '', '083142973799', 'Pria', '', '2023-01-25', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 86, 86, 1),
(314926, '0073', '0073', '-', 'MILA WARDANI', 'BANYUBIRU', '', '', '', '', '', '082138751166', 'Pria', '', '2023-01-25', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 18619, 18619, 1),
(314927, '0074', '0074', '-', 'AGUNG WIRA', 'BANYUBIRU', '', '', '', '', '', '', 'Pria', '', '2023-01-25', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314928, '0075', '0075', '-', 'GEDE GELGEL', 'MANISTUTU', '', '', '', '', '', '081315987533', 'Pria', '', '2023-01-25', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 22495, 22495, 1),
(314929, '0076', '0076', '-', 'MADE ARTINI', '', '', '', '', '', '', '0817347173', 'Pria', 'BANYUBIRU.', '2023-01-26', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 4792, 4792, 1),
(314930, '0077', '0077', '-', 'UMI IZAT', 'BANYUBIRU', '', '', '', '', '', '08179560862', 'Pria', '', '2023-01-26', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 7225, 7225, 1),
(314931, '0078', '0078', '-', 'GEDE SUMERTA', 'BANYUBIRU', '', '', '', '', '', '087771068782', 'Pria', '', '2023-01-26', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 245, 245, 1),
(314932, '0079', '0079', '-', 'NOVI ENGGELIA', 'PEH', '', '', '', '', '', '082139107013', 'Pria', '', '2023-01-26', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3863, 3863, 1),
(314933, '0080', '0080', '-', 'LUH EKA', 'EKA SARI ,MELAYA', '', '', '', '', '', '08179784203', 'Pria', '', '1985-01-23', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 715, 715, 1),
(314934, '0081', '0081', '-', 'AGUSTINA', '', '', '', '', '', '', '081936036945', 'Pria', '', '2023-01-26', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314935, '0082', '0082', '-', 'MESSYA', 'MEDEWI', '', '', '', '', '', '085792322889', 'Pria', '', '2023-01-27', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 152, 152, 1),
(314936, '0083', '0083', '-', 'IBUK SURYA', '', '', '', '', '', '', '085237679662', 'Pria', '', '2023-01-27', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 12918, 12918, 1),
(314937, '0084', '0084', '-', 'YUDIK', '', '', '', '', '', '', '085955152173', 'Pria', '', '2023-01-27', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 4007, 4007, 1),
(314938, '0085', '0085', '-', 'DWI ANJANI', '', '', '', '', '', '', '087830332912', 'Pria', '', '2023-01-29', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3645, 3645, 1),
(314939, '0086', '0086', '-', 'MAHARDANA', 'SATRIA', '', '', '', '', '', '087862792002', 'Pria', '', '2023-01-29', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1365, 1365, 1),
(314940, '0087', '0087', '-', 'NI PUTU SRI DARMAWATI', '', '', '', '', '', '', '085738316959', 'Pria', '', '2023-01-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:11', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314941, '0088', '0088', '-', 'PAK MAN SAMSAT', '', '', '', '', '', '', '087860345514', 'Pria', '', '2023-01-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 5328, 5328, 1),
(314942, '0089', '0089', '-', 'DEWA AYU', '', '', '', '', '', '', '085964235651', 'Pria', '', '2023-01-31', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2163, 2163, 1),
(314943, '0090', '0090', '-', 'BUK MITA', 'BALUK', '', '', '', '', '', '081237367123', 'Pria', '', '2023-01-31', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 11491, 11491, 1),
(314944, '0092', '0092', '-', 'EKA ', '', '', '', '', '', '', '085935495777', 'Pria', '', '2023-02-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 8275, 8275, 1),
(314945, '0093', '0093', '-', 'NI LUH SUNARMI', '', '', '', '', '', '', '087853156235', 'Pria', '', '2023-02-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 4004, 4004, 1),
(314946, '0094', '0094', '-', 'NI KT ARNIATI', '', '', '', '', '', '', '081918061222', 'Pria', '', '2023-02-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 15764, 15764, 1),
(314947, '0095', '0095', '-', 'MAHAYUSOLINAYUDA', '', '', '', '', '', '', '081805654127', 'Pria', '', '2023-02-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2151, 2151, 1),
(314948, '0096', '0096', '-', 'LINDA', '', '', '', '', '', '', '', 'Pria', '', '2023-02-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 946, 946, 1),
(314949, '0097', '0097', '-', 'WAYAN SUKERTI', '', '', '', '', '', '', '087858760949', 'Pria', '', '2023-02-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1541, 1541, 1),
(314950, '0098', '0098', '-', 'AMI', '', '', '', '', '', '', '083115353375', 'Pria', '', '2023-02-04', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314951, '0099', '0099', '-', 'BINTANG', 'MENDOYO', '', '', '', '', '', '081805510193', 'Pria', 'MENDOYO', '1985-05-16', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2622, 2622, 1),
(314952, '0100', '0100', '-', 'YENI', '', '', '', '', '', '', '087700927652', 'Pria', '', '2023-02-08', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2280, 2280, 1),
(314953, '0101', '0101', '-', 'DOKTER GEDE EKA', 'BR TENGAH', '', '', '', '', '', '081353360194', 'Pria', '', '2023-02-08', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3621, 3621, 1),
(314954, '0102', '0102', '-', 'WIDI ADNYANA', '', '', '', '', '', '', '087753016445', 'Pria', '', '2023-02-09', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314955, '0103', '0103', '-', 'BAPAK JULI', 'TUWED', '', '', '', '', '', '082247159415', 'Pria', '', '1992-07-26', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 139, 139, 1),
(314956, '0104', '0104', '-', 'SINTYA', 'BANYUBIRU', '', '', '', '', '', '087881234894', 'Pria', 'KALIAKAH', '1994-07-03', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:12', 0, '2023-12-27 21:44:47', 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2376, 2246, 1),
(314957, '0105', '0105', '-', 'GUSTI AYU INDAHSARI', 'BALUK', '', '', '', '', '', '081337590163', 'Pria', '', '2023-02-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2007, 2007, 1),
(314958, '0107', '0107', '-', 'REGINA', '', '', '', '', '', '', '085333698770', 'Pria', '', '2023-02-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314959, '0108', '0108', '-', 'PUJI ASTUTI', 'LOLOAN TIMUR', '', '', '', '', '', '087860497767', 'Pria', 'KALIAKAH ', '1990-04-17', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 934, 934, 1),
(314960, '0109', '0109', '-', 'DW AYU PT RISKA KUSUMA ', 'BALUK, BANJAR ANYAR', '', '', '', '', '', '0881038027588', 'Pria', 'BANYUBIRU', '1991-08-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1604, 1604, 1),
(314961, '0110', '0110', '-', 'KADEK DWI', 'BANYUBIRU', '', '', '', '', '', '081246246838', 'Pria', '', '2023-02-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 294, 294, 1),
(314962, '0111', '0111', '-', 'KOMANG ANDRIANI', '', '', '', '', '', '', '081946448819', 'Pria', '', '2023-02-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 921, 921, 1),
(314963, '0112', '0112', '-', 'KETUT SIWA', '', '', '', '', '', '', '087861960784', 'Pria', '', '2023-02-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 325, 325, 1),
(314964, '0113', '0113', '-', 'RIRIN SUCIANA', 'SATRIA', '', '', '', '', '', '081338976159', 'Pria', '', '2023-02-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 75, 75, 1),
(314965, '0114', '0114', '-', 'SRI WULAN', 'BR TENGAH', '', '', '', '', '', '081235477617', 'Pria', '', '2023-02-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, '2023-11-29 15:49:58', 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 5301, 5236, 1),
(314966, '0115', '0115', '-', 'PUTU ASTAWAN', 'BALUK', '', '', '', '', '', '081230852785', 'Pria', 'NEGARA', '1979-07-04', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 8688, 8688, 1),
(314967, '0117', '0117', '-', 'SAYU WIRAYANTI', '', '', '', '', '', '', '087863302632', 'Pria', '', '2023-02-13', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 123, 123, 1),
(314968, '0118', '0118', '-', 'PAK EBLER', '', '', '', '', '', '', '08123911376', 'Pria', '', '2023-02-13', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 14691, 14691, 1),
(314969, '0119', '0119', '-', 'RARA', 'BANYUBIRU', '', '', '', '', '', '085960610516', 'Pria', '', '2023-02-13', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314970, '0120', '0120', '-', 'NIA', 'BALUK', '', '', '', '', '', '082247372479', 'Pria', '', '2023-02-13', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314971, '0121', '0121', '-', 'YENI', '', '', '', '', '', '', '081338916511', 'Pria', '', '2023-02-13', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314972, '0122', '0122', '-', 'GITA KUSUMANING DEWI', 'JALAN MERAK LINK PENDEM', '', '', '', '', '', '085330613940', 'Pria', 'SIDOARJO', '1996-02-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 4234, 4234, 1),
(314973, '0123', '0123', '-', 'IBUK EKA', 'KALIAKAH', '', '', '', '', '', '085935124908', 'Pria', '', '2023-02-14', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 865, 865, 1),
(314974, '0124', '0124', '-', 'DEVI ARI SANTI', '', '', '', '', '', '', '081931256396', 'Pria', '', '2023-02-16', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 8393, 8393, 1),
(314975, '0125', '0125', '-', 'HILDA', 'DAUHWARU', '', '', '', '', '', '083852754115', 'Pria', '', '2023-02-17', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:13', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 140, 140, 1),
(314976, '0126', '0126', '-', 'sri wahyuni', 'kaliakah', '', '', '', '', '', '081998874960', 'Pria', 'kaliakah', '1987-01-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, '2023-12-27 21:31:44', 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 8011, 8011, 1),
(314977, '0127', '0127', '-', 'MADE ARTA', 'BB AGUNG ', '', '', '', '', '', '082340555420', 'Pria', '', '2023-02-20', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 335, 335, 1),
(314978, '0128', '0128', '-', 'BUK DESAK', 'BANYUBIRU', '', '', '', '', '', '087762954127', 'Pria', '', '2023-02-22', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 776, 776, 1),
(314979, '0129', '0129', '-', 'WIDI', '', '', '', '', '', '', '081999547288', 'Pria', '', '2023-03-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1061, 1061, 1),
(314980, '0130', '0130', '-', 'NI KOMANG ARI MARSIANI', '', '', '', '', '', '', '085338415192', 'Pria', '', '2023-03-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 152, 152, 1),
(314981, '0131', '0131', '-', 'MASTIKA', '', '', '', '', '', '', '082247611309', 'Pria', '', '2023-03-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 260, 260, 1),
(314982, '0132', '0132', '-', 'KOMARIAH', '', '', '', '', '', '', '081236210937', 'Pria', '', '2023-03-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3561, 3561, 1),
(314983, '0133', '0133', '-', 'NOVI', '', '', '', '', '', '', '081802070334', 'Pria', '', '2023-03-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1685, 1685, 1),
(314984, '0134', '0134', '-', 'IBUK YONI', '', '', '', '', '', '', '082145991852', 'Pria', '', '2023-03-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314985, '0135', '0135', '-', 'IBUK KOMANG', '', '', '', '', '', '', '081805322599', 'Pria', '', '2023-03-02', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 491, 491, 1),
(314986, '0136', '0136', '-', 'BAPAK RUDI', 'BANYUBIRU', '', '', '', '', '', '082247611387', 'Pria', '', '2023-03-04', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 507, 507, 1),
(314987, '0137', '0137', '-', 'NI PUTU YUNITA', '', '', '', '', '', '', '082144233122', 'Pria', '', '2023-03-05', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1826, 1826, 1);
INSERT INTO `m_nasabah` (`pk`, `kd`, `noanggota`, `ktp`, `nm`, `alamat`, `alamat1`, `kota`, `propinsi`, `kodepos`, `negara`, `tlp`, `sex`, `tempatlahir`, `tgllahir`, `agama`, `email`, `username`, `password`, `status`, `aktif`, `pekerjaan`, `nmperusahaan`, `alamatpekerjaan`, `tlppekerjaan`, `jabatan`, `ctn`, `foto`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `marketingfk`, `wilayahfk`, `departemenfk`, `anggota`, `tglregistrasi`, `norek`, `an`, `bank`, `plafon`, `simpananpokok`, `simpananwajib`, `simpanansukarela`, `tabungan`, `pinjaman`, `pottabungan`, `potpinjaman`, `bungapinjaman`, `pokokpinjaman`, `potpinjamantetap`, `bungapinjamantetap`, `pokokpinjamantetap`, `piutangvoucher`, `angsurantanpabunga`, `kredittoko`, `konsumsi`, `totalperdagangan`, `potwajib`, `potprogram`, `potlain`, `potpokok`, `pengelola`, `sisakredit`, `admin`, `piutangtoko`, `groupfk`, `limitpiutang`, `nik`, `jmlvoucher`, `jmlvoucherimport`, `member`) VALUES
(314988, '0138', '0138', '-', 'INDRAMAHARANI', 'SATRIA', '', '', '', '', '', '08123633315', 'Pria', '', '2023-03-05', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 778, 778, 1),
(314989, '0139', '0139', '-', 'KOMANG ARTINI', '', '', '', '', '', '', '087863070391', 'Pria', '', '2023-03-05', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:14', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 964, 964, 1),
(314990, '0140', '0140', '-', 'TRI CAHYONO', '', '', '', '', '', '', '081336169067', 'Pria', '', '2023-03-05', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2193, 2193, 1),
(314991, '0141', '0141', '-', 'ANITA DEWI', '', '', '', '', '', '', '085940755780', 'Pria', '', '2023-03-05', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, '2023-12-27 21:35:46', 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 479, 479, 1),
(314992, '0142', '0142', '-', 'SUKMA DEWI', '', '', '', '', '', '', '', 'Pria', '', '2023-03-06', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1167, 1167, 1),
(314993, '0143', '0143', '-', 'SILVI', '', '', '', '', '', '', '087863004000', 'Pria', '', '2023-03-06', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, '2023-12-27 23:11:03', 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1621, 1315, 1),
(314994, '0144', '0144', '-', 'MADE MERTA', '', '', '', '', '', '', '085339063727', 'Pria', '', '2023-03-06', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 3356, 3356, 1),
(314995, '0145', '0145', '-', 'IBUK SRI ASTUTI', '', '', '', '', '', '', '087723395619', 'Pria', '', '2023-03-06', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(314996, '0146', '0146', '-', 'AZIZAH', 'BANYUBIRU', '', '', '', '', '', '081916350652', 'Pria', '', '2023-03-06', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1932, 1932, 1),
(314997, '0147', '0147', '-', 'PT RIZKY ARI YASA W', '', '', '', '', '', '', '082146027663', 'Pria', '', '2023-03-07', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 117, 117, 1),
(314998, '0148', '0148', '-', 'KADEK KANTINI', 'BANYUBIRU', '', '', '', '', '', '082147033320', 'Pria', 'SINGARAJA', '1981-07-09', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 396, 396, 1),
(314999, '0149', '0149', '-', 'KOMANG AYU WIDIANI', 'BANYUBIRU', '', '', '', '', '', '', 'Pria', '', '2023-03-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 304, 304, 1),
(315000, '0150', '0150', '-', 'UGIK', '', '', '', '', '', '', '081805723155', 'Pria', '', '2023-03-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 387, 387, 1),
(315001, '0151', '0151', '-', 'NESTLE', '', '', '', '', '', '', '', 'Pria', '', '2023-03-14', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 760, 760, 1),
(315002, '0152', '0152', '-', 'AYU ', '', '', '', '', '', '', '081338844032', 'Pria', '', '2023-03-14', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 434, 434, 1),
(315003, '0153', '0153', '-', 'IBUK DESAK HOTEL JATI', '', '', '', '', '', '', '08873153370', 'Pria', '', '2023-03-14', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2077, 2077, 1),
(315004, '0154', '0154', '-', 'AYU KRISTINA', '', '', '', '', '', '', '085737062832', 'Pria', '', '2023-03-14', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:15', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(315005, '0155', '0155', '-', 'KAK ARIK', '', '', '', '', '', '', '', 'Pria', '', '2023-03-16', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 4837, 4837, 1),
(315006, '0156', '0156', '-', 'KARMINIASIH', '', '', '', '', '', '', '0881038759926', 'Pria', '', '2023-03-19', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 63, 63, 1),
(315007, '0157', '0157', '-', 'SATYA', '', '', '', '', '', '', '082146494362', 'Pria', '', '2023-03-19', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2519, 2519, 1),
(315008, '0158', '0158', '-', 'ARIYANI', '', '', '', '', '', '', '081917554414', 'Pria', '', '2023-03-19', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(315009, '0159', '0159', '-', 'KALIH SUARTINI', '', '', '', '', '', '', '081803341996', 'Pria', '', '2023-03-20', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2380, 2380, 1),
(315010, '0160', '0160', '-', 'KT SUKMA RINI', '', '', '', '', '', '', '087761136699', 'Pria', '', '2023-03-25', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 5049, 5049, 1),
(315011, '0163', '0163', '-', 'KT DIANTARI', '', '', '', '', '', '', '', 'Pria', '', '2023-03-28', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 2119, 2119, 1),
(315012, '0164', '0164', '-', 'BUDI ANTARA', '', '', '', '', '', '', '0813535091581', 'Pria', '', '2023-04-01', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1005, 1005, 1),
(315013, '0165', '0165', '-', 'ARIS', 'MENEGA', '', '', '', '', '', '083115241640', 'Pria', '', '2023-04-04', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 60, 60, 1),
(315014, '0167', '0167', '-', 'KM SUDANTI', '', '', '', '', '', '', '', 'Pria', '', '2023-04-14', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1119, 1119, 1),
(315015, '0168', '0168', '-', 'CAHYANI', 'BANYUBIRU', '', '', '', '', '', '083117747371', 'Pria', 'NEGARA', '2000-01-24', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 185, 185, 1),
(315016, '0169', '0169', '-', 'SRI MAHAYANI', '', '', '', '', '', '', '085935063808', 'Pria', '', '2023-04-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 737, 737, 1),
(315017, '0170', '0170', '-', 'KOMANG NADIA', '', '', '', '', '', '', '', 'Pria', '', '2023-05-21', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 732, 732, 1),
(315018, '0171', '0171', '-', 'COKLAT CK', '', '', '', '', '', '', '', 'Pria', '', '2023-05-21', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:16', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 836, 836, 1),
(315019, '0172', '0172', '-', 'PT SUARDIANA', '', '', '', '', '', '', '087853697394', 'Pria', '', '2023-05-22', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(315020, '0173', '0173', '-', 'DEWA AYU EKA', '', '', '', '', '', '', '081916460530', 'Pria', '', '2023-05-23', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(315021, '0174', '0174', '-', 'UNTARI NOVIYANTI', '', '', '', '', '', '', '085213723254', 'Pria', '', '2023-05-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(315022, '0175', '0175', '-', 'KADEK JULIANTINI', '', '', '', '', '', '', '0881038237420', 'Pria', '', '2023-05-30', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(315023, '106', '106', '-', 'DEWI DAMAYANTI', '', '', '', '', '', '', '081916596111', 'Pria', '', '2023-02-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1767, 1767, 1),
(315024, '116', '116', '-', 'KT.BUDIARSA', '', '', '', '', '', '', '081236768574', 'Pria', '', '2023-02-12', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 461, 461, 1),
(315025, '122', '122', '-', 'GITA KUSUMANING DEWI', 'JALAN MERAK LINK PENDEM', '', '', '', '', '', '085330613940', 'Pria', 'SIDOARJO', '1996-02-10', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(315026, '153', '153', '-', 'EKA PRASTYAWAN', '', '', '', '', '', '', '', 'Pria', '', '2023-03-23', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 1),
(315027, '160', '160', '-', 'AHMAD', 'BALUK', '', '', '', '', '', '081246403280', 'Pria', '', '2023-03-25', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 9463, 9463, 1),
(315028, '162', '162', '-', 'IDA CAROLINA', '', '', '', '', '', '', '081237025193', 'Pria', '', '2023-03-26', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 364, 364, 1),
(315029, '166', '166', '-', 'ANGGA ARI', '', '', '', '', '', '', '083114099038', 'Pria', '', '2023-04-11', '', '', NULL, '', 'Aktif', 'Aktif', '', '', '', '', '', '', '', '2023-11-17 19:06:17', 0, NULL, 0, 0, NULL, NULL, 1, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 71, 71, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_negara`
--

CREATE TABLE `m_negara` (
  `pk` int(11) NOT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_negara`
--

INSERT INTO `m_negara` (`pk`, `nm`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(1, 'Indonesia', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_nmcomp`
--

CREATE TABLE `m_nmcomp` (
  `pk` int(11) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_nmcomp`
--

INSERT INTO `m_nmcomp` (`pk`, `nm`, `alias`) VALUES
(1, 'SERVER', ''),
(2, 'DESKTOP-FO0M2IR', ''),
(3, 'DESKTOP-BU67QVC', ''),
(4, 'LAPTOP-NEA5S90P', ''),
(5, 'DESKTOP-B7UU2DT', ''),
(6, 'DESKTOP-6I6DC49', ''),
(7, 'DESKTOP-6B843TV', ''),
(8, 'DESKTOP-SUO4KIE', ''),
(9, 'DESKTOP-I4C3800', ''),
(10, 'DESKTOP-5TT5HCU', ''),
(11, 'BALISOLUTIONBIZ', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_perusahaan`
--

CREATE TABLE `m_perusahaan` (
  `pk` int(11) NOT NULL,
  `nm` varchar(90) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `notlp` varchar(50) DEFAULT NULL,
  `jnsperusahaan` tinyint(4) NOT NULL COMMENT '1;perorangan;2=PT ;3 =CV/lainnmy',
  `logo` longblob NOT NULL,
  `email` varchar(50) NOT NULL,
  `kas` varchar(10) NOT NULL,
  `npwp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_perusahaan`
--

INSERT INTO `m_perusahaan` (`pk`, `nm`, `alamat`, `notlp`, `jnsperusahaan`, `logo`, `email`, `kas`, `npwp`) VALUES
(1, 'Jati Boga', 'Jln Wisnu Marga, Kec Marga', '+62 878-6151-4471', 2, 0xffd8ffe000104a46494600010100000100010000ffdb008400080808080908090a0a090d0e0c0e0d1311101011131c14161416141c2b1b1f1b1b1f1b2b262e2523252e2644352f2f35444e423e424e5f55555f7771779c9cd101080808080908090a0a090d0e0c0e0d1311101011131c14161416141c2b1b1f1b1b1f1b2b262e2523252e2644352f2f35444e423e424e5f55555f7771779c9cd1ffc20011080300055603012200021101031101ffc4001c0001000203010101000000000000000000000607040508030102ffda0008010100000000bfc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0d3fae465fb7b7e9f40000000000000000000000000000000000000079fa050dbef0f0f1c5fcfe317a203f1fafa000000000000000000000000000000000001830385f8ea3a176c39e3a1cf9f4a3ed7dc8a07c3dec19cfa0000000000000000000000000000000000111adf032a7d36f7c3e76e89fc44e278975f2aef7efa25168d357a7afeaaff00c5a7e15e4153eb07d400000000000000000000000000000000073a5f79fe30c806b6fcc6a476f28936fa031a9d8a63a46b18e787e36b73d5b5eeea7d2f85537d3fee0000000000000000000000000000000005017fd03a9954cbc6a3e8fcb3c23d495c5902a99fca76be857502b5f121904bca0b6dec4000000000000000000000000000000021bb2901f9e7ee83e75b7c6b29edc7e3c1bf914943121baad53dbf5eb6d08a656aa61312098f618000000000000000000000000000003e535898b22b62b5aeed69cf39dc21e7851f8f6bbd1f5f1fbfc3f1fbdec8779e9f46835d64d3baeb07418db1d05e9ec000000000000000000000000000006ba81b4e76afeaab42c4f0aa61f7235507d264ee25d28dcfebe606b3c5ed9fb0fde2c6a2d16c5fc4ce5de9834b5d338f95efa5811ff2a3ef0928000000000000000000000000000041aaabe74f4748ef4f7d1d43a79fecabaf1df58b26f08743357ec64e4d15b9fcf933f6bb9914ce65e50383ebe5934aff004163591f28bd0ed6f4a53756efd0000000000000000000000000000fcd28ba69d8e5b7a7aab3bd6cc8dc224d6c6e6355a6a32a6336da7dfa62f1cc9c1f3c75d8b279d599b980d6ff006cc8dc27caca9469aa7bb35b5a5fd9e0000000000000000000000000006ae82b737d41ce65e7e7f30588d95646baa8d3496c9dc11ee72df86b7d0112908c6d4ef2ccb530aa0d2da3b1f53f354ee2d6a1ed29d8000000000000000000000000003139d7a07454bddbf48c56f6958f0faa73edadf023556ccbc001b7e78d981838163dcdef4b6bed6ca3594f749d19644af2bf400000000000000000000000000187ced7f6929cba3c2a393dc70fa9e656bfa808c56154c3be0074ad5bb200f1d2d8978e2d1d24b035752746d17654deb7aeba33e80000000000000000000000000ab34f6e67eb79fb03a2f494afadefe54eca2dcfd802315954b0e3ebe0fbd2b576c400f0d4db5725715cf9f45521624e94c607bdde0000000000000000000000000f945ec6415359b595c5f9e7aeaaf0d9525ef75e40008bd6951c3cfb2d89fe4fbd2d576c000307e7426fb22858a751ec142d915bcf27c000000000000000000000000159c5ec9fcd65a8b93415a5dd4ad8503bae440008bd6b50c44746d33187df9d2957ec4001f34566614372bcba7b6f405a6a43a63f60000000000000000000000006828aba61d41de939aeeabeb7ccc1ae6d3fbe502f800345ada8225beccf4e9aac2b047f17a52a8f5f800f8cacb617e360f3c1ea4a867d990790d84000000000000000000000000c7e6bbaf0eacf2b76969c4863177873dd2165eaf2e7133cc0341a7a7a25bae849afd63d1355fce94aa7d80f989aec4fde07acd72c1e38175eb2778d5ddf116c699000000000000000000000001cfd38de521d1719aea09d15a58f5d029594d5ff008e8cf28442f13d25335907d45ab7a7628f4ea097b9b2bf3a52b0d81e783aff003fce66c72b4f8dfac3937b0fd5b547fe371796245aeaa1f55d1a00000000000000000000000af61d645436ccc1404d77b487496515860dbbcf973525d13f4fcc6611196d363814d453efbf5f57f34aae997de94aafcb09fbd8e7fa0d7eb775a9dcc6653fa7cb4ad1e34c3d7ece65d1bbce6accbbf7400000000000000000000001ced6eeb39e67179436376354b68cd0865777bb9f3a0e1b5ede8035956e253b12fb2fdad799f69538fbd2b53e5e67d03174327f0d46ff00134527fbf9bf341c9db0f7d5595d671aaaa7908bd4000000000000000000000028edd6abec8611adba219e1729a2a3ba2bf7f39f3a1156e3db63e79d4f59c766bb0a1fe7df87df8ddf4ef387afddf6487946253fac7d4ef9afd7c87e5b18fcbd37f4d3473acb4128db52dd2800000000000000000000001f8a134179539aebb70eafe8dfa73be17e8f9f489f5f8d4735616c9a0bc68b8481e9d2b5ef97b79c732b7623b2ccc7c7d219bafdfbe26af69b6d1c272ad4b7bf5535d3bb00000000000000000000000e71b534712b63ce91e8ecf15be86760c7aa3a28d5f2ce77a9f34d7c732e93e0fd5dbbaae36c347f9de1853ab441f9e71d90f3ba30b996675eecfa7f7d5bd89b9db0000000000000000000000ac755614474b38a53da4317bd6501f9e71b2b763ce94bef7ef2e5bfc7a8787e2e4e6bd09f6e99b531bf047b3764686f2950fcd2f1dce133bd3992a1b322d19b3ef7a67a6795ba7762000000000000000000000aaf4b29adf457fd2f73caa2dbecd03c28ad6c9fda3facbb76d15d7c121db0030fdee8a0a079f7d6ca9a9000896cfd32727492998e6e9205f9d804bafae2b8de4b0b656ddf5a0a5ac7b5c000000000000000000003e7385cbafa76e3d25798dd1fb2007cc588e2ca20d52e8b33dbd734031b06f58f4aab880ef803cb0ff18989f77de3e59791f41fabef8da59bf45a33da924e6fb86a9e86000000000000000000000d650d70f3ec9ed5e78e8b876eec3001f30f9b743b60003f1a39a463f5b00003c637b4da001afdcd8d527caf6e4bb6a7b529ae90000000000000000000000aa3d24150ea72707a06afb564c003cf97f0f2400018feff00400011ad96c401f2f3987176561ea2efb233e9ce86c8000000000000000000001cef6e41e453dc6e7eb9298e91fa0029aab3620000000002232afd006674e73f50726de57dbbeb5fd557716f400000000000000000000fc736dd54c7456456bac97555d07f400f1e42de000000000060eb77c019dd29cd1516db0f13e7514c292e91d0498000000000000000000010e805894fdcdbfa06d788ecaca003e55f4bec800000000011494807cb0f9ce53bff002d04427f26b42338f7b8000000000000000000029b91ec39aac46b2eaa6fa132c007376a3e8000000000237bcf600f8cbb7a075ac2af1e838ad5ce830000000000000000000056ba09ed2975f3e5b928a7ba3000f8e49d800000000001afc4dc8032fa4bf1c91a9d74ebaab9b2efa93a2000000000000000000001f2a6af64b3faaee18a78db8008555ba0d1eec0000000000f38afae46efd0093741f2ed492769efd934829be8f000000000000000000003e5272e8944b2f2afff00501f9e7dafb79fa000000000001851d90e603777f71d473d7ee2593d12a6ba40000000000000000000007395c54bf477a3e80543516d0000000000000fcc4e57f41b2ab659b2d540ecae87541d14000000000000000000015bc43263972d1fd17b1003923600000000000001abf2db80f27eebbdaf57423f5abbd3e80000000000000000002135ad9d02cfdad5deb6ece8030390e480000000000001f98cc980cfb7259c99a3d6dc738d3d69d75f4000000000000000000144d85fba1ef9aae7fb8ab6ff00008d72f6fc0000000000001179303f375ce285a1a458bdc7546923fd24000000000000000000073e5b15ed5fd1bceb64d8d54f408047b9664000000000000008b49c18fd4755f316d24d0cec9a92dfa67a440000000000000000000e78b72ad9a40249f27157dfa018bc7b250000000000000fcc664c0f2b5f9bb17f7b28f5ab7d7a539d1c000000000000000000073a5c1505fd9757fe37f00bd003e7216dc00000000000030b5dbc03170767f219a3b6af953dd180000000000000000000737dcb4cf477ee9a9123b72004239cf7a0000000000001891e94fd07c96ccabbd056568dff00a985dea00000000000000000007385c94bc9b4f9163e82a59300f3836fc0000000000000c08d6d7e05d76de938bb7b1393d8eb6f4169000000000000000000039d2e0a7becf79e3aa20d55ec40f28c4b7e803c351ebb7fd0f18ff9b75b000fc6876f88da861eab3768006aad7b94442555ff00263b6f897a7ed0afa96b82d20000000000000000000736dcf89575b14f5cb54c43dc08bc8fdcc6d0b79966af51bef0d249f2088c9bdbe683d37c063fce8a92fe698abb6868ad2b4e19476efebe68dfbdd08f7566f087e5f2ec1e51d97c27d6f1bd5e54fe60000000000000000000082557f8f2bb39e6615e6ec0f0d1c94c0d149bec677f99e518951e71a95be45a50349fadd87e31fa9f2cd6f22c95afb56e2227ccbbf697a2e6d5cd03bd3ca51d07f5e14e5716c40a395ddc131b0699e87ca00000000000000000003e39bae7e6eccf701a6cbd83f31395fd7869e43a3ccce11a91fa22d2708c6ff2868ba9f7a23bcb9be473b0b2072e79b75d1a571426ecc5eb0faf90b7b4562d41db17da9be8f00000000000000000000739dc3cf7ec01a8f7d934befb130f037b17927e868b69968a4a4359f9db8f5ea20d3727c89adeb8fa28289fdd9f4a8e54f43c3ab8886fb3e0dc89d79c77d1f6262d6d7f00000000000000000000d357756f4250f8de58bb207e2312c4564ff4d2e66c22f2608e483d71357bd0d47b6cc78f567d1f8e3fde23dd89e828f81fae2f588a6eb2cad75a7729079c72955bbfea0e40e979cd3177c7ec7000000000000000000078f31db3585db4cdc9f79db3008e6ffda2d2711b917a45e4c11795235bbc80d267e70c2eb3fa1cdfa5fdc7baaf7a293afbda3dd8bfb213cebb9d17607a102a6aa6f3e93da732dd3ef39aab75d0800000000000000000008e55965f3fdf355fbda94b6a7e823bbef68bc9845e548b49c22f2a452520d06e3246abaefe84239d377a8e839d8a62b7c88df5c6ccd1f2a48347d85f4d5d2ede73fda702ec9ae6af9efa5ac0000000000000000000d2d3769f37cb35bb6b7ea8897b822f2a45a4e2312945a4e11695e16b77a08e6ffd8693b07e87e790773aabe2c414d56b911feaade9a0e579047faa37efc43fc3d35714e79b5e5eb2aaeb62480000000000000000000f1e74b9a9eb7f3e99b66beacf3c11894fe63127118937ee2f2608b4af41b3ca04664dfa11cec6f4073261e9ba3666298ae3de37d859269394247aeb9ed140275eb18e34ee6e31fddf33352bd29f40000000000000000000e6db9e9ce8e50d6347694db87c8cca751f76835be5b98b49c233258d493f408bca8233d87940e7e8bc7baff2c51f02f6f5ea21f394327c67d77a1b31e5baa36bdafc2d36e9846b4d7480000000000000000000e73b8697e92f2a9f6febcf5be0fcc724f14947d1f22f2b8b49be8c3d5f849c08bca823dd5bbb051902def49850f0dc1b86d70a4eb9c997df5f2bdae68bfcf4d4af8f6ddbbe2702b22d100000000000000000001cf16dd452485e86db957324903e46643a1920341b4d2c8ff411cd54e008b4ac347d2531051557f57ed839f235a7eb8c80c0e47de4def441a84ced8436caac6e7d5e871363d22000000000000000000039eada89523d31514ee47cbd25045ff5bff707e629e927fd0341befa08bca83557ad8e0ac261bf073e402f1b43e839ea0f74da918d57afbcbb95eb4b9ed5a8e5de72f9e00000000000000000000a6b77bf847c91569b3ae36e08ae4c84063c6e58000466501856ddb2000ac316d901ade38ec3d46ef63a2e40ed9d5f0dd893fb33f54974b7e8000000000000000000060f3f7e9a9be39c7f1b3031b23e80000045e541e3605da0000011c91c226f49d21aaeebab3973a7268826d6d1000000000000000000000a0ec582d71faf3d880000001e1a5918245d0a000000433cf8ff001fa12fbe53d374d23f5ff457d0000000000000000000008ad5b64f31db591536f40000001aef2dc03dba84000000ae3953de6585d59c4730b1b57bd994f72000000000000000000000f9f8ab69ee8ca56e5f5a6a3d900000001a1dae5835bd72000003c21b8def8d3ffbcb90fc6ed0c08240f57d54000000000000000000001404923935d653f7f7af386fc00000022b2c023fd4326000002b9b17ee171e759ef71b866e290c52c0d7492c4000000000000000000000e73b860d5d5b118d5dc349ea3d4000000c5d448c0f3df746800003034b28e7aaba35dbfbdac793ecfb8e43f9a53a5fe800000000000000000000f943cfbf14bcd6e6a16d0c0e7a9000000011693fa008f755ef4000022d9f51f3b2ece93f9c75bebeff004ace773c00000000000000000000069e8eb7a98e83cf8ed3f6bd0de1fa000000c0d7c8403cb67d31f43e1f40061f3f51fb3f5bc6f4ac398fadf251d87dfa00000000000000000000039ded5d5c66e8a7aace898e51dbb00035da5f5fcbf5999bed87a696fd1f8fd86aa797578476251ed06b7e4fef9f7003e6af3e1bc95d95c9d97d2fef0989f43fb00000000000000000000008ad556a52762eb239b9b0f99b79819df400d3784887e30f0fc7276ff47c81c9f6c18ba8fd6566e40c4fdf52e50021b2cf65194763f59d75893bb37e80000000000000000000007ce70b8a3955486daa4643596f237efbd0078c7a5200045f1e678396000c49cdf20183c95d35294738a3a36ed000000000000000000000002155f596aaa4d27e6cddfebf365543b600d3e56c0003f318daebfacf9df559c000f0eae01f9e72b270ed2fc721f87617a000000000000000000000000e779268f0306e1c0a0b7dbee8ae7789e680d47bec8f90fd9ee7d4355a6dfe6443a46c2a36b0dd7b06bf5dedbb1e7d560286b2255465f540513d952b000000000000000000000000fc57fb692e3f39ddf5dd536d5dbe7cc3afc903ce3929349ebf35df97c363b7fba3e88af6ebda68e9d87e9be6c6453d9e7367bfd62cf2f5029adcd98e7e99f297465dff009c2cf000000000000000000000000d5f24593a56556bd3760b1798f0b28f9a4ddfdd17cdbeb3124b12fbb8d97e879e33ad639555bbb8f4f87c8ad43a9bd799765e7f7a9b41a3b2c5379f6a9cd353e75be8def3a2400000000000000000000000114abafbfbf9d567e41e1ccfa6cf68aeda7fdb2b035d9db26269b375ff009fa7ef2e51d37e7c57b0fceef6fef89a0c4fc7484e7595964d8f4d7b6a2f3d9fe68b955983599393f74f43746fa00000000000000000000000015dc72e701e745d65b09c5f98f44d6fbdfa1a2f4dd81b7e90f9c79bd03573fbefebe56101bb643afa2aefa16dd9980c1e77e8acc0000000000000000000000000aa3edac015ff003cf5f6410ea0f5fb40d260ef738333a6bc38ea4c18fa8b5aeffbf2035859162fd2a5ae7a3f62031b9d2ffda800000000000000000000000014eecad00152eeac00fcd5b4cfe7663cf4b89f7f5edfbf0ec984732ecff1e3fbdfcd6dbdcfe6b3afa7d687d0f9ce1d17ea07873ade9bd00000000000000000000000000a6b636a035d4574318b0e9bfa3f15754fa5dcfa07e7cbf18563692e1fde5ecf63faf91cabb5b62d83f5e35de1da3ea8c56f77831b9e2ee9100000000000000000000000000151adc0e7ebaf6c537ab9864ee24ff113aae0d83b4cafa119eae909850c8260c92d1da11d8fe965d02f7b87f6a26d8df0c0e7abdf7a00000000000000000000000000159466f2fafc722de1669088f6e37d1094476c6f52370787e974d80fd6b2dc7e99b329b661f2099b5f6db7b87973e34fce9655b269287bfb6a00000000000000000000000000042ea9e81c945f9867173c9d1dd06febfc2b3a0b8b279bfbbe7df9f8c4f2fde57b81a0ddd67a192c9bc22b3ddbb169a836e7a3c8554fd07940000000000000000000000000001a4a1af0922030df7d25cdbef90fdcc0f6dabc1b02b0db581a09beb7eec7ebe7dc58c6ae7754fe70fd723c26793f259f716a0d0d9b54f467a7ca7b0eedfa000000000000000000000000000078d17bfb6bed51ed62537816c4a0551ba97523f8b8aa7b62a791fe6d5acf1bdd8963d493a91567b886db1f240d5545abb7b7bcedd1199aaa22cd9f80000000000000000000000000000100ac2f1ded1f3a9b6939a24d3bb2bddadc2f684e366626ea17bbb5ab5fbe114924e61f8df8b3fc364fc412b6ccc3e87fc7395f3b6ab6117cec40000000000000000000000000000030e92c9b9a80bc69db8b6f09adff0013b9f649f3ee8e33fbcf98453df6316d9e0cdbe9e508aefce7362fb52167d4d667ee9ab22c700000000000000000000000000000008e52f2085496fb1e70380e3ec6652fd9fd007cd74461da8f59dcfb286372eca1b8b97d8000000000000000000000000000000044293e8bd800c18744703cbf7f9f9fb7e1fbfc7a67caa63b300a935172670000000000000000000000000000000000000f9f1f7e800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ffc4001b01010002030101000000000000000000000002040305060107ffda00080102100000000000000000000000000000000000000000000000000000000000063a9ede0000000000000000000ada8b7b539ee31f45be73cdde600000000000000000719cf4faa9f95e2cb931d4d03b5df80000000000000003165f355cf5ddbec26430fb3c98f59a7c7d26c3caf64000000000000004396e73a296e365e98ea31d37b9659ed4f4fafa3a8ebba1f4000000000000018382f3b1da034f4f28d7ed7199eed8d1f25b0ee640000000000000f345b9d5e4bf3981a7d8e78c9a6f31866d84a72f745b2b6000000000000731af94faf98069f633d16c6eea650042dc63b4e6b57dd800000000000355cb771a8e73bff4034fb2adc0dceef59ec6739b363a3e7bb4afc2fd29e8000000000011f9e773738dd874400d36ce7a0f7a1d3658c71799fc4eb5ed862858e53aaf400000000001e739aadbeafb5f6bd533db795ab56de0e6f6d0ab0c9e62979657a9dab3f32efb6000000000000717b6d1f6b9543e7f8a5dbeefca38956decda1cf365a4d473cbdd663cbb8a56f85eb760000000000031f01baa9d7e50abadbf6618701ed38e1bf90648fbafc76f1b36e294ad79a6dd80000000001a6d558abb6dd03ca5840793881ece9c465d8c33e9b47dc80000000001c6ef36dc07719c152b0000095319b718bcd169fbb00000000003e75dbe5e27bf079ae880000c94bc1792b5085a000000000073ba6cf7ba60f31510000092be333edf0cb5da4ec000000000018f8aecf24863a500000019306065db54b1c8cbb20000000000d162a7d3e70a3840000013a44eece95ab9200000000023f3adcca5d506bf180000032513617abd8e57777c000000000c1c4779a4abd3850c40000009d22cd94fe6df47b600000000054e47b7e767bf0a1000000064c7e325dc12e63aff004000000000a7c45c9dfcfeb2d8c73425efb0f3263c98cf6d66ad5e7663559611b36c14f1ec000000000056e4777ec0b919e067525e846b4ede35cb0c346f665195c850f3632183e77de5f0000000000e3f6a81723ed4c9661557638f02e45b293150d8cd5637152bec6434dcb7d07d0000000001c4fb9306e8cf9615ac4fcaabca5e2ec1b19bcd75bcead86fb060bc1e61adb00000000001c175b9b89e960b32857b32f2aaf4699760d86429e5cead8360c3576014385ee362000000000389e9ef7cf3abc4b73a9095cc75576154bd8d7f295b34d57db28ebf63e8e361da7a000000000392d8d6d075b816a748b9e5464cd54bd8d7739e7a57cd22ada0c7a7ddfa00000000035ba4a5bb9c59a38cf678c1edec4b7640079e8a1c2f47d300000000001a0ab96cc00013b5059b60001cbe2eae400000000008e8f431dc58000589f8cb7c000306a37be8000000000317cfbafb9c4f4f8c002ec0f761300039fe43ace8c000000000071bb9dcf17b1ca04ac791c59e7119af3c8a6018be6dbaecfd00000000001478fe8f4f72fc718f6ee34bdf22b1e604fd879edeca0119000000000001c84eb6d6fdbd47865cf19a094a1b2a983c648c73dd000000000000003172fd3e6adabf271bd186584618f699d18cbdc156e660000000000000001835bb5c543cc56b2f9eaf469cfd8db900000000000000000f3d469528d8cc5e8d3f72e798000000000000000002356b602e6c000000000000000000001e431fb9c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003fffc4001b01010002030101000000000000000000000004050203060701ffda000801031000000000000000000000000000000000000000000000000000000000000659fcd600000000000000000019c8c2392ec551a899f236200000000000000000b197f217c65f7e31cb394ad8a0000000000000000cb16f99aa3eaf86fb6d51e1e3ba4650f4b3c0000000000000007d9d2e223e819669dd3be5ae34b415dbf6eedf5f1000000000000000cad3ed7e8049cf11bbb2e81f2af94a0df3f5567c00000000000002547ddf357cf8048d587df891dd74015bc4d4184ad3ac0000000000009db58d7fc0091abe4ad3ab7f6376093ce6d95e79bf7d5800000000000244daddf32a401235656baeb37763771e0eb55caebb3d3c153d9537df8000000000007db6acd763aa180246ac65a1c8e9ee24cfcea366116ff93e2ac616b9f00000000000004ddda3756b3ccc75b1a9cefe2897cdf51e932a0f25334e73e4725d473fcf5cd5e9000000000002cb449adc5b6dbeab2363cdc2fbd5ced097ced1ba8f65cbcfcc3b2b7aef32ea39d9507480000000000cad34675f8867bb5c28b06b0cbabb2fbcf500ebaeed76aeae157e65d4eae6d22300000000001277e19e88c0c682b405cc6af032ebfd7778aee225537c9358000000000058c68f6b5b802969800007a7fa30adf2fb1d91a455800000000016f5bf2c6a818f25ac00005bfbd6c3e727f3472bf32d6000000000099231d5083e43e640000367aef4f34a9f33b2d7a6457800000000032b2adf9f046e734000001f6c3d9ef55fe71d0d37cc6bc0000000002565b20e21ced70000003baf5b22f2916975ebf80000000007db78c400e5e20000003abf6a38be46f28e7c5d4000000000676359273841ce578000003b7f5e28a8be737734fac000000000d93eb65fd8e237311c00000175eb3b90b93b6a1975e0000000003659618df76056787c097f61ecee6371b8f75d4f01cd995ecda8aadf751e9becd8daae2ec1b32d200000000033b0b0ebec0f34f35b6f6bc7c2bb1f59f9e25cdfba5fc5f12a17416683cd7493dcf677dab96d7d76c19db55ea0000000000b0b9e82e4f3bf2ef54f4183e03ea3ddbc8b8bf78b979779dbaeda89cbf55254faaf54d51d6e624cda90000000000b2fb8c8f47c94fe0deddd1d17857ae76cf0f8beedb1e4dc1bab90f9c9df4f54c0e9502afa30fb967a40000000005ac0c2d3d065394f18f73bfe7fc33d7bb578574bea078f716ea651413ac5535fd321517541b6ceb748000000000b285aadfb9b2705e71ef7263f827a4f74f2abaeecf15e51d34d2a67ef547cb861ca75bf458fdad00000000009fab395d95cb88a7f4f3cea477a8353d21e15cfba2b131c8ac9fb0a6b8fa32911400000000037c9d923be90acdd34d7127830f02aa5f5a800f9f46db389080000000000956f3ba69a0008be010d717600013bec1f80000000000fb2657db6edc00145e15827f4800019488a0000000000656b035da7773c003ca38132eab780012e7c18600000000002c6347b2bfec40d1caeeb59b43e331fefc59741f7e69cf600676f1eb4000000000036d8439361d6ed9c30f1be499efd3a9d55456247dd3867d1cd00fbf000000000000b0f99ddcae6fd27715fe03a25ebd0dbdaf71e7d4b5787d95a755a5f80000000000000194df906f3d076c5dbe37cdfab7dc33bab3f3baa61a766caea4e8268000000000000000b7eefcf26f69f6c792f2d9baa0745a68a47dd575bc0000000000000000658b6f59d56fe6781a3d1d168a1ce5da6e0000000000000000006ee83a1b5cb5f35c5000000000000000000003399270aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffc4003b100001050001020306040504020202030004010203050607001110122013141521306016173136243234404122233350357025422651528090ffda0008010100010800ff00fb4f63695d5707bc9e9b7c6aa7c9bb0c93bf48f519d97f912f29e5f9358704f4eec49e193f4f3b57a45ffd3ac9e191cf6b7d3cca7c93cb4b483b386f2cb1448f770a673fc2f08d1ff85e0facff000bc2117ff45e14259f38dfc3772c4eecc6976b93de4b4367e99246471ba491af6bda8e67fe9132ceb6be3f6875972b64014548e5e5ad15a48b0d0be9b96b47d90d36a749c6b6425ac3477405ed641600fa2054d272ec8f4f477ebbf8730d34cc6d768c4cedc4777455f62df4721694dbfb48f2746989e47cbbbdad241cafa6a699b0686ab937216891b5229629a36c917fe8bbfdc6733b2a8c79fcd12cdfec5323b987449dd02e1a24a97dbddd7f1a638056ab601c71e36c5074782258884045a2db71769be609c1d80701a2956f5213154b2f92f162fc9c7f3451b2391a170c563fd8dbdbcd3cac8219667d481a0d71d6c6409c7faf4fd130db86a7644c6ef513b27e13e4244f9712682c0a92e2b2cef2a62b8a73ebe4e27be4ab96db3f6909b5f333ccc4918bfa75c97b4f808295e171ae2be060fc40ee8a1852e174045bf14e48ff003ac2ee38dc679eb3500fc9bb2a099b068aa79532565e48e58271c88d92c3ff00a22f831adb98210890aaab2be34605f2ea6207818b24d67c8d91ad4779cbe667ccf58ea47e4bd7d7598e4de80789602425897b475d7b5b3026c1c4dab8d1e2f43f0983fa9a1f14e30544f38794cd05dbdd991c71b5191f25db2d6648ff00271d56fb8e68791fe2bd2bdf98e4e188f0bee2aa4bab224f7cbc221a7ce15e1db267cc74e33dc41dd47cbf1ad8c178b6da4eb7fbc650c2b5f5e2d972c54c30cca27321103fd95bd5f23e46cd11188a09f0756dc6591b2472a6af37678190422b4495d3042c8eff00d0e0769f9a895ebfc75aed5ec25d593414d171d5fd9c9edaf01e36cd0bd96512b800988c16dea02b80a40ccaab5b8e38b9510b04e12c0480b17c6524781be698adae504ee93722e9c1d4174b5b522c0c18682067a394c07a800d9454bc89992eb435247d1e7c946fb08e68a56a3a3ebbf86f773066845807c5e4487ceb7d75d140046b15851fc6f9a2bbac5738eb8cb0d2d9d660accbb5cad7165f37227c1e9ddd5048d7d0543fff00416ab6d519983b919bd55368c34201f17b9ac6ab9d919223795ee89674ff009f2f99e9b6a90adc29432c1b3bfe38b394673f94f6277cab56cb976c7f47e53904f4ec6c3c4ef9151c60fc5f9b8bb7b503219eaf9a3986f477e8e0453c59442a6e36cacbfa4fc5146ff9c2fe267b155476e0f622ff0048955ca82fce24b5e5f0ff005cae48f2ec24bdd17a3711f9f2b6bd71248afc68adeb9ad88b9a01e986b8af3b334f0c1e3b1ddd6e621f22e3391aa3488c167fbe9cad6b55575dc9f1c32ad5e772bc613933a5beab47c6d69465adc64f21ca41593995f76ae446f99747ca59ea647422a89c85bf7f9e6c960aa72e8b343d43febe5cb25f53a38dfdbce45ad589dd27277b951bf52395a919dd204e4eb223bfb926a790caf90cb372fcff002636979808f9bd72dcb4ff00d7f0672a75f83796117e499be5d67e8a1731c1d7c5b9546f9ccbbbd789fd645cb1035dd8a17937313a7fb836af3857ca18a68a6623a3f97a7551a499cb76f5c35279f2a433ab5a8abb805c1d8db70f3e09549cf43afe45c82a457949ca594b646472ecb932315eb55418ee3395674b9d36c78bc4b357d852e7391ece88a4a4d70a48c58f1903fdef696a0548729a75b6a34bbe3a4a9a0c860aab35124be3b1e3da9d231678e2c8f261cd4a12739c674147e49a54444fd0a2861207ce4dff002ed2048e8ab31e0de9fa89f42775dfab1bba9ac45f7d3f94a8874720b16bf7579dfe0ff82b92ee7faf0b85424eca789c598d17b7713339c0913dd9b1c6c4446fcba73d8c4f33a5b9a689ae591faecbc7f27aedb25d26db25d335f967fc9b15dd34a9fedb24648deecec9d100825355a41981c799dfce6f0f6667eea3cfc437813d64a8741cb14dfce2f291434c905b81bccc9dd91229a29a36c91756432995e68cda7b9d471eba4809a0e41ce5f2c7143d3d8c7b5cc7df718e56dd5d24590e3faaccf79fc1ba7a275bbea134398a8d189ec0e566bf8c4df3b333ada5d28ab283f7aebf7555988918faece6a3910c4b4baa8a6aca60d8181a8d953e646579534db7dd4ca7c59fe4f3eb274aad50a50c5c11ce37cbab8d25252c0b2d8d9f2e98648a2e75319acd13da46869f1f434e8d582caeea6aa3590e3b94e057ac3550557276993cf2d6f0c828f496dab71998ac46a8a8888888841628cdf31165c8f8faff00938be6bad4f904bc93bcb47a32a521e69b3f9afe5f72217fd67e4c1d3af7319c1e027fc92f0ce7e28259169ebe0312559573e0f5f8783e9d9b87fc328a68151d0452ea86ff00821d772087fa0fcb9ab17e4709cd35aff9195bc8f8fb054464050c4b51f0175e09d1ac65db715648eeeb0cdc59a8a8559a8975fb5cf3fd8ded4f2267ac55ac915072a1545bbe36a63fbca14769c838b56fb6cef29676dd59012c7b5ed4731ef6b1aae7eb7918b3c95a4cba71613ee093f543c8f6b424a546aa392bed00eecd2f1a1f525bae7278fe5218f922acbd4eca88a9f78b95ac6b9ced6f27bfdbad566721c63da54b6d2279236a76d7728442c8b5b419fc11261096da46471c6c6c6cbbcf565d8eb09a90eb78f8974e093bcdc69d560a4ade31f6b221378056575642910773bca0aa47b512f37bac72c54f53c391b9e93ded5e7a96a236c607c93ab4d7e6aa7ba1b67ccc2f9d61a65b0e5dd1fc871b87ad0d724b7407126442ecb309474a135ad151113b76f97a0bf9884f59cfe523e83c6824efe7968c193bf68ea8e0e4f68003bfddd522326a9e66ac97b476b59a5a1b744401ec648c564977c6595b7f3ca85e0b6d977a91455fc9930d37badf57db565a44af0af305456dde44609bec53d5e0586a753bb7c5521e6b2b5f9f1bcb0f575435b762ac06a3355c785ba70f31b3a6d28e8a2ec38fea74ac59d953add3610a4a7bfaab6adb50d8603f77dc5c56d28321a79f7faae453a4afa7ca616a3330a2c56f735d4a1bcc3ed751a5dd972d75366b1d5940c6bd9e2e635ed56ba38a38636c715ff2152d57b48a0801e41db277750716e6aad1af258c646c6b196b7b534d024d6371cc82a2fbbd0a56f2c6a53b9751c39443235f65599fa5a96afb878eaa4921cd5d491e729f5d7e0bcb83f03edfafc0fb7ebf03edfafc0fb7e970db654ecb1716df45dfc9f969a3ebf2d347d7e5a68fafcb4d1f5f969a3ebf2d347d410160de92011e89831a7efed25a18d151e303b2dd52f64ea8f97e90b46c76819c19e3b0812d6869ee61f65636dc4e68337bee644dd5fd097ee1a7a9bbabb885650638218d5ee8fc5f1b246398fbec0cc3909679bca72a7693e15a6b4a9aabb054536d72fa7c09925b506337f55a68d20fbbceae12c849c430b0ef38c2f50b1692eab6f2ba13c2d8e402d3d6fb1932b785e4cf973d78d723911cdf1bed6d3d146bef0c976dbc9dd18799e32a0a3464f3a22275a0dd67681bd8a2f7db5d44beeb9babe2124c97def494f99a3a56236bfd5b1fdab7bd715fcb3b3f44e8a8839de393f8b333d7e2dccf5f8b733d7e2dccf5f8b733d7e2dccf5f8b733d7e2dccf5f8b733d7e2dccf421a21d024e2597ef5b8fa045708477f38e3dcd3cca454d172f9307907bfa8bda9ba1db3d75955d75a0ea39d77c52601329f98a9e433409900d2886886c0c9c5f1b7b70aa0290c2ea68acb90efa4b22851860048878369b23b447a667378ac50597053a3cf12bc57945b1ed7b5ae67dda7d78b6214c2186057bc617c86094b795d795f11c06c31e06a00f24b9bd19f98b0767efdae47351cd2cc14281e4136db8b6ba296af3198e28147561b7f1c71c4c6c71e8f7d9ecf23d934b7bc85b972c3579ee22a5055845b43043046d8a1fa1b2f9656f7ae2cfdb9375befddb6bf4f8dbf698dd597ef5b8fa53410ced56c8b5858532135941cb2784f60da1abb8acb815a4d7de67aa2f4551ec6d319a8c692e3e8335bfadb7f20e5756d6e15405216654d4dc722dc7be9a1862570b10c36d3646e88e4cd66f178b072e1227872ccfec3145a75c71be96a9e3d35d22a2a22a7dd17dcad41553c830d5fcd1592c8919e05885622c4507d59da03521c861f7ba7bbdf12fa9a7863bfe37b28898e92eebaf6ba33c1d96380d480ad7d5eaed71f2134d780d16ab90488cb3a8739519f17ddebf41aca2cec28fb02759b5db90f133b9be23a9091845bc5147131b1c7f4b67fb52f7ae2df966a5eb7bf3d6dafd3e36fda637569fbdae3ea4e342433c92c03dad395ef94f9ae5a16546097f0cf14f13268b5dc69557a9294187a7d0640a4acd1d5d55cf235ba985820895c1c428bb1d99da33533599c562c2cb83e3cd4476a2ac83a3b1d05d652a58ce39d9cec9bf0cdd7dcfc89b130a33f0c5165b115d4a3b649ed286aada07c262c7a4e3b3fde439b95b36da46d83210349c80721f695b560d58ac143b64ac5af252ca8b4f3662ec92aa292e80bcaf84e06db394b733092d8104855e32cb3dff281d633ad5e533dc512cf32586a051050e064037d4da7ed3bdeb8bbe59a7f5bcfdd96be9cb675d77f13e951515517d1c6bfb506ead3f7b5c7d62c018b6aa494d7fa0c84e8e1b2fb8a6d2428905bd356dc86f10f0c312bc48861b7fbd96d25928e931ba37e36d2552ebec43b21222c3f0e6d9155943174346918d0469c8198793125c81c7fad66929fbcdf72f22ed133e020a260b28b5b07c4cee91ec57ab3ad6ee458124abaeca71c7f21d76c6b58c6b59a0d2d6d00cb2940d569b910c6125858fa00e965a78cd0ef78c2f3dec3b5e56cd895509420945b0e432e23ae33f97a6cf0c9057fd6da7ed3bdeb8bbf6cbbaddfeecb6f4f19d57b9d07bcbf5f55f0ad01e327a38d3f6ac1d5a7ef6b7faea88a8a8a554b9922120e53956489ec0349bce4196d2492968abebe30e3ec840f1111ac7250e8ed7187778e96e80bb023380eb9a7fadcf74dfe54e951151514af360f6a31d04723248d9247f71e9342167aa673cac8d419a5b89f4b709d6cb4f1d056aab090ade32825765312151471cf375acde0d53e70c015590e9609f6213847863bc3eac2bc3b20e70cca0e28a2ab3662894444ec9e12cb1431492ca9ca78a45f9fe69627afcd2c4f5f9a589ebf34b13d7e69627afcd2c4f5f9a589ebf34b13d7e69627afcd2c4f5f9a589ebf34b13d69b913247e7ad441b8bbf6cbbadcfeebb6f007357963024e17e09d5751e2352e9188a08b18418c2b391f307d9ce0975ff82755d7e09d5745893873be023ae34fdab075764c43eceddf2fc600ebe32075f1903af8c81d7c640ebe32075f1903af8c81d7c640ebe32075f19afebe335fd7c66bfa1cd1c9f3245e0601018ded2015f106cecdf096264b1b98fa6b9b2c75a214352dc81775f09e0f3740beed464a57ced2400c86f5c8154cb1ce93227175bad8e4046c9f71104c02c1291396499c8ba95468e3c23411410db5a0b5204c6958ea42b6b7f35eda992460f2c93258cf6208d12cb3eaf90e639ce02a32987069d8c2c8bfa30af2ba5148e1ab12560b6aa9bd0aa9f355dbe98ed4dbc796a09057c72ce8a2f17976d5b0d8d22e474f44f729a35f62a17a4769592f0a9e888a261f8dcc4f30bf96b87ebf2d311d7e5a623afcb4c475f96988ebf2d311d7e5a623ad4e0b200e72d8a1b8bbe5985eb71fbaedfc29eeec698a4202cbed6baf98913be5e251628703e72757c8b39fe70ea955557baf5c69fb560eae87867da5bb25f84d7f5f09afebe135fd7c26bfaf84d7f5f09afebe135fd2d557227ce4828e2efe79a7a66fca35449d15208a84d917bbcd1183ca91461b4981885c41971950a48df54ed81d139b350e84dc8da21226dd02d560a5380e3bb369d9c1e25e8c85b3884c2ee0e9dea9a117c3696cb4d98b331b83be4bdcc8443fedfe44d31379651e5a9b3b4435156441c4f7b23639ef3e6377fa486ac0adae16ac1181135b87a9d3b58f9d786c419249cf0e9c4d15eb40a763118c631ba2b8869aa0a324e1bac221aeb0b59bd1c8db5951e99ca3c0e2e2cc01e79b8cab43b4b7d58460d35a718e95609c528530680a14cadae398ac2ac78b31c6ab958770b2c6ab254b2af9833ff21d39436351f2bbace62cb10888481aecc582b1204722a774f0dbfed1bdeb8bff006c2f5b7fdd56fe09d46f7c6f6bd9873acac33e3927f8720d8dacd7c506578f1a7ed583ab54edb7b7f4492c517fc925b031fcba92f9157b40a45dcdf267c20f2151488a84567cdf1021c3dbc9d93ab4b1481bec6216b9071279a5a26b5c2ced59639aa8af6b1c13c73c6d923f443012594386250f1ec601d19961c9463e6d7d947d623613e70b58e7f798f11a9494308e14f1a2245bc31a0d45812ee140162a9b63ddd731d9493bea2846e3b2a7cbec0ca033edee46d52e7e8dcd838f73495c025895d6f3444164c79ba9c66587ccd43064f0e46d393707c795a7cdd00d435b10b139c8d6ab9c7ca66ff510d58210638224020de3c89b86e7c3f720b8df10ead8fe3569d70ffee6d275a2a0afd0d5ce09993bf3f057b2e76f5ae6b9a8e4f1731ae6ab5c7e272960ae59ed3867384239406f1b6f29bbfc19fa6e58a05ee783cd61fc99657fc8595b8cc5c0e37187ed7eb6dfbaadfc468242088618ebc38ab801448eff0092c0ae298385497f5b762a4e1f2c55f6940b3678f1a7ed583abc9e2836b6ef924bc11bdfc8b725cebe51d20bc9ff009e3a1555ef3c7500c7f3ea38a28bfe3f4589cd122eaa8173ddef8417fd2cfd507f4f2f5342c9a3746f89f2d494b1bdaf6bda8e6f82aa222af584c9a3501bf309287107949236d740dee8cdb00a987612c26079cd26273479e834f6b433abc4d16ce6d48a0d4d766e963a2a302b59d012fe26e4a30eeb93ab5f0ad75e0d9eb786ea940b18feddde77b4e48abad9d11111112ec99c4a7b1220cbe85d5044c508fdb72654221d659cbd12fe9c6b11b91f68da103dc43c16516ac55b033adee8a79e66672ab13931f3352c83d1b4d80798ad595dc7d912ed4f5d5dff00870ffee6d2786d71e26a2b159d71e6c4bac33f0adffd0369ea0f4ec5edb8ef2a3d259d889c63f2cba75b7454d55bf7f0c67b8c572c34ed4ef8eb9f30c2755d646d612c283335a16ab386025f8f1aa2a6547ef7e3444ed2d992455e147f26a22353b27acb2e3161748f08594f214b21113a2ffa59faa0f98f2f818246542b1bc12a40275109ee9e0f44731cdeb12612666ab5f3f2dc93b31d37b1e813a60dce7467d929ad6f9fae2fb2a6074b0fbff5b0b54a8cd5a1bd716d77b0a620d75c57456958605270ed9be175ad010bf6ef29d01f19a169abb2fac02fc66f937fa55a9aef731b07968e9c061646a9d0b73970b2f1e5f419dc3db58998fa833476f3e96e3ad9e9e2a0ae5f67c5f8e78cc5bfb4f1d0df01415931c665e94fdd5ecba1bb6ac6d446b7cedebce9fe38815134ba4ebcedebcedeb91710cbe17dfc1e38dbbada2f83d9fa5f2318d739fa3e59a7aef3c1546ed7796fdfcb3565b17dd4be35bb78654d4257276714a1996e37d1a1a722e6d060a02a7073b46e7f5eee6dd925d8cdee17237ce265c1633d1860c5c04b7cd17a669590c6e91f1b64b72bcee6358c6a35bf2e8b54f759faa0edeef375f2ebe5d5882c322edd559ead77ba4fd2a7c953ae3ed24728f05113cb3a286be892ad18c57391a835306904692ba8c05fd2d29d904492c09f25eb8d75edbfa64149e693563a8ad09b4212014d5c2a756bff00e39c915d62cfb75cc6bdae6bb79858e8d1fa2a3c6559ba6b892fadbadedc93687c39aac0f8fb473ca2036238f08b045043716c2d457cc6938da22f697b2dfdba22227cbc79a20216d291ef8f8a6558d8acfca723afca723afca723a4e2499bfa7e5391d7e5391d7e5411d179c9e8f575008adee8889e8b8b90294090d3f43b0bdd7cf2410875628888adf0b61a589f19e3662f86d1d3a3dfb4cc494162becbd6c63a4735adc3659b475c934fb7be7df5a32ac382164313226752c31cad56c85544a3bbdb835d6cd215229bd1a147fb085500e3052c218a8bf29a6ebf29a6e978966e9389654fd3f29a6ebf29a6ebf29e6eb5194fc39306cea3456c6c45e8234bad3c63c3d91666aaca031c0d3c22aa3dd24d1c4d573caa2b90e91d744c04405c2aacb4054421513397a6505b0b62372a1e3d9bb286c0cede54f0e570fcd5b5e6b73b60eb2a1aa31df6eee2e08d7e946cfd6d6570d5808e10dafd1c74354f9538da89bec24bd27a9248e18df24853cde43d3455c1d700356843842fa393e864b8cccaf83017c96b4714327a892601479489b8fc4934db33f424782f56d6a0d38139c6ddddd96ced1c44f0c51c31b591f8aa22a2a2d6d99594b869509a255e9a9559d5ed19b467ca213e9ff3d71ee3563f65727eff0059f0e1d6b02a903dd21f33fd1695493a7b782aec966ff626f1b01fde45923eb8ceed08ae7d54dea7391ad573ae6c5743a89896fa259591b15cfc6662aa2a408b279721964c848b1d698f1486b92c44696339bd3d8ac72b55f652c957003266ad196b480169d728ccc666d91ae0e1922c7d1b5f6974155380693f6c5ff2be7aa0870d001cd34333d586d4eb7396fd9a0f26ebbe0955ee02e0733f06adf782089e21a096796aab88e44d4cc413679dd3604b94eab0f9433f28e8f24fbabddd9bf09a6cbe641cd5630317d2a88a9d9755487e22fd2f6aa8afebaf444203f44d345044f965bfba3f6965150d1672844cfd48f5e378492322639efd96966d7dd7ba8d0c2c8626c71fa491e32617c5265f48465cf508cbaa4acd2d6b6396f682c28cc518bf14455eb1180f9c5656fb0d641401ab22ae1279e77d89beab801cbfc5c15a7219022af892d2eb0f8ad40cc6ac0bf19aacf42aa3515576bb343fcd4f515e1344811a9e8e3d0602f4044d375ca1b428fb02290467c9e9d42f6ba36796f82f672210ceb8e34a95c7ad7127d8855a33c93150ee45d2c10c1146c8a28e267256a1f67a8f20d4c7b2c6a2bcd67dadca7a6929ea1808b8ec5815c04241a66728ce6ab48d2f1ed0041107c382a022eac1b667f5c8da342278e804c753d6d3d10a282a88a9d94bc3640a9d66902ae02be1f6017ac91a02c794722ef8c6dea8b7d9e504e46b3ad77bb5fc1c9394953bbe4e43c9469dd0de54af4eecaf828379b57a3cfcde5aab36220e1176f5402798b27927163f7473b967168bf2dd72409715adaca3ae09a18e8cfa06871170ac6fcc6a8bcd1280d816154686b5192e9f096548af9e2eabab4eb225830793e3e16a55859facd907450ac310e2976053ec6cfd7dba2e27d59cd2624bcafe92e6bd7a8cf0e4fe5ff4b917a9eae68676955f57c8f6e07682dc6e4bcc4c9de57f20e49a9dfa3794a9a345412d345a5d1f76381ae8436ffa7d380895faa6bd3fc75b4ae9abb51710c91c524ae46c7eec747d4929ae67b37aa2a7c96b4471d37bac753c79abd1a8c4686a296b294360806f745f00ce153c75191593116a5cdc4367ef79850d7ed6b554d2728ac4eeac2d6bab236c86ea2d66d75d094955595c356023843ebb44ca1aa7ccdcbe0a0b7ad92c6dcc06ef8f0e82c2bea6c87b5ae0cf1fe994108646b194671be2cb7abdd1f1762237a3ba06828eb13f82d3729d2d42bc606cb5db6d0776b9283da395e4b28ab9bfaa5457275157050bd248fe8942c2544b1cb51756f93297c949a0aabe1bda896fc7545645b49657d5d5d309ecc4d3f2235aaf068c1aa77b4528cfa334114ecf24bf09aee9d4b5ceefd499e117bf91d536237fa858ee8981feccd8a618b8fbb24ac0245eee4a7afea20858bb793d7112582446684fbf56645d74849249a4ca4914803a062cd27744ebe4bd5f8689e521914b2432c72c793bc65fd085609d6ac85d8eee0aa892189b0a40de319fe13b4bba593ed5b73d9595679cfe2d06499d6b713af5b79d6db5440dd714d644c00cb252278878259e596e05d4ec4453d8c6b1ad6b77e8c5c9d9f9f8bbccb8aaceff0054e38500598a2b53bdb6d44d201561540c2a22afd77b1af6ab5cb5e65792d32aab394a48077c56d697fa1d3aab1e1568e1a7fa3ebcd0433b15929358402f5202aeb28cc6f957e8af4d792c1270e382b0281c8e6015e7da1b18205471b230a596e7647035daa2c6ac5f64786bda68dd148e63b872f946b3269e5d7dd251e76c4f4e2fa8484022d65eaedc94fc97507a7dabcbd6dee79a686cc6d72d7e6eba152a760c3cf3bf8e28d3432ea0f2aa6f2df0739b556539fabdeccd0008a8c4837b5f4e2f5ca87a434a386990ae7576669c47fd491ec8dae7bb6dab23596bee008a2c42c4d8e3feca514799cd7488889d913fb2b4ae744ef7c16b8e699077fa68c9a59601c7ca63db40e9897cb2c50c4f966d81411ba6b6282cec8ab1cd1ae806f24cd9d2bcd9abce14c83956f19694b9a68b56146057061b3ae578963f8398c0c86941084a7da9c8d27c6b79534cd44444444e44b2507344b1bc6557f0ec800ae9608266a36534882b80289eb8c8579a75c5d91d68da97fc87535089fa227d5e58d4ca08915207580b431d1bff0050a88a8a9d131baaac1b346c7b5ec6b9bf46a48905bda69e3eb99af8c64e252c3d511434092fb53d919a148d8d53b2af4b6af983a916563daf6b5cdeb96153e0a07595ee998a2477da6f7b58c7bdd89475dec6e6ee5eb911efb4bfa5a38068231878608fae56b64afc94f0260ab940cc828e9646c513e47f160ceb4d4dddecbf5099e31e09a791c691a0d01d6c4ffd4d88a850b247d5112b240e81df46a2c61abbaae3e718980a1e2207e623aacabf1d82c6c73dc8d6be90f6fcfa74260ee4eee4545f9f586b6f89e7035775b929743a2aca106364428b144dcc6984d1c76530bf696fed96ab236b3b38c80f76cea10aabd62a2f8ef2358da38ad7e60427dd888668678992c3ca73ada6aa929238d8d8d8c8d9bcb25aecc9cade29aaf70c90f33bea72c5c3ebf32e1a2aa19070a24ffab7ff0003748bf4f3bb4acaecba8042c45132b9cb5552a3aa4d3b9c8d4573984c0f546a5f8acf651ccdeb27a25cb9ae74e46ab57ac9141a1c36047cdb5c593ca5ac97e59aabe119dec8af8477da5cd53ab286b214a18183d255c2c22374a3cf1b60234345258e747078aeb7dc910de36b132934763992f35df41c836b70feb92c879d634d490002c61022091fd4e5a394ed35756311111113feaf431778e0990691251e17fd2ec9d764ea8c16df5c0f5b0c1c71978661a64e5fbe483dce9878084b2ad9a37393b2af5c615741a10e41ece01c71a26c43ed7543e66a1f3f580cf4f34afd1da717ff000db3d107f69f2c521369995986c4ea81b2ac143955511157ac8b12e775696aeead2ae7d1eeec850f2f98133a1ba18bacc312fb940935df56d66f7fdc5d12bff576b124a010dea8e45780d4fa7575cdb6b9adac7880861c4c886b0b10ab8494a337f7e05fe824342ceaafbd3d3ab383d8192b138a6c942d70f12933c228f311342a5720eb653086b1ac6a35b9677ba72d1f17da6a88a8a8b7fc4b4f64448501734fbfc8052cbd7175728f47298fb1358000596fe2d12499f6f6f375b1bd652d2912a71250a83472d94df4b41becdd0248c9cbe64b921cadac9b6bc8a5af9d2b012a19889c9ffab959e78decea202e44f3360f7fb91ffe682fa172a3668e5648d4733d789aa9acb44c219fe3ae5dbf20dd0bead3acf7b247caf768e2ff0072193aac3a4aeb108d8f95b48b2875b4806668e1a3a980467512fbb73108ff00b5799ecbc805655b2902402a4013ae4a3d05cdbe14ade35d5b2b01b3a959f9681ed1495582d2e92ce33f551451c313228fe82b9113bf5b7e452cc265a8cf8747047da421ac6b1111bff604802949da498632a5eb2c0199117123d9eacbda95557e2ba1b2b10eac19ce33617c3dfdf176304304933d191ca3123bbb3e63099626c527588496ef5824e5a7817f3e5dae46fda97ea97fca910cbd6e116eb5d4948c8e36c71b23676fa7cada996b6ba2aa12aebda1c28abff66e6a39aad5998ea93d8f635c8e4454f4a493c32c040fbbd61da2aa0428a1a73a55eabab630dbdfa7b1af456b8aa80e563d5ae6f672a75c59235ba1958be19c625af2d10427da3a4e4ca0a29d456a736c3fe5bcd955ff00df8ce098fb3b9bb9d55111557296b5657211f71641dad61ffd27d25f922aade1aebdda5916effb5b71bdb85276a523db04d45fa0f9a38fb23e399b33d2387cdd9ef8dd630fb132667593b1f86e86b895ee9d6b3640d2892c70714e68aaf089b83f4dbff7cd3d4d355fd9fc857eea1cd153c380c986caf8ad4e51865f92f20257039c25edc001ee5980bbeaac12b73f644f58dc3565cd2fbe9d7580269625b4a2c06ad74d469211f46d09f75ad389eb3c8e7b4999dff6af4473553aa0556ca5c5f42a29ecaf0b78c06471a948a5106be1084524e5bbd817757ea74b7ec4699e6e8310a30a84715997e51b88d90959be29a7ab92328fe44db4ae91739472e7dd9ed0e62193ecfe6c99ca94212063b451061d841100d04b3cfb1bf175365555f5b04318f0c50c5cad61e40010133b00a3d1d6c2339a8e6ab57891546d2e8c14fa3b2554c9e81c99dfe89fff006f529dad0e4f5bdc8c6b9cee3a0e7173bde72498041e5208d5f2e06586756d533bab9a9d5e42a9004f5cd92a25fd4109faf5c8bbaf82c2b575f87c7ad533e227ef7e5b1cdfda1cacab3eaf3a375ffefae4d9963ccb9a8f0a0a437187b9d344c89657694b9755776240dc60b27e1b5f32f5c59fee6c34937d2d6c4b3656fd899c5fe0e44ffb65eaa17cf626bbd657fc2abd0060c70631437339e4419e0868faab8193191b5f7edee122f503d639a27f5a6d48d9ecd32c970b9f22c0a974b6fd6dd3cfb7cdb7ed0dcbbdbf26d3c1e1caf276a50d9d138c03438ca40a66f15ed256b4123499aacc9f1e5cc0271c47e4ca06bd3d7b31cbd70db51f63a29fe91d034804b81d9eeecf7b85dff6af546b5cbd67d15cf2a4f5ced73a191ad5dc545461c6283b7b9b3b929e51e283394f46c64864852223dd6a84012c137459726c6fe82ad228a38636451f5a54f6fc919e87ed0ba5f78e61633c3969eaa3d445d57b3d957851f872fcc91e3559d62614872b52de8d912308b93ae1362fba5e4bf4953ba2f528ff000fd65d04bff6b632fb20887f5431f94357fd09c21675559128c045efd450450b7cb1cd0453b16392caa2417bc8ceb89a163ad6c65f05e84ed69cbb1f917ecf17f88e5cb27f8727aac96b9e1fa622b63633c39a64ed435cceb3f1fb2a2a9675a197d950db49d70b45da82c65fa5b3d987970ba19a75958cf6e7ff00da9c2a163be1e81325af97dd0a45454454f531259668c7833f8ab3b43666dacfc6346f9e2741ba13339d2041eb5e89244e4e9ff272f5c504232ecc87c2eedc6a7ad20d9f87ea659a6b6d113f672f595459b9234b3786dfb4fbace0fd6b3912cd6d96933226ff00639e3a08f4dcc07c0755e7a418067b30448fadbcbecb2b6ceeb25bfb2ce55a8237e725ef5f9c97bd7e725ef5f9c97bd7e725ef5f9c97bd7e725ef5f9c97bd3f9a6ed9fab50dbc3e6b6b4ec9ff6e78111912b5d1d9195cae1a5f7dbbebdf2efaf7cbbebdf2efaf7cbbe9c75cb5aae77140f0cd5255a3bab5d0535437b9d687cd636259b3046db28b1fb2777572f7a03df4167576924fca4490becaac3c76c7607433dfdbdfe7b13503c2ee36bfb4d1c979687fd9d88f9edf55e1bda8b986ec4d001c54231f15a58c9aaaa8ad688f1de2956371053d3358df2b1adeb91e4f2654a4eaa5aadaf1fe84d332089f23c5864b531c44c888d4444fa539300ed574aed0888bd9905e052aa35cd7a3911c9e89a78a162be496f6591cac13cfa27ff00aba4b5b2157b141d90c5a7667d17c8c8daae7cb78af95210e0ccf219ac4961343d853279ec82b618becdf51270a322fb55d10bdfe435c0442a353e9da5734c8555bc5bb279f0ad19fe8dbffe1228df0c51451b238b927553672998829044e4caf9a71e09899e2821cdd436968abebba2bfaa9fae31aaab331c04a5c430a3a76836bc8216758e146333d6e75558e92ff8846f639047fd9f0bd735c9b69095d1f1fb504b8fae2793b076d0f52311f1bdbd716768c9ba83c3950d636b8009058fd98f0b3e85accf30b8c28468183c2c899e249700acf34aebe9a4779466de9313910814d1ca679a2f1b2b28c262220d5939cef793230438dbd9a4d5073a2f754369e4ee829311513658fc5fe7b6b0733a80784762322e95a8e45453699aaab30b5b6cb23bddc9f5944c4344e924cee5ee3684abfaa0ca52e7c76c40f4a88e4545e41e3d0a6109b8a9a9314b151cef12cf226258057e6f88a044615a087319c82248a3d1715d05a31f200447679b3d6b2d9ae47222a782aa222aa937b0c6ff00670388d0471fb678978290a8d7fa2c1b3d69a3db059bbd1afa983b183c774ff2e7098babcbeaacad3c7395b3da95ac9c67cdd646f20a0bd0ec67afb00ac0180c108723a799c9c41f2c487d6df9194599f4b4393c2209236cee3934a48332b1758217dd3214acfb3f73871354347235951caf4cc486196ff93856aa11c5333d0fb981ebd53e847cc69af1679795ab523558a520fd05a2d91feb26648209245a1815eb394ff1b03e30e1572895f39f27bd191451c4c4646f8d92355af36be505e8508096858ec953a9a56c313e47568ee3c990c23c648d9231cc780e7d7d93c57f82a77454ea817cb316c5f45ad6a10df6d15458a92c58a5f4c923228def7e633a56cee7fd608228024220be36f2b21aa3e47e69abec48778d996a28af7a713e5902ae5b92bc765940f4d52f19f512cf0ca45793e0d1acb416b1d3d76530b4d9b858e8bad771dd3df472cf0229f487c9556be3344d9627c6ee1eb670d6567493789424058b30e4ebf8c6e6d1832011f12ec16446bf25c5d4f528d2cfe41e3492ad65b4a6c26e89cd10f1e755eeaabd45ae9ea30b4f4b598ac64549030b2fae5599f3cf4b5f1863b450c519bf68e59143e47bf17c2e216336b6b13d051917ba764fa178f5682e44ab623001d13c1ce46b55cb031d6b60e99e8889d913c0aeca34fdf3aabeef3785fcaac0d234ad85210e16fa6fe3563879db1489246c7a7855f64b53513d36c2bc595870e192d28764cdf449017796e2d3059ea30686ae0004f46b55533176a99e44409de36b1bcdb2adaf60d04630f08f17a37e0a556f1666f870f35174374e5f1e44c8b2fe9df3c14a6a9107b27f8e6e5513906a1ecf15544455565bde5dbe5f81c59936c4a7cba59317549235c05a5cd5e4ef2bc51b9178d628622aee9bae2fa48cb3a7b39fa5e8c4f8d72a578adfb48a6287cc44a786be3f61bb99df4aee35782fed512a4a040a9e1784ac427b36d58c83871b7d1612246110eeb3edec12bbc342aab288ce989e56b53d37fdbdc99d01dfdc86f0554ea8fbc86192faae17b574fd51a76ae8bd3c7af58f91189ead00ee268ad616e71e8a34ccf1acf9eee8117d3cd9127be5097d317bb517a5eb8ae64836678fe9dad626776b3793c72702d872057233c74766548f751d5d406e02a800dee7b5ad573b47bba1acac3e41e726720890897445bdfc74614feb8c6048f30c93c0d2e308424997888079d6d757f3afda1737f51463a4f644733e6a2ee90c9a58afb902b2d23eb93619934b5d2411e37733f6f39b94d95640a4ad71ed323f5c91b6463d8eaf91f5c7bc597c2cbf89b71c7f4dec9e505512aa2f6400edf0ba4ef60137a4f4e85ffe88224859ece1899e07ca90873bfaa0891a23e4f55e2f6af97aa74ed5c3fa71ef58b922b7d4e46b9151581ad3e8ed6ad7c0d9941bca93d1ae47b51cdf473637f81a57743af78625f0cd12b5fc83532fa799ab926a300f6852fb616193c2c8d410673fae24cdc810135c97e2048c8f7d77178724ec8db6b72ebe0eb374845edc875f0724b982e1aca3675c6cf4765054ea4923898af9361a47e889833f479fa8032f9e1c5767f771e8f4e40207d9c54f10c3ce44b50011bebf3ed2c86cc67c56a243be862074d413c5ff00efae50458ec2849e98be6635dd76eb475e949ae9191faf411223209d077fb48217f8069edaec9917d1a17af61a3ea26f9238dbe16fff009307d565da5b8162f1be9d5c9088c16148208e2f55faf6053aad4ec00de9a15f67c834aef5f2bd6cb5da30ee6363daf6b5cdeb451f71627f5992bdf33f5047a79aff00f1551d0ffd3c1e165228b6b565a46f47b18ff47220685e32e9bd5148af01a9e040eb65a0a8ae58626451b238fc42b3afa4b5d2c569a5e5abc3c87b2a6491f2bdf23fae177d22d71ad87992748b28c8fa00390e3840e3838ab681b3d9889c4ba531512c41a7c8f1ed7bcb9aeaf745bd9e68c6e1111567bb2fecfd8aab32778e6f1635133d32a75c957619d6828c30d33671a095bcb2c4f70ac93ac96d2c89b28a9edbae548bc86539288bdd13d7a193fda863e8767b3821678537ccf39de9b7ff005d9071af85a7cedc34f57f3e8bc157a093dfade6217d5a05fe1634e834ec20fe915decb6540ff5f20d325be56ca26d113ed83462f578def5f275c6d32cd89a672fa39a53bd2562f42aff000d0786919de085dd51cbede92aa5f46a18d933778c767157dd24f09a7503454c7f4c735cc47278dc52555d04e12c6d384916457d5d6708b51e8fb3d7f17564f451fc1286e4ece5cc26c1cb1a10adeaf36a171e09ef7b2a48d7ad8f22566758f1a0aecddeec0ef8b68b46c129b256318bc3e1fb0caba7fb3f4c3a919ab9627144c8fa5363f0973efb3d75fd64791dd095e136aeeaecf7eeb435b5757a68100e4fa75675caf0f7aead9ba1dde71e177aec3f89b71a0f1a7eedb135be9b1f95c86abe165ff9913d50fee293c2c66f6014f275410f904748bead12ff00b43a743a768624f490e48f43492748bea72239aa8af0d6a3516d5be175ff008d9fae2c4ed88abf4f347fe06bba13fa51fc344a9ee91f59647373146c5f1d54a91666f64eb3a9d84917c34317711927595b26da66a98bf17bdac6b9ef86feeed7bcd431515a5ccf391a05c91504a8cad9ae172d7a0004f28e07dbb65beac73dee6b5abc3a2a49a798976bf914c34bf8265b2fc7c300e69b689d72a582434c304992ad5accdd406efb38987da8a447d712cbd9d763aaf4cfe1398067757589ccde4bed8ea6ce52d142b156f29ff0bb0ce97e1c9b07b4cc3dfd563fce00ebea5e814f6d76449e0e7235aae5a44594a2c85f45f35639859d18e47b1ae4ead7e56c1afaa5ff006b431bbc340fec2c6ce828d22107627ab45fa88de989d9ad4f4dc2f90ead93a8d7bb18bebe4d1501dc8e4a757cff002d7bd3ae3f1bddb1b491afa39a7ff0b59d0bfd341e176d792404144140838420c9e3a1af5b2a2b309b9f7ab639e07756917b50096f5c425a4d906c3e3b03e7361273d5b14514313228bad568e0a2a438c49ce2c935c6ce0caa4802cafd7b42669ae581545c14056d806163b283d084d7bfa5ead9134dc8c056b13ed0c2b7dcf69a30fc34ca82f23e788f04eb9ba0563e809416549868264dbc293656d9bd523fcc033d4abd5077712649e17442c20b912a07f60147dfd16a3fb70a544a321660918bd5d2f96c027749e9bd6ba398625b148d92363dba1555788de9888d6a27aef57cc586cf568bba3467f404892862c9ebe6a8510ba02518bdda8bd5bb6534c06ba004660610c333d1cd8aa8052b3a813b41127871fd725d6d5097fa7535eb43b73214e886f9a195bd70a4ddebae21f1ccf78edb590ccaa888bd6ef912d6c8f281ae73def5557515493736c1803912475b5534a934af9a59257f1dd7b0dd30cb2786aafe1a2a99897711503e218abf2fed00d143e58b68fc39317ddaea80c44545445449c7f3f9179a0747e6829facccbedb3f52feafe2f6b49691f59f77711edf53ff0095dd673f52bc2c954db38456b511a8889e85445454e825502d641ddd5ffc880ddd22f744f49e32142c9175465ffa1c24977f33836f49ebb3ff005db86df568dbdc5897acdcdedf3f4d2faf9ad13dce91dd7b56442b647f16d2c96da09eee74f4f36bfe542ce989d98d4ead09f770e472712d1ad767d4f97d3cc94cb357837108442123452f4ff9b1dd709fe97e9e0eefdbe58c2830e82c4d36ff00998a7c92c34ce5572aaaf5c3f4b4d1d43ed62e48b16818db57f4d6b9ee46b7042a56ec2d027acf0222aaddee282a58e45a8a7b5de59adadbaf2156496d5f4141f68685aa272d86ff000e5b87b83573f5b9d894064a9181c1c6274e130a92cf4775152d8e5ef3052fb5cad6f4531241a762e7d553ded9ea54ee8a9d6797b4c5b7a2a768f0492ba8a07bdd31727aaf0573a3612caf2d0a1592f5a2fe613a62f76357d56a0c8c910c18ab042c811ebeb9bfdcd0c4de93d3a06f703bf5809bdbe36897d7cd8fec252b7aac02cb5678f5a05253874b5835789e9e695ee75033a4f92274257cba6d2055510f0443c114117a6dab60b5ab3409ab993d71e6d5152aa362917ae128d504bb97a5f0d660c0d14333d963c51b00e556434fc41a535e8a7edf8bd296ae23eab0bab9333731cebcd16f14e1d1890e02bd2c35d4d0ade7124367686d8469c2bfff003360e3ac949d9b345b0d8b1d39bc334e935d1f68bf68728f7036f4161d7cbada50cd7b4ae187bd83481be959771c8c963648ce55a7f38c25ac79040d33959ee6f546b1eab47fea20d7a7a805f6172444b733bc92230621e16c10c7137d4f6a3d8ad731d2539aa8ebe9592a04e6313b31a9eb369d8f7a4b0277ec9eb83fd7a17afaae9be6ae9fae2a93cf8aaf4f5ef71d61a83e9618a873d59400b4403d5cd4c5436825ead2cd2067b1878d31cb435ee34df5f2d50ca1d88da210b318eab9276f0f84a3e53dbaaf45eba9c72a5118199a1d2238caf48f7ec7b84681756a15a434f7cf635ed56bb92308fcf96a785398490c1d9370a54acb63636afd2efe833de68a59ed377baee9050f1fd354f9259b91ae3e1d40f823e37a47d365436c9f68732d5388a504f6666d23b5a404a675c8156b619c255bc7d6c9659d818ebcac6da54980af1bde4220a7d59fabddd5c2010256d38ae1c6eeff0055d3641cc84a8a9437a798a9be8123444c6b1c8b45347331513ebd67faee0c77aac1be60896f5c3b379f2d233ebf2664ad34835536bb19c5e2d2cc87d97d0b7aa16deb4a00ab7a9b4a8b49e8a6a2ae655d3d780dd959cc053f920abab0aa838840fad35dc345466d93d9a2b393403dd1313db2471c89a0f70f81d9a9ee54572aa526a2da0a3833f419ce3b144542eddad6b1a8d6af44b25daefa00a36b51ad46b7ed03c116c032032a6c9edb1c6ccfa3fc49c92efd1d61caa435cd4c14e651e9c8a7b0eb7950c074ef7b86aa0e054737d648b192c6b5e88888889fdcd07fac9324f510df3412b7ae159956b2e21feeadb335b6965556247e89d52863595cde5999d6e39464aa366aca7b7d6e8aea358ac6b0196c2c040e286348a28e34e5fb650b34c0d8c639ef6b198dcac142035f2786f34a94d56e820e31cb2d3547bf13f6af2f00e0ace9afc7af32238214b8b932b14aa2696cac21270e27753d8083af6921b50a67235a9fdf92f560f3b933acff006487fa953ba2a75c2e42456b7c1aff007793459c9d05a3745bfced0bde31044ce9c89a6775c3b9719d1befe6eb96ee7e21a870ace3eac4b0d28be6f0d068c0a10d67271b9c3b5f74ba2bafb5b654ecbbce5804bc5d66b3d49204850f1943ce3ca152dacd793d10f4fc674e222487de71e521a2bd01af9c81c996b8cfefada4f2013af544cf257b17d4bd71dcdee9c83ecffbcbeacd5540f71266cd84e88893df2ba9ed2ce76400e878daf2869e0b29f0bb09f316a922d8dd881d1916ec28898b267266c66947cd9454a42f2c547f89b90efed9deeb4543c6560716db3d65cefb339e6c400a3be57c113a5fb5249191b1cf7e9395a96b3cc3d7662c4cacd742497d6ea05a5d455dec30cb1cd1472c7d726d2ac520d7638b3b4882395bfdee824468ac6740c7ecc3819eb00a4aeda5296efee092201609279e3d1686cfcf2d2c35fa2d1ba696d7e03a8aa7323a6367b9a794796fe186089a890c91c72b1f1c9c8d807d012e3ebd35568999933eb99a796eef6bebd8faaab7c6d8df352e60663c89ae793f334a8b055166f216d15525e33a08ecb63ed1bf6af235c59dd5fc394aea0c55352b637b7946a966ad1aca3ccda25b520262eeaa9b679c313aabbfd8854ec387a6b38ad6b043a3b3021b10090e6ae498038bac27fbd3bf8eb68874f5df8eaf1d93b71d7697b9caf397fb7ba3a3d11a2540488888889d59580d5c014695a9d85b68cc91f3e60ff88e7298c5e8b8c59452232ad3dc56c8df70e1c84219f736e65ff2e8cc7a8940998da6ae564f7d4d8ba0a7f2be1e42bb4aca2921671950ad3e6607bfed59ff0082e5d9fdb75c8864a2e60af271eeb21aa73ab4fd25c801d11b33f8db3a96789ba1c9e3a3c9af3ec7366f5c9552e0cf16ee08666cd13246ff0076692830d2cab423af9652dfeb9636cb1ba37713dd495d745d111fdb5b292ca9b0907c4c424794a651dce6b515ced572f9893cc25058ecb4f6a34831cd6b9ce46b7315cfacced402feb95747f08a078b1754598d0e9041584d2e5e9e9236a09d39c8d6ab94589fbbdd37a44444444fb5797aae514ba9d10b556115957086c771590dad6960cb8ea4afb99cfccdc0bc2c1b48452830c504584517936ba6a3d257698208b88d1072a1bfa98ee2a8b05f4b2c913e70a6feeeda57165c21450c4c8a3646dfa16a930648b663676e60bca60ec61fed7684902e78958218e9f374ec675abe59a626aec40abf0e31c1ca71305dd974aa8d4555e40d22e874244ccc0635962a9667a35ad6a353c391346a106954271fe5d33b451b65fb5afe9c7bba63ab66e35b19c522c33e5f5b9189a0d0576941ad361b0044360eb57430e8280e01fc656d27b02e909eb7f57f09bd82d2063d1ec6b93fb9b135a240afea9037351e5cbf466899344f8dfc73a65ce5bcb50777effdad8802d8844845722e6f6cc1e06c8a8a8aa8b594d696c436002ea8ec688e50ac38835cb3c2b9e33ae50d2ad350b8682a2be4b3b20c26082c018b00d078697442d057bc9978ef305dd59bf5772a9f6c72400fcf6ac0d186293114340445a3a78ee69cb09dc3f79228e7d0933cf08f0493cc773452c04be212c34f589ae86feaa19639e28a68b5f4ccb8a22e0ea8c85906589df5ceb28044ecacf8c582ac8cf84daf4a1df45f3621b7507fcadd03917b4b1de82ffe665882ff00d1091d7e6855a870357a1869ed48f7821a88d4444f43e4633cbe6f4da572191776e2f93d018e2aad08ba2a1221f6b04da8cdc0d72ca5f2762c545ee5f3554b7ba084f3068c8f90246c7910e5eeaf9b5f32f79525d6c3ddf165f95c91658c0d20e4404c31ce3fd49e8a9487fb49471871a3f6706fb1f169aa55231883a9eca29d941a502e73f0db3761a293457849dd60ec2b2b6fe226c072472624960efd68b73514b1b98ccd64edb67629797f0c314113228bed8d8d0c77f40682bc6370b2844544fd691b264b6805e8bca472ae256517134f591e6807a6db082bc596c6a78e6ec63692207a5edfa751c6d1b476e347d186b457c08e45454454fa76b65eecd48a2aea8f9a4e5f64f43a38dff27c9580c9f373a8405fd173a3ff0088290289c8e54446a2227a1ce46a2b96cec5e511dd95560864088ef49210c4a7fbaece8aabddadcf049fab29ab99d97a60a347d919d93d05850171ab65cbea6c71b6090cc21431a34248df4b6dac833152e9fa1e564e30f3b7c396312b3b1f7c0077d66155d8564151565dbd8895e211c79982a942ad94be1fb711eafa46717ee0b5461f9ee2ba0a995841488888889f6d6c065c8ee86b78239239636491eb2812fa9e51525a9e4822a5945271ddfac28fcf1dd6a2a0ccadc457f5365c975315747205523cfe698b23ab51e63ac80060026204225ac3be94f336086491d4e3b8a9e4366faf646bcc950216d438c40206375990228a206f6b433222e14923fac60ac2a07c4ee1fbf7b24333a57d1b3b112ac124f2f4a5dceae4b2d13f10621993a497c7557c0d0d21669523fda48f7f5c4593f7411d7a5fdbfbfce25fe6ca863e35bd436add5d375dbadfe6647225f56e3f4d1dfd6a39e50a3983ca3116f48fccddac53b5c8e4472758e194fe42013ae4dc53ac87f8d57d5d82171235df46f5cad01dd55468c00744faae723515ca759ca5c8a2875f5d1871f5a2fe9e2e801a2228c1827d9624eca94fb1ae06c203234567d6cc4beebc8552f4fa0e7b58d73dfa5b73f7fa2868aa34f9a080e3bb2ad0f878df79c8a41e12c8c8a37c926ff5efd35bbbd960f2d2692ee289f1c71c4c6471fdc1b5a1b0c9dea696a00e42cd96336596d794018d560aa8f33c81af56ad95e66ec78f6c81b502aad05b5060345d2500b7d5af1660de4d7192d59ddfae2183dbe96dcdebfc75c8f8b96a497e86a4136332147b7e85dc6af01fd54489257c1e85546a2aab2dac1d2cf2c43df0d27ca58e68a54f347e92ae031fe5d7ff00236cef9860c0233b46aa89dd7ab83985f9608709baaabf1c6afea58a3958e8e4d5f144b1c8fb1cdb2da70e778b670cf0cedf345e922d0283bf9a23ed2d2574155486bc9824493d191854de42af44fa1bfd7956c62652831590172f5890a1704648848d270b4cf809bfac93ae56dc22fb5cf578821069500a3e3b2e3e62a22119f70c91c72b1f1c8671663099965e80a2c7e616358a32c4951162b2af0ed002022c198ce3fd2cd587b1ed7b1ae66fb29f1517dfc40ecd250a7f69c2a2a255db98bd491472c6f8e4dae40aca1eb6200a4c44c49247eb9a249627c6ea699c3133852f8dd1a908eb0b6a4451846a2bc5ad315c8b250bd8ef30de4bf813e5f15b68d3b49f1d3bfc2d85dcdf28d6badcafea05a5121f9bd11111113abc296281b0b309931b3d4f079b93b3cfa0b1075351496d0dcd401610f5799aa3bd8bd9585a70ccf148e9a94cca6feb3f9de56860ff0099a7de4abda21a9b7960bd87178a75e6f653e9f88b380f679cf968f3c2358bada95cc6b27ec8a8e4454f030968c3c92bb8728d5187df4febe43de4a33d682938ff000b1e706f7b2fc322bf0de57bb09791b6f1e78150c47bdd239ce7f13e3143852f4fe9cf6313bba6b6a81d3fdf6ab5cd454fb82f68c0bcab98036cf3a4506892aac5bc73b78236495b7b8ee4f3a18e13c03f91a8048847a7265c8df236fec81b13de605c621a098cacf12c41cc1e5188d763cfc81aa604217095123e3f1554445556de0ca42c6ad723911c9d5ad73a5ec4400ddb1c89196860aa9dfa32ec68515b08004c4cdef8675790ba09da44715a9e2b59ef03db853f6ec8e47222a7a1f2c4c4eee75882cfd7303c379b6ab8bc3615adb5cbdb89d7176ca96be86402d05d4668aec913258e46a399e1dbc17b7571b5ccd323d0bbae5fb52d5f0d171c827e9f59f12b3d6e5c3d355b8498865a668c7575ac76014a88ad9ed0281bddd414169b3b163195e00b5a18e18ba7da52e6e0552b03bf4d44a70c57a37bc86a2c8b494380e3f652b12d2d3c7904a9f37c8b1db8c6986da1b3964d6d4dc2910cd132db994c8d183a65b96ec57b97acc75950577bddb717e114b7c77b6bf716cf2626a2a5609301ae2a88f5cadff82b5ae45452a8288c45f791861c58221c7f124618a1e61c9d8618ecbcefb2ab06c21323eedf0b49e6964880140e2ba45cd4401b73457d8f25232c5321299e68ba2ab452be727e1e1bbfc86aa10754737c0e190a1df1ad39289e70679e90299555bf063e05551bcda18faf7bbeebdae85ffa7b8de4dff2333aabf395b400a7ebc4c347f8c8c56f4f623d8ad7075503ec0f1a5933a2af7f2c5556413bce0c1a7e410bf922e4ede41fcff9b9b1ea6e49de929da334fd95c22b4f833c247d965b59d83c2d086c0e6933b410c32756b4f59702b863cce18ceccf578d5fc3b991246bcaff00e2a9abfad0f291879095593cc715ac93fc534fbfa597237e069a9a9ed84b9ac12c04e9ce46b55cbafe4526c094a3cae0f8f47a08da79de83a8a96c668e7361042193b0e889dbb785e5d83475b39e667ea2cb90f4125ddb46c644c6323fb8f9070d0e9435204e38dd4b2bd33b77f41ec6bdaad76d38c2489f2da6783b6ef228e5985b051df2af1465d6791fa33ba2461ca824808d5715102be53f3635bb992a8e72391c88a9e9b5ae748a84c1596ad251229bd7c42a89a9b74f05e86f9e86ed7e858d9c41b17ae35c44d24ecd0dbf8b951a8aaba8e51a6a6578c08b9adaef6661b774197a6cf0c90d7f56f582db569401581b43725a72f2d677179574a1bcb3ec6ff4fc8873ab29b258aaacc0c8907d0b1b10eb029cc3112db93f47dfa04112b8480413ee5e45c0fc5a35b8a9e3ddf25c46ca8b5fa3adc0546891665a0ce197f7eca860a2c020d08f078e9f1349a487f89bbc869b26f91fd076c292889eab0a8610ab24315a1a0b922307b10c8edecfd3c6b2fbb6f668bc0999b00f34cea1574d39a4bfd339438e9de54b032c08689538de2ff612c3677e888889e3a1e48cdd1a491f5215c83bf72307cbf1ad0d0ab2793d1cab945b3af6dc0591cf17bf2e736e6b2aebeac48c407e81a60c08d29455a1f71c957cdaeaea4a6afa3ae80107ee7e44c0b8c72ded171f6fe2bf8995d63f4395354b5756956271e65599ea467b5f4aa22a2a2e978b292d7da4e05a536ab2ceec7896a213f24f4491c72b55af9e8467fce2f72b91be50fc42e60ff95344f4fe74d141fe7f1109fe6aef6207555b6ac63d9235af6f235ab6b32764feaa6cc3105563fe3e074ba10bfc3b4907ff00580fb939c8d044c5f2059afcea7866045496e6a686a2960f635dd48f6318e7beff009533755e7886f7ae48dda2b61ce7155054fb398d6b51a8889e95445454eaca1238e76f11d04134240f0cf17ac92601079489eeee2db91ae9b4f519ecf56e7aba2082fba77bc7924d2beff3f80e428af1a95967eab5b316aab8a3cac3d717b0d415a9b2f134c8011082c8c1db5d5d047599fed6247a31de1232391ae63eff008a682cdcf9c2b4c7ec739ddeb05e8ee5f2cf1cd14a9de3f4ab5aefd54519dfafb909d1f5704c3b921c4f26d7855acadbeb63cce4bd288001f9778cecd4e938ff001c8a8bd371b958d7bb21a5a71fe50a31ad4ecdebba756faece5331ca69dcc13952387a08f1dc83ac5496fa878d3334be4915111a8889e0c9e07cb244de5052db4a0c9087a9b7cb930576a619e19e264b0f86bf3306928c909dc53a69a07cf96b2f51860c10d29255c5ddd723db369ea3379baeced746187f75efb8e7e20f75cd260b9150f736a2efd3c8d70468efc2c955d1d38949542570be3c9f6479d28997aa0ccdb9f6d0e556bf8ce9c79d851d63c8f9cae29e1c541b2a0bf57c41f8dde2f397a9dcdb6e1d360ef2d21b59b1a6febe1d00afec92c47872f6f2774f5686189228e44ccd55756d300c0bc4ab100262bcbb1e50c701dd3a2798ac0c9560a27d572c6a5510caae1aa687b49675d4d53550a435fe37da9a6cfc4c7d857724d39278e1197a8b91da877a9ba0da7e3ae63418dd26e69c40078a9357882a05a385ce923639de1ca542557580badaacbdf8d7f481d8c3e8b1b106b0394c34fb0bde4db9f70033f9dacce811840fddbb9e3a1efd243ebf19c885025ad0ea5151c88a9e12355ec7b52ca3d0e0f532cc992e4fa7bdf64299dd17c735969eb2daead4fbc7283ca99d9fae47b732b68590839ace819fac84417936ac71eb134425b6961abcafc6e5aee4ea795ec82da29629e264b0f8d96433368af7987f0ee6884738527887422aaad79189e421115527835c1ff50b7a446bda5fc471ff009fc463f5696b19b1b18c1f999e38628f0af29ecccf901f17e63b1ec91ae4f95acffac0f85617bd64b5078bf1c1a35544ae00089220fc5ce6b515ceb6e46cf012fba8d9db1d51e49135a4b67574bc87725e94de4ec91324291a1b43c859c3c583076b35a521f4565c6c2d8039bf723bc6e6f6aa8c571363b0e5236ea39c0aee28cdd953d54e619e37fa2aca001e61f141a3e4eb5f6b353d2d7520318407ddfb3c2d669c4573b3fafbbc31df03d18660870f1922f86bf2a1692aa4127133e332d26cfdd0b7fb7c04cd16db3bb0a0d140c705e1719b06d8dab3e4e49a938aa808e02a351476e14448fb1b34d59c1e56a3922ceb52cf39413be6cbdd81d9fc7054220bacf6347ace422abd2d5b53c875471710067bc8c92ac4be3d93c1d14527f33ab2b9ff00373a9aa1dfafc2aaff00c3451588d48fb22276f5d9e9e8aa8f14039caaf8d7c9923ccd152e8292eb016f459dabb312d84dcd9db9d04547a83696beb1c65b47a5c8060a15160a194ebdd168a28a8ab07b72ada2f02cd0c185d3977fcb0f9a75032f6b9b344116f365c6d85f891497d65e3aedc556646ff72932d7fbdb0f8d5f8410a00d10c27de37d9fabbf01e19f2c1aae2fb15960cd6ae9f481a4c0f86fb13069ebfcf0e035dedfbe4f47a3e2219ee71b9c039135597263afd451e9a92fa1f3d7f85a607276a438826a28aa6907582b7195b359dc696faccee33c7992aca9bd884cfe1d6aab2a7497d95ad12bae292fa9346329400b4406bf6fab98fb4cbdde6ab8ab2a1cddaa5dd256d8f5a4de55674f1039d1515a8a9617351588c53ebee2aacdae700af6b7b77f07391bf3774c382718f0d2d37b95a82a610d1f94b2334d1c6f94b1e211e5b815d5ee526359622ebb0f12590bca22036b4d43a28c4b2b9c13e088e10b0c1e4718b134e00155c874b6c5dbef3334eef60b9eb5b2bc80d5b387078f808f7989ad6b511ade8c3440a07905687978489fee9401e1361ae290fd3a0395c153ce53682a2cf912fe4bab78a38e28d91c7d2aa275b2e5160d22d65063f8ce79a74bad3b5ad6a235bf79cf0404c32413e978dad28cef8ce4b23ca41d92c405d22a2a22a75c8f835b6625bd5f1d6ed2f074acb2b1adaeb31dc39b7dc4320f3fbfe643e44d6e5c8685a9a0d9e6efda8817a3763dcbaf73e732bf9272864a90cdedabc70883a1c6e4ed2de9e7bc1421759a2b1b1cd5bcf2d6e62855fd2e70bb5c6692fcecb9ff0011cdd395d0894126e746cd6dde25b1135b6f91e5345517311f872cabd9946bd395e357e1e05eb0ba3291efcddd39106e5d6f42c510fcb3671cd6b5405b0130466766389c1eae9178f48867c6d2ac56cd85f5564c9b1f5d35cf17380938ecc8aeb1838a5df7185b85681939dd067abf47551827d2e56828d1bf0ef0b5bbaaa81d67b0b8e5d59e5f73cdc180d9ea098cbd350e3e833ed4500e384ae12730bed6bc9fa4e8104600480317ab7b9ada60de61f6babd36e8b92ab3d8ee3fabccb193bfef7d8f1dd4691ae2180e8f61c7a52575d5168e9efc56cf5fd72462c91494d3d161b662ea2b13cfd6867ac169cd26cb2b853b5a965623b2e393312e588ea3e5acdd97688c1ca18a85261bc2c69aa2cd8ac326cf8499f9e8c2cfd447494e0d6b36159600eb33da2afd2a4ba9d485986cdc635cc639a07181d2459ab301d5afceefa9585196556471f5ad4154fc99f333191f872ca2fe0f7f5c911249802bad0e727baa1a6b9aaacd4417bbcc81bd68ff0082e4dca96b67a6a2ab1e594ae340c8506e2d485a2d6644d2e5ce1636fb570fb8980843d784306381535d5af29c1783dec8d8e7beef9272b50d72753f206e74cf70f9d03886c4d7295a1e332d33da8b1cdd975248c898f7c97f6d61c8da18a9aa68e901a3ad840095513bf5ade4faba6ee2d7556234fb2312d74b57535d50230403ef93c00ac4494532ef8c2d29e74b5c967b965629d40d40c50670d19036be84ec3de43a5a2cfde057d523588bca970559d98393aecfd2c147501d6c0a88e4545bce37ca5c2be4793c67afcf4ee2b30de4adae7dec874359cab903d18d788608642938be3e56a2aaf856676b2a8db02c3378f604b122c6980c2232d47b3b8d36667ba3a809675b4a12741413570f7d4725be648a94a60a4afa8af0659b8fead35706887d2e3ea748a12d801c75900254958d6b5a88d6f8cb343046e926b2e4dc85735cc523962fad8870d9d4c57236a2463afa9f89b2b5aa924f0c10411b6287ae5aa09e0902d40196d0c5a1a10ec19c89a732e2c1992a3c7e503cc55b078b43b2a1ceb17dfa7bfdbefe5904a9cb71a5250ab0997efdd0e4a8b4512a58138fdc62a594ca0aae4fa0bc0e5aad2505f3b017f6c049c554b35a589faab1f44d0c2442f8a6b5e31c7d8f7549f88afeb2674d40b6bcbd9cf9921f34b1bd99660729e30bec8f0ef298f6a2888e45f9a7d25544f9a9771521355c59dc9f8c0d1510ce6b0fe6c01ba4e57d0fc8067166b2ddec92faaf8a3215fd9650c10c1852113d070039e0961920df5c71f17a2a55c2251662adfa2bcb2e44d4ea0af87e5b3dc4b1a4aa769051e01206403ffe80d1e1737a14579371c3f7c29702035356254568600bf40baaab398ad2cfe2cc6188af42b852afb23835e2ada83ff8f5afe6aaef9469a4e600bb7b75e47e418bbfb5fcdbd2b3b7b54e65b5677f3af32da3bb793f3734aff9449c91bf957bc2ba7e5f33bfbba05cd762bd9ff95fb831116c85e14aff00d4e0b8ab141f65512969c14440fe8f28e1cabe6867d65170e409e49ef40acafac1da383ffa515adff3e462f491b3fc795bfe3fff00157fffc4005110000201020205050b09060504010207000102030004112105123141711013205161223032425262819192a1b106142353607293b2c13340435482d1245063b3d2707383a23415942555808490a4e3ffda0008010100093f00ff00f54f751c10eb05d77380c4d7ca1b2f4c95f28747fa674ad39a3cff00fb88eb4b597013255e40dc24152c7ed0a61ff47a54664c315520918ecc474b3791cca57b49d44a96fb9dc007224157f7e3d295a5af7d486b4dcfe98c569d7fc1ad3feb8ebe528f53d5dbcb1dc288c12c4824e71b0c7a4eaa8a3166620003ac934c0a918e20e20ffd12bd8604ff0051c2e3c31ab896edfaa04af93ff19eaf8d9c07717108f545573f3bb694049ce0423798f52631bed53b51b7a9e8e7058c848e16fde3292da411c847ad0d65cec20b0ea71937446be32059d86f7eae02b4a99e3df1a3fc637ad0878e711abef9ac9bd2e06a548ae8c326520823b08ffa1972ff0039d50dccc6858e06b423c926e798fc11283d942dc2dab4e3bb6f1102cfedc95a384ec37dc1325411c51aec4450a070039215961950a3a9a0f3688ba7f6907c244a996482540eae2b48db4396279c9556b4b094f5428d2558dd4af81085b0415e1cf288549f6da8e091a33b705189ad2b2408272f9c8e07764900015f288fe34b5f291bf1e6af94d27ff73357ca497ffba96aea59a78487532317703c022b259a12a0f536e353a41cd485d39c709830c9d6afa06fbb206f81a75e4931d2372b911fc24a8b0d2372bbf6c4877725bc7346c335914303e8350496921df01cbd4d5a679d4f255cc35a18baf594e65eae5ace4ea9c54e92c6c310c8430c3b08cbfe84c4258318d6443bc2c58d58c1001f568179268e341b4bb051efad26933f9100321ad07239dc653fa255895d1f365cd08b53d2b53acb0c8a0aba9a88346fe0b78c8db98569f8e1b31212811deb4cdc4a7cc402ac659cf5cb2b5686b44237f3609a455037280051c25b9c2d93faf6d0c1ee58cc781c97a395b5f30c7eecf91f53725ddcc12cc41658f0295a727f4c75f299d78a357ca9f5cb2ad5dc7792c581840767c5c6f72fc8c24d2730e2210684b730950da92059bd7e3d683746de623fa3d69258243e25c0319a30dc44dc1d6ac8db4a7c7b7252b4dcfa93bb01ab8a10568e25e18dcb7592a0e3ff0042364664f7438724eb181805d50a1f34c492cd5a6dbdb69dea192e186f91ff0045ab48615ea8d02fac8a8f591b61dea771140cfa2677f77969532cb04aa191c1e84f1c63add828ad3769fd2e1fe15399a3136670231772116860b146a838280074727b79b5491b835695821b930219524cb07ad3164e4ee13254a8e0f92c0fc3a0564d2532fd126e8c796d58c9772b7391249991e7b725ac332f54881bd588a824b773be27fd1ab4dc823888c754b42f53196760e1dcef2ac450d976fef4adad616e49e318ff00a04fcedd37816c87bb35362ea0739039c1d388e81000199390a75741f392acbc9d67fd9e8c7ad1b7ad4ee22a337761362c8989556f3857c9f41fd124d40dba9f3522ad3ec01da0cef5a68b1f32327de4d35d4bc5c0ad1d18950865724b10474a21243200194f61c46cab7993ee4b579771fb2f5a6bd7157ca32384d2a56996938ce0fe7a4330fb91bd077b8690948a5dbac37b7477440fa981af12e275a1b2fd7de86af2192786ce28e540d8ba32aef1d0227be704c700f8bd616b7f87ec89c9fee1fb767000700052fceaf5cea73c062aade65399e773aff36738fe29a9e5050eb9b70d83a501677c0ea6b6c8dcd10140c49c69cdf5d7911780bc5e8fcc7469e291fab6bd179aedd355e673ee039373c9ee8fa48ad81c46201c0d5f5bc5d8d2006b49073d51a33d59dd4beca568077f4b3fc057c9a2bc607ad1a63fe8856a7e6fff002c2bf92b487ffd815a587ff746b497a7e7557c0ffe74349ce8e36e6b41193ff083f90d7c9a7fc3912b44ca9c1ea49e03e7c78fe4ad2d6e78b6a7b980a915d7715208f58e97f2921f50ada97f27c16ad44f1121829cb022b4abc0e3309293ee71560f776a8700effa489539b39fc89f21edd7f89bf73a9cea0d7443e6f5b5133ddb9d71039c7d32515b4bff0020651c9504c8530413918ba7dfeb153a4b138d657420823b08fb7170b0c09b58fb80a81e1b0f1cecc57ae56a027bf2b83dc30f7272816d7e17299464e46e7aba962b0b73817793e888f8bd27cf6ec7f1661903e62724f1c5120c59dd82a8e24d46d7d3fb1155918639c3b62414cdba872df4311f24b0d6f40150cf72ff008695a1488fcb58cb8f6deb4988233b55a6fd23ad313cc7aa2409560f39eb9a46ad0b6519eb10a96a4550370007210146d27215a52d130dcd320ad3b61f8e95a76cbf14569db2fc515a76c3f1d2b49da3fdd990d3ab0eb5208f7725a4328ea78d5be35a16d949df1831fe4a92eadcf6387ad3e31f3c3c27d698d40f7918eac27ad0ed1b0da53146f61eaf842c774c0a548ae8c310cac083c08e42019a07404f5b020635a304b6534baedd44f9ae2ae84172d90827c11b9141046041cf2ed156c6ce63e3dbe43d8a61737df5eeb86a8f30726908be7a067163eee35062c01e6e55c9d09ea347e75a25e41ff6cffc1ea5c25451ce40fe1a7db63cfde383a9021f7bd5cb5b68f04ea2fe912d5bac310f5b769a975ee1bf676e9e1b539b5b580eb5ba0731a071f16ab770c870f9ce1dd8fbe2a78e586418abc64302392fe287a909c5db828ceb453bb9c84b202e7d082b4aba2ee8f1d723828c1455a07947f165c1deaf628bb09c5cf0519d68d9277dc5ff00b2d31b0b56f2b187dc3bbad2935c1de910d4ad116e197c775d76f5b50c055c450af5c8e14569549dfaadc196b445ccc7cf6095f26f0e10c93538b54e31475f2a30c7709a435f28cbff00417ad3b3b7dc840ad217e4aa13b505161ab86ceda327ac53bd4e4715abd746ecc57e06b4edc803773cf5a44cc0796a8f5a32da54e0f11ad1173176c6c1eb4a242fd5700c553c52a9de8e1be06ad619d7aa440d50496b2795037e8d5a6f5fcd24c26b43b489e59529ea74c54d4e6d653ba6c97daae6e689c763ab0f78344d9cde6e719ac6fec075e322faf6a539b1b93ba62046783d30208c41071a60aa06249380a0cf23b6a3dcafc23ad244693c75fcca8252132171b5c71f2c5343736b3a75874706a7911e325c5b2f863fedd20b4bd07504a72477edf228fdb2200009249c001d64d033ddb7706e106b804ee8e98cf76e75c404e201eb92800aa3d40501757872336d443e6f59a91e59dcebf32c7127fee522aa28c02a80001d400a8313e2483274e06a4375a309c5d76a7f50dc6ac4dac2722e9b7db6abf79e5399446f8bb55ac50a01e28f7b1a9fe7130fe1c39fadaac9eded8ed9172f5c8d5a4de77df1c3fab9ad1d04000daab8b1e2c713c9a560471e203aefea5ad1735c3ee7972a81eca16de1441ef7ceb4f977de135a43eb7a826bb7ff0059ff0044c2b465b4200f12351d2faa7f8579bde2143e818d2943d87fbd6909227076ab143eb5a945dc5d53206f7ad584b6cdbe48be912b4941337901b07f64e0691594ed56008ab63673f97055f1ba837a21c1fd286b473c120c8ba29047146abb8e65c330a7303b41a8be6d707c78b2078ad4e6f2c77a0c644f4a6d5ab716b065f38d4270e2edb96807b861f4939da7fb0e4843790e3274e069fe75a31ce2c08253d3e4354ba972a3192ddf275a02dafc0ca65193fdf1504b358f88db4aaf5c4d57293c4db0a9d87ce1f6c2611409ed313b8769a85edb460203ff00795a944d7846125cb0cf8255c2c510f5b1ea51bcd46f6da37639eb53be56a512dde19cec33e0bd000820820e608ea2291511464aa000076014ff003bb9188d443dc03dad44d968e9379c63423e2f517cfa7f2e61dc7a12942aa8c02800003b00abf8a053b039ee9b80df5a39ee666c84928f8255cc9616b26e63cc7b855ccd7b2fe1a568db7b7cb3644018f13d076474b394ab29208216be514f1a2ca63c1e796be53c9f8f357ca793f1e6af94f27e3cd5f29e4fc79abe533fe3cd5a4ad87a5eb4ac1eb7ad2b07adeb4ac1eb7ad2b07adeb4ac1eb7ad2b07adea7e71a066462092091d1894f6ec3eb153346e0e20ff00622aecddc2bba6fa5a824b2977b66f155d453c2db1e36d6156314e30c0160359781ad24f1c83310bb607d0f5612fdfc02bff0067aba4900c359763af106a2442e7598a800b1eb6c369e82065604156cc107682378a95adee633adcca92bec1a4305ca36a0b8235413d5255bc771038c41ea3b8a1157324d61b644ea51ba55ac60bf098bc07e287ed7c292412aeab2b517b8d133bfa1c753753d4faf13ed1e329dea68f3775112609bc926a010a73a7564dca4fc51a88208c4119823ac1e84e1e6dd0479bd446d3476f6cd13d2db5cd27cf6efeb651927dc5ad82af15e7dd04243bd68b92088ed9146b37a5ce495a56496539b47136b1f4b9ad1f1427cbc3173c58f4ff00919bf2d7f38df015a4ede395080c8ef8104d699b4f6eb4cdafb75a66d7dbad336bedd699b5f6eb4cdafb75a66d7dbad336bedd699b5f6eb4cdafb753a4d11240743882457f332f788c63d632357d246dbc29c31e237d5893b8cf08f8a55ec53a1dc0e0cbc54e62ad229e23b9c6357b22b8cc40ef81e0af5672c52ae466d42adc592a78e68d864c8411d0902a28c86f63b80a4f9be8e8c852c06d51b11291638218c2aaee55140ca2472934a9e3ff0064ac24be90033cff00a2d4a23850a8673bb588504d302a4020838820ef07ed75bacb04aa5595a834fa26e1b0ec71e43753d4c1e37198f191b7a9ac23bb8c1e6270335ec3e6d0291a3611b9f13fba510410083b410778a9922890774ee6ada562d91980c5cf0f24549f3bba243f33b6307cef2e902228002a8000e0055cf3d74365bc39bfa772d5b9b3b02702eb8a2fa64a94dfce3c4d90d4491a28c02a00001d80779fe4a5afe71fe02bcb4fc83bdfd6cdf1afe665ef51ab0edda381aba92195730558ab7a08ab632a6f9e3183d5e473c67c83b3b186eab45946e7d8e9daac2a792e6cfc74c31603cf4ac2d6f3c86f01f81e49355146437b1ea158c1a2a03bbf22544b1411205551900056322487526953c7ec077250592f65039f9ff44f3793f8d3431d122cdc0f9b4cfe207ddf7288c3ed4c4f7b3a1c0f36704ad1535b0f2d1f9cab949a09062aebc970b1408336356e63d1c082e5fe2e6a4171613902503257fecd53878db22a72653bc1ac22bb881e627ab59643027d07e981de9521b4d141c94fff00cd6ad963f2df6bbf6b1aba01d86290a672355b3da590c9e50703c5dea4f9f5d6d29b211518445002aa800003600077bfe4a5adf7927c05796bf9077bfad9be35fcc49df1030f78e06af2489fa94e04f611bea2f9b4e32e7d47d1b548af1b8055d4e2083bc11416d2ff006eba8c1243e78ab6965840fa3936b6037a36f144c1a260930fee89e7544914112e0aa32000a0ee252526993c7eb03ccac24be940e7e6fd1797c7bec7d8434152f60b18b9a938ae254d1c2e61263b777ecf10fda8c5a6760970f1ff00b42a249ef48059d80213b16ad11b1070700075e069cdce8c91bba53e01ec6f25a9cbdc1c859ec903d4a60d1eac75146c03aa315008e35eade7ac9a318b42844864c8519a6d1bcee12472641e3dd8f5354baf1b8cc6f43bd4d5924cf6efac84fc0f58a9628208d7366211140ab592591f2e7f53163f716ae5a79db336e1ff003bd411c3120c151005007601df7f9296b7de49f05af2d7f20e8e3f4166ee9db278b43a3f5b357d7c9df9706f28646a5335993dd40f9a1ff89a9045743c3b790e0fe8eb156a9344dd7b41ec2331512c56f0a60aa32000a9318312b3ce9e3f9abe6d59ac96f380b23800ba81bd0d4e934320c55d797cb98d0c962451c00029356f2dc0693536baae61b8ad102f6db049c7c1fed33e3a4ae4611ffa49bde909be9c1383ed8d5b91975c0c4ae23103af0a892f2e64c51b101e31d986f3499e2192dbfe74a15540000c801d405498cac098e15c0bbd31b5d12872fec9d66ac94dac8a44bad9b393bc9ac6e3445c1c083bfcd7ea7a6373733478a5b8da87cfa99ed345ed8c7fc12ad5509f0e539c8fc4f7ff00e4a5afe6e5f80afad1f947457bbbb90bf045c857805f9c8fee3e63a3f5d2d7d7c9dfc548d0cca715d42548ed522860760bbff98a909b7394f3aed93b16b3908cda9711ef07ac5633584ac39c8771ed1d4d530789fd6a77a9e4ea96ba850dd5ac347dd786be63786b4432b80cac3304118823ed21c70ca24df239d82b1743213129d8cc3f44e4ceee70440bf17a9a63a42f4739a9890e165c9493d6f404d7f86726e4ec4e4c27bed9d691d5a5dc91ca03b06cb813e6d18cdb18c18b9bc3535376187240b2c12aeabab5137984a4c0920c1116801c8ea888a5998e400031249ad227f09eb4937e13d6926fc27ad24df84f5a49bf09eb4937e13d6926fc27ad24df84f5a49bf09eb4937e13d6926fc27ad24df84f5a49bf09eafcb4f35b3a2031bd7f372fc16beb47c0725849345891ac981ad0f715a267009af06189507f48c31ab5799c218e4095a1ee2b43dc526a4a8706524120f51c393eba5a380f9c49529f64d4a7d93529f64d4a7d93529f64d4a7d93529f64d4a7d93529f64d4a7d93529f64d4c7d93531f64d3e3872af75864c36d66e76b72ae2a46ca2d259c8c04b09393afe8d526bc4e3d2a46d535b1659528e52411bfb4a0f22fd2dafd321f7353e2f6ae6dcf05cd7ed1c8b1c51a96776c8281992699d344da9cbb13fe6f48a91c6a1554640014d84718d9bd8ee0281363049dc47b9db747c05108865c6366d803478255d431c6062599c014e6280b6ab4fb19e8adcdeb004487354fbb4835b0263937a3ee34e4a5b481e3e89c85317879cd59e45d921ff8252b3a4326abba8c86785695b5b98641e0be31ba9dea6be4aade45da1a41eb85abe43f3677ea4f2fc1cd5aa5b49d539992ac2d261e65cbb7c1eb42a7e2495a113f124ad089f89256844fc492b4227e2495a113f124ad089f8925687449e2b67747e71ebf9b97e02bebb92728d88d65daae3a88a220bcdf0939376a742648a2418b3b9c051686df30d2ec79397eba5a4d65f9c4956e3da3500f68d5b8f68d5b8f68d5b8f68d5b8f68d403da3500f68d6a700c49f71ab32ffd44568e03b417268041da6a4e71878580d868e48f8356dd8cbbc1e9e1a986789c054a26b294e13458e4e3f46152094205ba8f8a64c29b192d4985c7bd79064f13a9e04115e00303f236ac9cd18e23e7be408a7c67887333f5974fb4075c1930b865defe45605f6cafbddcd305550496390006d24d3b0d1d031264dc177c951ea410a05514cf05cc63049a3af9467e6b102ef845a956fcce8ab67c5a639bb8deec4ef6dc2864a0003a80180a3dd042b1af9521c80a523e77281176aa745cc97b39e6a731e6575bc41415f484ea0ccfe47982a20f04b010ea7fee5633688bb6dbd6bb9bb1c54ab2c32a07475cc106ac609d3aa58d5fe20d58b5b31df0b915a71e36dc265fd52aedaee35ddce09fdd257c9bcbca28f0d25d5a4be72074f5a569bb425b6297d53ea6a396188e5fe4debf9b97e02bebf958ab038820e06a4d790b3047de517af9663cc42ff4318c9429e87d74b5f5f2742455e240a975bee8ab727a8b7f6151141c00f8d5ce1e92c69ddfdd5027a4627d6790e3330f6450c65689bd008a1882f98ace16f8751a38a91eaec3d140f7370fab1a9d98818927b16aed2f0c69dc43cd6088fe55222242121000031005032e8cb9cae22fd454c27d117b109632a71c607fd52a65922718ab0f783d4451c39bb772389180143f6f7291270887266f23f3d201ec20a9308eeb040771917343f67ce17b778c50f9bd6f51ff008cb9188c76a21e425e799c24c53dd1d60d732e0f732794ff00d872e2f8c816e48393b79140172034d26f77a200009249c001d64d3e1a3adc925f70519349481218635441d40643a1203a4a75cbfd25f2e816d23700b207db0ab7ea793ea8fe7a407104c726f8df732d6564ef8a49b90b6c71e61a388231046608e80041181073185687b6c4ef44087d69577756afe8952b4f02a3c4491e2ad1a6ea25ded0f383d7156869a17eb89c3d5feacf25ab858e54284935fcdcb5f5e79462f23aaa8ed270a2352088263f745442ecab8e75f1c130ea5a9b1f2e3393a71a1e1830c9c5735e87d74b4d82f3ef4aef56dee2c6a4283881f0ab827b07f735196fbc6a355e000e8e721f04566c4e2a0fc4d7d5b5797431522b3858fac758a38823107711cbd55349cfb2b3c10ae4891ca30cea458e18d0bbbb64140cc935018e293019ed7d4186b56c2b883d441a7622105501388009c70152e31b105e27cd1aad2449679409536e2db1545104c318d72361739b1e4ceded5c94e10f709594b04811dbde86bf8d102c3a9864c3ecf7ec6258130e24b9a1431963b69193881561f3cd2f392b1bca0b2c60f5019963566af684e6ad12a8f5a66b5907c43a1ccabef5a38e91ba4213ae24def498df5c0073db1a9e45325cce42cba9f92806ba9307b897adbfb0e860f772656f0f59eb358c924ae648237de773f2fd51fcfc8123bd873826fd0f650e6a5858c76ef27ba33de7475b4a3cf8c13eb35686de68212e39a72109adf752d0db3f2ccb1db59a99989de464a0769340dbd9f578eff7b92768a553b569520bf8d04b17912b26e5e80db2cb58eaf3ef502fa73f8d003bc7a06f26b34c721b8f60ec1c9f56d5e5f27f4b6f068f718e4770ed1d8794ed0413c455bf34444235f3d1320fe9ad8f711249f73900ee860711512075f18724239c9714827dd1bb723e0eb0958fb5e4ee050eeeea5f7454329a22a3b1b683470921733460fb0ff67a325ed8013f66a1c55e984776ab8cb013ef14ff00e32e8103cd8ce44d443e7d70b893e421d8b406afcd24f59180a24afcf98411ef91f50512e39dc62076330f82a72106f260442bf17a426f2e73843ed446ccbf41f055c9137c8fb9457ff051f048f73e1b1079a28a80051146bea8fe7a2288a5034940b96e33253eae91b718216db32af48855009249c000293e7d71e50ca115766d223ba1022ad272484f9723bd100331787ef8a8f19211ab3f6a6e6ef43c36c59b72a0cc9a1ab6f6908545de48c80a982bcb296396449a9c301b83540476e181a7c7b361e9360a28910a1f50ea1da680000c0760e4fab6a3e3f290245f04d1c1d4e0b8fc0f2a15b9b789b9a71e049125468f3df7a91176b50c49351632618b1c48ccd230f4d62547858d6da971bfb40049d7226e7a3fb7ba2e7820a1818edd037de2313c99437522337097147fb3c01041041cc106ae45a734433c38e1e98eb19238480b88c9dd7906bbb4804fdadb96ae11346dbb96011c1f0b6ea8a4091c6a1554640003214d8246321bd8ee02813650be11c7b9d97620f3450c001801d099c5ac90950372b86ad3bdc9008c22ad3a7f08d69d3f846b4e9fc235a6fd50d69d3f846b4e9fc235a74fe11ad2065b9796160e8a50a166e8dc08a24f5b1dc146f2689b6d1a0e510de3cf34819f0cdcfe8394959a121b11d87222829940e6ee633d7fd9a94fcce625a16f8a77852589c00031a8ff00c6ce0190ef45dc94d8dadbbe6db9dc6d3430551c88197a8d3904665286acbee6e893abac41ad32024d12b8c21f2ab4d8fc1ad363f06b4d0fc1ad343f06b4d8fc1ad363f06b4d8fc1abf13bcd89c353530028e24000f1c333c8544d09393e255d586054e156e96c23b7116a1935f612d475e4f70a755006fc07aaa1861b60a1c249211290c72cb0da6886561811c771159a1cd4d1ce361aebb9d37ad3e36d3c4ce2bab936c5394f6c51c5a6b4899bef619fd9e971b3824c1d86c2fbdf8252e11c4814769de4f69a61f3997148129c4971705c47bca8de789e47088aa5999b2000da49a764d196e492fd4bbdf89a8c2430a0441d83a285ee2cdb9f4037a8c9e9bfc45a0113f6a8f05ba6e123890b331c800062681e66d8931fdf6c907425090c4312779ec145a3b28c9e662dc83f563480281d0191181140bdacb9489e52ff00714e24b79d034720daa771e229761251f73af58e9c6436db789bf39a931bd9d707236c48687d2b8c5bb07440599732078d594abd7bf0e86dc315e229fe9ad738c1df19e99c140249390006d268e36d01091fdc4fee7a2c07bb13d556714f757512cd23ca8188d7cc28c76015b12e622f44ea9c88eb15e1018a9a1983449582769223e4871830f751ee8c4ab27df5c8f278525d205a071f9a83ed6752606eee92de3fbcff00666392fa6438388f28c568dbab71b9c112d694b7790f885b564f65a8ff008fbc528be645bdaa3c2f2e402fd689b969c2c71a33bb1dc00c49ad74d176df0dc83b4d48d73a30e6ff00da55a59a1970cd026bd5b3c767b6463f190d66c7069a523391fa431045213a3a67eed37216db1b54b8e000923393a1ede8c8a91a02cccc40000da4935196b7d605df606f39ba9050c93377deee76b1e52151412c4e4001bcd4a468cb673a9d4fd7250c140e90c987a41eb14c5ac256f63cf14432b0d78264c0952778a8fb51c66ae3ac7462ea68603f17a21ef651f431f579c698bcd212d8b66493bcf4f291336c378147e917c21d062b246dac7e078834c12e95473b01398e1d63a240007000539747244f32f8fe6ad7867c23d140c6d2d81881dcd21cdb924d5b2b77d597fd5916bae994e0a312083ba864e73e3c8f85b5d10149f124a9d228977b542e9a32d986bb9dd1ef27ce6a50a91a85551b0003000539f9be8e7d48bb5c1c59a9b11716e8f9768c4fd9790add5f62988dab18db56c92decaa1d8b80447e68ad1b6edda1029f5ae157d2da2c409c1be91780a7796dad3054d725b5d86c5e03926518bafce5cb00b8ee526a78a618069668d83091ced3432ad096dac76e00afb96ad62822f25142f78896486452ae8c310c0d5cbf59b7d7c1c568995654c8b806363c55aaea588f53c4d5a44b762c4f56134f26ed7ee051363604ec70507a12a1eec81ce4cd9bc95a42da01d72caa95a691cf5468ef57739e103d3ca79f384ee50a1d4f2057867363de076ab751ad692c1b66f31f6ad08ee2da418a3aee277a9a06e2cfeb5466bf7c725bb4b231d8056a4f779155f123a2b2df38ee631b13b5ea4692573ac03efef23e85cecf88a73eaa9b0f41ab84f49c0fbeb0208e20d4a62994e2354ea907b0d5973e06c90770f52cd09ea7889ad258f089eadae276ed01051f9bda1fe1262aa78ef6a18be19b74a664e6acdd881b25c4e001e1c9bee5e553d6b29d714a598ee151c83d0699f57a893428633b8c61f39c789c5b755e4b05b2818239c662b56cb0c43ab32c7ac9a930b994186dfefb526377751f3d1758484ebd1c5ece764fe87eec7d97eeedec9827a20ccfadb92ea38558e45ceda7d7b55705a41b18ef6e0b4984712051da7793447ce64c52053e575f05a79b9dba25a3c0e607946aeda6b177d5743929f31c57ecae2157507762331df2da1993aa440ff115a1a34ffb4ef17b90d68b278cd29ad1b6b061bd2300fa4d0f9f5df98708938b55d1b5b73e243f443fb9ab9791bd67d66a32dc4ff6c2adc7acd42030d87127e27bd2e23de0f58a266b2738b46761fec6a504e1ddc2f93af1141ed8938c8b16c7a823822518b375e1b4b31afa498e2ad71b876253192663890c71ccef3de975976e156cbeb356e07a4d3c8b571add9b0d4278e181a2aebbc1cfd60d5bafa311f0a87de6a141e8c4facf7898c7710eb14618104119a90771a28ec2c39fcb66bead48d24d2b96776ccb13430661dc8ece55ec6a72ae8c19586d046608a235dd752503748b937239365664a315ecce56a402209a8177018618564b2ab84fbf0b7d96d9040f27120620566f2c9cd83d64f76fc84b43656ef881e62176ace4925e64762ae74e1238d599d8ec000c49a664b13308a24f3770f49a501540000c80036002b708f0e3ae2bae5fcfdfa658e1894b3bb640015af6da3fd4f28f3e80793ca3fb800548d873153bc52a9c4053562ed7083268f20e7ce14dcc5913fb34c97d3bda862f866e7f7040c3b7770a762a36aef0286aca0663bdde5c476b2821e0472236c7b0e20635167d673a883ccca5d8b1c11101c35988ab98eea1551a90206442de7d5a2416f0611ba26c77de6bc1917d468604134ff45740bc5d922536122c7ab176c8f90a18cd74c550f98bc9924ed113fed1fb2c7bbbd9827f427766860ed173adc5f3a235228d9cf05049a3fb785edd5ba9a7cc9ad1ccf173a597767e521de0d59b5bd8ff0010f89c5de8eba5894e7a4deee835dcf21cee2704fdd4a183a5aa171e73667beb00a01249c80036935291a3206f44a46d73432f793d67f7389588de687ee7dcb29c5947c45786b930ef681e79a458a25dc598e0313b80de6af5ee2e278d51f101506af93522c71a2967762028036924d4bce5bcb72ce8f8118e35b0106864e33e229b0920956453daa68fd15e13715b2185538903936a3bad6184d046f979c01fb2a71480207e32e0ed40000603b07551c1ee488452612dc969df83eca8639079ca0fc694247042f26000030504d6723b9507ce94977e4ce385d15ffdc7efc709ef17198ef1150eed862e7fca47d0b9d9f114710c011c3bd5b99dd6e80112e6cc1815247239480c5cfcbe7f24815988c29c3903586a9c731c8491672b94ea08e4361eba3930041ec398e4fe6fdda958e22c20fc83eca6c4524f60031359846765e329c1790e2c4a161e74c68609122a28ec5180e4384b7b22c0386d6a5c1e60666feba202a2963d800c4d0c426b843e7ccddf4e091a33b9ec5189a388321283a86c45ff002af0b0c5788af0a33ee3de81304323093018955752a5aa64961750cae8410c0ef0454baf736f118ae28624d478f020d2ba9e0472b63240399938a7236bb249aae46c0ef582450c4a831c80551850c23b7bc3023796a141d7fb267095e2e6138cddc50ceea567f42f7039338ad79c75ff006d2b4d5a24bb0a992a54923718ab210411d8451c902eb7199a800aa0281d8060051c24980817faf234b8497723ce781c97bebe125ec821fe8dad43ba61ac789ff2bca397e0d91ef73082f2d2da458c30ca52012a54d2b33bb163bc9273268777e2af551006f27202a418b0cb68c476634a0104ab61c8b23d9dd401b04f71ab092289f22ebb70f39ce4b5209f48c830326e8c1dcb58bdccf80b829d4db23adcd13fd93d925e626864b6917acae269f559e3750dd448201f45208ae6f258d1d933908dcaa46e6c6aea6374cb9b26c4353ebc183b47d4192b38e1791d3fdb8f933792404f194ea2d649044b1af050077d38adbc40b0f3e5343fcafc46c3d7476a2e3c70cfbe5c84055a49a45ccaa275769a82666898310f2b3890f9e0d43182409a472b9af505afda85cfb70e4b4134fa3a52d083b0c735411c51a8c02228503801441ba9714b68badbfb0a264b99c9784bf9db64af21ff00f493ec9a177b3944c46f29b1aa644bd8231198d8805c2ef5a359a425d93f22f24c22c090d27504181a90c92c841965230c793bb82c8bbaff0047709dfb30b71201c13b81fe58362eb7a8e35e2b11def111cf213291e4443588156d1c51a0d55545000153a4304631666380ad7e679a48c17186256b66a1ad98e5c0e628e097513c269c2c51233bb1dc14624d023465b1c93aa31b178bd0000000032000d800acb9e13fc35fec98da2ae1ec666cca28c62c6b4989ac30d42e1c3001f2d8f433ba9b2fb89956c86277e240c40acde490463f3b72381712831c037966dfe8a5c26bf7c476469deeeb9eb9197cde0c1deb43c4a37197194d5e880752471ad30692538938e24927124ff9678ca47ac511aa4ec0c2adb5875eafeab5198cf5d3861d63bc4c624d1c165623366326202723116d66132eb775c791c06c02a8270271ade08f557876f3a4a38a1c69f17bf09349da87c05a1dde1ad33f5b9e4d8d28ff00de0c3eca9c5ee2632b0ec4ac8c502a9e3b4d3777732ac6380ccd69511cb3c2b2987168586b568e79fcfe6d24f7ad398edd30fa1d8edd800d82942a200aaa360032000ef52111e692dca6d7ec4a3cec9b4f550000d80643fcc6318ee6191a62f0939ff6228e7e32f51e9a7391de3a5b4b1f13dcb8e15308e0857176356c6149300013892106018d292c4e02a3653da30a72554e231e43aff35b704708102272ee960f747f654ebc164550f087173c87205030ff00ba6800aa02a8dc00c80ef8f85cde83ae77ac343e9587747f4ff3418823d04503cc48767c451c88c41eb1d270b3c12acb19398d6538804751df5613425642f72010e8c464b85425475b655834846668020ed04622a3d57c091abc9b5ed5c0e5f02db9d6f6139afb25af77720e0e90ec4e2d5a065fc5ad0d75eda566cec471794976a357d0c10c7ce984cae171f116af609fb2390377c6c628a4291fdc8b21fe6de120d71e8ada8757bcb818eceb3c050796438e091a977cb6e4a0914acb22e1ac8ea518710c01a19063851c144a11feebf707926496f981091a90753ce6a52b3def801b688aa6c6d56fe01712a7f14eb8ee07d907c2e6522087b19ea059ae27c5904803045a823f60559db09a6648a322250d4b834e4cc7faa8e0c212abf79fb814260f24ac10a36192d5f4fcedbf76536380bbd48acaf6d9f9a9fbd6c86de493d852d5b59c7f9b6f041f4d6e23dc70ef0a8047819a6931091e3f1268c33de48d82caa3248c6e18d431a3f358cb285018a26799ac16104c71201b22ad8ca0d44d24f23058d176935726da0c00c1e409ee8ea437d72b980e30881a7d7b894f373bc7fedad49af33c904b2f506e7760fb21bde47a035628910705005481238d4b331c80036934ced109702cc30059ce140048d1517828c051ce694c87825488f125bae0e8410c769208eb34322303da28e0807e47c3bd7ff974fef5afac3fe6fe77c7a67000126ac8c124d3c9282db6456cd5aa558e18d4b3bb1c0281bcd593ba4f0bc26794ea64fd4b5d7433e6829f40a38737790b7a9f91f1d273afe0ab50d7bf9b3cf6c41bf5af2a1ff77ec87903df2721fda5c46b51848e6b786795bacf3849352288d5758b9200030c71c76615ff00c3b0b4721fcc4fd5d8d1387ce5c2f2790fef97bd6d3a3e7c070426b749fe6fbf5bde7a69ae14ab15f2829c48f4d3868658d5d08ea34484b9bbfa4e08bc8c00199c77e1bab738af15d4fa8e34cad3cb120b74f2dd85132cd2c85e1d7de77bf279707be5fb21e225bfc49e4f1ae7e0b58c53c16509826de84a569c88582ffaaee00ec4a04c928856599b6b92e2bc79256f7d6e04d7983bd6c961910f060456d471eb191ff36dc09ade474fc228c071229e379e2863b74b6deb301b1c55d493487ca392f628dd4bc4ee1430de08a3f49802add78723636d6b67023e1d880ca6902a228555190000c001c9b9edff003e3f643c4310f661c7937cb21ad8902281d58003936cb79129adf096f6989ad8b0bb1f42935be78c77bdd71281ebd61fe6de411e939578eff0ef11027af67bc52bf0c69028eca4c47c3b41ac5a3c76f5726d4b5f8b72e696cdfecc7f643c4966f726a7276fbdc0af1461c9bef7e095bace1fc95bace6fc95e3df7c1077ac25bc972860c7de6a426699cbf127f41fe6cd863983da3ae86098e47ab1de28eee9c324d3bf831c63163d66adee2cad615048c83cccdb830ab9bc861f1e212121fd2d89152cab77b66b7d732a043bc97393510432900ee208e4fe2da7bd5872380114ea2ef67dc050ce6630c4789d773f64362bddfbe5c393aedc7b53544269d495925c35f17ea4ab52f6929cd820078a95a903c33bbca8f5e2c11afa940adf105f698568b8664333ca5dcb6fad076feb7ad076feb7ad076feb7ad076feb7ad076feb7ad076feb7ad076feb7ad076feb7ad0b6a3897a7323ca71c386e03701fe7030700956de29036a9cb1ad113fe13d688b8fc27ad1171f84f5a22e3f09eb445c7e13d68a98000924c4e065519f9ccf398c9236226c0bc9a42de162095477018fa298b493ca5c93db5a3a59500c03ac6e4103850a46689d5db05deb9c645684779371762e7d94145ecec90e3a8c306e08958288e3d5b6b54f0df0a9304e723860857c0403127ec7f9771fef7243ceadbc68c701adcd9873c48ace6794461bde69716589a48cf53a6751b4bf369df9ac372ca4122b7281eaaf1e58c7beba9be3de0f72a2b2850e43e0050c80c0760ef722a8edda780a8e46a250f9d4411bb783d170aa2adf5bb4d0c3d0a2adf5870c29b06f20e47bd300a379c855bb4ce4e591389ec02b44cca9e7848ff003d6899847bdca62bed251d493c93d29003d433351be14e55ba9fbe0fa551dc9fd0d39f9e403e85ced923e8b15826beb58ae5baa179006148a88aa1555460001b001440bcbb731c47c803367a95a491ce2cee4924f693485e491c22a8de49c00a2098210ae46f739b57d6b7c6ac609e412ce019103e035eade38861b11428a0b71a459728c1ca3ed7ab894ca63c628df692c701c16b6cd772bfc13ec79d486f247c1f761390ebc9e3c122fad48af127435e3020fa4615b559391bbb9a72f879a9433545f5e19f783b1bbaa1928f59de7a0f87c4f0156a4f1ab4c076620d363d6378e800d2b782b4e706cc0ab78fd2013eb351043d6b951324068e47223783d47a0d8411e3ea14800c3d2789e40083b41cc1a3a8e33d5a1ab303803b35bbc1c06e1bc9ea14c6df4746d9ca7e09568a1fc699b391f89e400822a2582ea15324b120c1250b47bb53aadd089a5b991b5005189c4ee5a98cd29cfe6e87051c5ab42d885037c086a316175b8c5fb33c52a22303dcbee237329de288208c41dc4729dd89a432beccab42dc08bca30b815f46ddb98e8b149a190362371159738b83a6f4719303d02a127961b795c807512670acd4ec634511c280e2f21156b1411dbeb8895492707e4b459e38ce054ed50d9165eda99258255d65753eeec237d6c3231afad9bf39ac65bf6fa3799331193b93ada889ef5bbb08d9842779eb6a39cf711a7c5eb69b60fed92ff63e4e62fa104452ee3e6b503710a64b8324b5f27e571d66d5cfe4a18314472bd455b9209254791d304ec7ad1972d26e0c55450c064153700362af78f154e1c7756d62547c49e866e7c15eba63aa760eba40abd94a19778398a242ae6c3aa8607630ed1c9b14135980721d018a919d1fa390e038ee3d0dbfd8f446132fbc0aca641ed0e91c15462683a68e81873cff00051e71a89638625c1106ee8782b6d293c02d6c2cbeee5f08f72bc4d20f9cde67175a43d050b71182f6f36f47a52b2c0cca54ed054e0472ae2493ae770036b3760a884d7980d7b9718b63e679239224b5bfdab2a0c039f3c546639108009f71077a9e86c60451c9c19a2e299374225921990a3a366181ad326686d90ac56f75e203e7d416d18deed30a78efeebd70a5465ecb3696119986999f474d8eba6d28c4601d7909f9fde0959d976c68f21f7b5206bf71e8881dc3936bb337a58841586ac312c63828c3ec96c67b91ea7d7e440434ae73f38635047ec8ef3bd8035e4e3e9271e5390049ec143e8633b3b370a0321cbbe27aface4db2300780adea1bd79f4768387aabc650c3d231e5d80b7c7a5967dd56f1d104bc920527de49ec5a5ee631dd36f773b58f477594bf96beb0f2ed965441c6560b4b82448a8a3a828c0744611dda24ded628dcbb45bfc5fa110f9fda82f11dee37a51fa48f2ed23a1e3cc01e0eb8743200626b98b7b247282fa742e662323cca0c3b9f38d4f0dda2054820883450e036bba6f63535cd846729a1b495a3494569596549e510dd58ceed3ea2c9b240cf895348a9122992e2dbe2e9c8b8adb00b10f3db9738ed1e3c7ff10d76fb27b257c7f161e4d92089bd6817bd78ac0d1cd46a9e20f29eee5387a2bc261acde9e87d591ebcab7c8793b6b7000747cb15f56397b7de71e9752fc6badba3e3c73fe4c7a5b5ece61ffad6e707d6397f9c83f374baa54aeae4fe2db49eb5607a2b85b5dfd32f07c9ba031581cbb7608d7a102cd7f736ce5cbb944b789814e71c8f75142d040919d4c9715001347000664d693b69af1223cd448e18990d48cd33b9767271249af0e6d0e0b71953936cb3c8790e090c4cedc00c68624931a7194ebb7d91bd4854ec07366e005595e4fea4ab56803cb0a1466c7907d2496c817ef0734ab171957f4a0274404b88df5c802b2917c21d3193020f0347047391e5d8b863e9e8f8cc05793adeb38f2750f8f4b7b135e2a28f50e4f208f49c856d77f874b7915d47e3d1deee3da84f480208ad91cce89da14e2a797645346ff86f8d1c41008f4f4775cbd6f45e4382cb2843c25529d119db5c60784b5e320f58c8f2784725a4c26bc0043d917406bf3da3ad1f5867cd734581463b8b725c32d85b486208a72919722c79109e71c6b9f25066c6865a9144393c59651efa75550312cc400075926b1984b280ee9b1cff00c6a6444810bdc4ce7005ce6cd483e616f6ad2194821a57d603ec79c238919d8f52a8c4d3b8b389f28c1dc7358c568ab61875a063eb6c6a348d46a64800f064adc6b7623d4c0d6f51c83082e30910763f78f095b56b6b2293c48e4f10b7f61d1de4d78aaa3d430e4ea5fcdd2dda9cb9b390c7e0056d51d2dee2beac7477dc47ef5c3a6b8c572007fbf1d1c9802381e4f15fe228e25ed2227d9e8ff366bead3e1c9b63991bd860d5b19430e0463d0f121128e3190f5e2b11c9e0cb3c487fada9404450aa37000600742416f2bce6f1657c84d06a000276a5486ced41c8800caf449662598ef24e64f2261a483e3393bd376ad6d9af516bc39e648978b90a2b4e409193b124912be50a14ec2f254a04a410d3c99cb27620a8dad744400b3f565be435b024517d8fdbf3492b7ddb7b80e4c4bd9b3ac8fbb13b85661e3461c18035b44ee2ad0472988736c0153b31188ed1c9e43a778dacc4fab2af15141e207279df1e8f9bef3cbd49f1e96efd1797354397a321d3f2eb7449d1fe660fcfd34c668539f8b8c75e14670f41cc726e20d6e8e44f62423a3baf6bead7e1c9b98fbe8e25ece06278a0e86c3a3ee7f21af2f93c18ee227f61e8e208e85a24d19cd71c994f583bab4b054f2274ad2d88f2204ab4486eed54951be71d4e6832cb0b91221cb5976321a935e19c4b3d0c96e39dfc205f930b9d23ba10724fbe6a795203e047b091d48372d44914496e63555f3ce15b6e6ea47f42e09f63f7dacbf96bc4bbfccbc8073e79f920ed753ae07a457390496c4a23942721b88a8dcdb231c643ef7ac90c76ea3d5a9c9e25c15f6856f8d4f4fc5d5fee797cef8f47ad3e3cbd49f1e975bfc393c9c0713950ce46f70e9f94d5b917a3ba78bdd274c0cc56412670bc368e4ecf8d75cffee9e8ff003b5f549f0e4facafe420c7d81d0dda3ee3f21af2f93c47f8d124bdaa06e28350f2b0550092c72000da49ad1f01b40c425d5db95597b6345cc8a91e28c30482ced6761180066eccb8162d5a7efad2c9bf6b0e2256c46f8de4c4a569e37b6d7b208b9a9ca99e076c95f15f12a21ae0637710dfe78a625571d51b86399ad96f68e6b19266728f709f08e88b9bd275b039a21fd4f21eeae27c7d1150c1d2d90bfde6ccfd8f03e9227400efc4615b8c27e239364cc3ff00786b47299b7cb1931b9e256ac521c7c26daedc59abc94ffd24e4fe0dcc4ff14af270f5123a7e206fec390e40127b00a19127de71e8ee3f038d1c980238118f27527c7a5b188f78c393c6907b857900fa4e67a7d6d5d43a3e2cabee6c6bc91d3c85d41139fc87937b0143026dcbfb6c5fa3bef2bea97e1c831791c003b5885159086148c7f4803a0d834f6b2229ed232a18323e2472793adea20d6d82ea54e5b39aeaf2788198a1089046c7c766ded48a88802a228c02a81800072491b4d1a611263e3b642a679276935d9c9c49343392dd18e3e78c6a258edd2e9d551760d5c8d161717ec90965da231b5476b5287bd9541964eaf30729d7b7b5745938277727d91dc671ec4bc9e33c1f9ca72ee6992b63c48ded00686c895fd9606bc5623a7d9ef38f21eea43aa28774fdd1f4f44774a3587a28f7519d5e4ea1f1e96e381e20d1c9802381aeb35d4074fa87bcf4b733578f0a37ac03d3ea952baa81696595540ed72140af06189631c1461d1df72f5e42f20c60b2066f48c93a43082e48963fbb2f26f46af12e11b948f9c8d24243bc989d07355b055d3db5844e63fa33834dab4c49ed34859e6940e0bbcd6023b5b627d85a24b3b1663da4e26862902b4d876af2b7d330290275b9a4267bcc5612de46f6fb23fc5798fb6bafc9e2fc51c1ad8454e81ba89ceb6c57e3d4c86bf948fdc2b7dacbf96b749f11d2f24d758e4f050e7c4e668640600750e88af024380f883de36e18af11593a12571aea1f1ef1d683dfd2dcff00115e3d8dbb7ad074febe4a38011a9351fd05ae51f6cadd2f2e7aea1470661aabc4d2fd35fbebf08d725e92e76afcdca7cc7adac33e23235d46bcb87930a9523b84bcba7d20efb43ab9ab28c43b39e9f12c6b693c9309afe47314bd70f99593cca204e329a04924003ac9a618c31491fb2c2a5403792c00ab95b89f745090deb23214df37d1101e030f213f56a884eed2ac3ceec86345dbabe57d91d93733ef529c9e2cd227b42a62977a46dd3bb5daa81016ad2a52f5d43e046c27ada8492491c88d048e7164287613bd48af143afa98d78d1bafac115b997bc78a3dfb856d7240e9f8719cebc2c306e22bacd750e91c1d4e270f8d295740030edc71c4778f14afb863d2dd20a3b2d82fb04af4febe4a5222014c8e762019166a4c228976ef76dec7a5e44a7909116bfd230dca33734a1238d15157a80c80e90ee2789909e232a184b0c8cb876ad6e5626b7cf18e59e4b4ba9000cf193a92eaec12aefab34ba4dcf0c828c563179cc1dfd0129e49a38570ba57fce2b16b49b04b84ecf2aa40e92e37543145b812b708bbbad2ef099e52e539baf942e4764541f4d5fa6c4271850f9d520b2d151216080148822f929beb38ed23d48bb5e4fb23b35223f8527211cf24a258f1a8c886d808adf611a8841232a38a380ca771046229738db9a978366b43088c23daf1a8ee24d6cd6f89e9f8fac07c68e3982d5b147bf79e980411811d62b130486981562c41aea1d31836f5ef1e283ee1874b7607df5e2493affefd3758ad621299a63506a2ed7739bb9eb3d3f2261475a770065995c6a2c3485d0cc1db12791de0770e5239fb2415b1d3003b4e4450c3e7373238e0b827235c5d4d0fed52d6179f9afbe501c2aed34768c0e56077839d9a7d5c8b60d805153e8d7881d617ce8c091e4989685b09ae549b4b883109294ccab2b6c614a0a90410462083b41a8fff00c3676fc173baa6675823e6e304f829896c07a4d781042204ed796a6e7eec0fd8459b0fbd40d9e8d73bb14423b5b6bd2fceee478f20ee01ec5a6c25bb3cd0fb9b5a8613dd63732ff5f823ec8ae769390df726a7c5b9a0b2763ae47917192d889d782f8547e96d4985fe2b5b658885ec6198a9e380c1217432b84ec615702e2ea54298a66881a860d21c7a7e1103d62b377c48c7bcae23de0f58a60f1861fb8753fc7a5e413eacebc4bc93bfc61a48667d72e4280ac2a45babc0414f222ef2b8c53c654f6768a04b89c04f3f5b2523b1ab6416e91fa46dab95867ba9e2b64937a09982165e150848d3d6c77b37593c831312770be53b64a2ae1a4b94b8490b1ec3b2b63a83e8231a895ed96da46915b610a286031c8540eb777133bcf32f864b6e4a617574732873453fa9a000000006400ea03933b1b33839dda919c5cd0c00007d918f5e09a36475d991158de58c9b800feda57c9e6fc07ad0a42b020836e2a2304970a0146dce06baf202b05de12823d4d49acc37b778d818350ddfbd767bce3d2de8d5e25d21f697f7a4fa7b194ba9f286e07923134d6f7af676e1c62218e1dea0ef6e4589e68b29a77cc23f920569396688b06e6f254c780a525e695500e26b622aa8e00614d83deca13fa1333409662001da6901bd98032bef5f3072c83e79720a275a2ef7a185edf00ede647b97ecb0c181589cf9c9ddad10526895c7a4634b8bda481f823646b681aadc454a311b867f0a9703dbfe407646c456f900f574f7c2927b048fdf1c88aef48ba24232005b9e6cb9f39eaef5ee80ce2886bb25124c92339e2c71e492291c168a14da62e46062b18c43fd6736a18c76e0ceff00d3cae0c841e6a207ba7351e366af8c48764857628f317ecba82fcd978bb244cc51eeed25c8798f4b8c72c6c8c3b18606a658e412ba9d73aa304a77bc97d98c5402d2e4668c9b0f630a0566898ae0db411b47effd587acd78cccdd3d93c5327c1ff007ce6e78af35a5309ca4b7964f0de1a8e6498b12fce821b13d78d594d3c8c7001171a2926e9d23ccc344b594d82dc47f0614eb24096c66420e4f9620539696591a476eb2c713569249cf44106ae44558dcd6877123e41c0333d5c973b7e6daf8fb6d585ccea02476b6bb1690248514ba838804ed1f65582aa824b13800050f9fdcf999442ad8daa5fbbe2854a28598ee07703c8b8091817fbc94c191d5595b68208c41e44d8447391ee6ade33e3bc7efc7377f70af207ace7d338219e30c7b1bb8fde6548e28d4b3bb100281b4926b41a3d981dccf7929879eed8d4026a7bbd156a8fa91da5b4815dbadda415a739fb67c43a6912663179c8c302692c748e8e92448de748023db163802573c56a2445c3208a00f7522b2329054e6083b411485f46cadf8152636ad3ac80ef0066528652ccbae7c9419b1ad1f6eeaa0280f1ab6000c378ad17a361551dd48d0c6a0542b773f54202454e6c6c0e676c31e1f17afa6b5b0266d72300c4649f659f563cb9ff003d8e78379a2a1135c80319a400e7e6d7ed2d64c1bee3d1c5da30b27df5c8d0fa48073f1f14a9cb68eb4952020ea90bbc035909a30c57c93b08af0268d94fa686ac9148570ed5381fdfbc04381f4667bc78519f71a20ca63e6e5ec923c8fef1673dd5ac1a4a237f300041ab16d4277d00001900301c8fa90c111773d8370a9dd6dc31e6adc1c1105787259c7aff00780c0f222340f1b0903663577d2b2da73efcc86389098e58d4821586254134994601cdbbbab537731c84ce084abe7821da237fd23ab612cc364b360ed4f84f778c4bf77c634985c5ee13cbc3c41f65b64eddc13e7c7c9186e79d226ec0d4fa96d33878e43b11eae633ce40cb180c0972c30005651dfcc4467ee0c9ab292391ca0f397271c832908497b1d6b630047ef8760cb89adb21c17bc6c6047ae9fe8ee7178bb255fddff6cb6f218facb05dd58156b64763d72366e5a98000700052246884afce9d4331ed415a5669a19302c87000e1c2812490001bc9ac9e1b540ff78e6790e1737f8c4bd89e39e498db68b840110d80f6aa6f3d6c6ad873bbe67ee9db908000249dc050c746d9e6dd4513f573430007d96c9e2611487b54eba1af0668837e845783346541f24ed0694c5756ecef6d3264e8464e95a6669a007c01184a896286240a88bb001592cae39dec913f4714718e68d5d78118d600c88750f538cc50c24899b23b4107023f7c3b0f75c68772a00ef24acb0c8ad88dcca710688c25405c792e3261fbb48d1bcb243073a3c4133842d4f1db58db4631663801fdc9a4ba796584c4b3e011063cb015b48887b746fe337210051c6da0c618382f8d51e36a8d84519d9291400006000c801caffe2eec60f86d086947cf2e309673f04fb2fb2688856de8e33522b2921766407715c9c72644c839cfbebfa38a38c53c2b22f06e40448c9ad09ea91735aca6b562c8a7ab1c18720c22bac4bf648326a3932820f61fdebc33928a1ddc9e0e3d5de862ac30a6c2ceedc6a36e493f764d786642ae3fb1dc455c4b7fa2ed4608c83bb1db328a19d594b3b93e22920713baa1d494286c8e2083bc1a7eee305ed0f99bd391f0babec625ec4f1dab6cd2aad26ac5122a28ec030e5c1a5604431639bb52e20c85add0ef7dcff6650aa4ee0cbff717f4714c0c72c6aea7b186228774c85a33d4eb98a6fa5b562f083b909cc548b1c68a599d8e0140cc926b47cf731a9c39dc42524b124ac1ee2170010c727a70e8eaacac361046208a1f4a8a6584f9e95b63387a0fee0759f728a6e6a3dd995157a3da6a9b5f83d5b96fe9fd56ad88e188a2c9c455c27c3e35347eb152076ea5a04420e4360e028640603b074580d6380e27a594abb0d6b811f7097447ba4ad2d68e371122d699b35c3ae55ad2bce9ea86377ad15772f6c8552b445bc7da43c86b48bc4bd48a91d69db9c7b677ad3973add93bd4648d9f3a0331f7ea6492270191d482181de3bee8cb5772712cd1293504712f928a1450417d0676eff14e06b5a1bab59b11b8ab29a904681099f58fec993c2ac4438ea40a7746b4e52311b847c3101daa549508c991811eb1c920b8badd121f7b1ac56c4362916ce74792bd4951844401555460001b801f6654197575e03d522e629b09ad589407c83c9888677d7900f548b4f8c57324198de8d9d5a42ef347af23ba06249a80473479c90a6c75eb514ffe26d010e87c8272228578093cca382bf2782e4e347777c38ccdeeaeea4638853981d1453d8403f1ab75f465f0a0ebc0d4d20a52e7cea180d83701d13800093d40512234382d1fa5419ff7e9460f9c3235238a690d438f126a18c76ea8c7a29c1b78a2d2e8c9586ba7579e95289219503a38d841ef7835d4bdc5bc4779a605658d5c61d4c011cb0612a0ff00191a6f1e5d4e56daf0a1957eed2169a79028ecedab318db4411274ee25ed38d69ef44a5e2f7c75a7e31176cd2cb45afa7198328c13d8a197d9b42b6978c5dc0f54829c32380cac3304118822b013821e163b9c5404d8c7800098f629c460d4a62b8819f99d6f7a722616ecff0048836293b54f9a68196ee58b111ee898f946b1e76624e277e27124f26065959517ef39a468e789ca6ab6d046eef7b1413fd8567831d5e3fb86609ee986fa19eb12cdd7519f994d0426541b22765fcad478aef1dffabb93d46b6a032db76796bdea5090c08599aa12b616ee90c6372063928adbf35553c53b8e5d53dc948a33b6476dd4a06b1270190ce9089ae06adb0ea8f7bfda04c6ea0fa683acb2d3fd3da6401df19e5052eadf069b53785f1f8ad602ee201674f83546248a452aca778351f396cf898643bd7fb8a2082311d447266b0334a7ff00125467e7b02fd2a0fe34628fd2a8cfb477adee01af271f5e7df88000c4ee14090c702dbcf60ace43e1357946a3578e4b2883230c410506445069346b9e262ec6a3dd61dd26f1dff6492853fd6bde480a01249c8003693448d1f0be2f26e3d729a8b08eded4c9dae6321cb1a39db5dcb1fb583f230545058b1c800062493470b1b7c52dd7e2f487e670e125cb79bb96942a280aaa32000180007da15c6d65726740328d9b686ec3575cc49862d1b8ab592ea539066c552a53636673d49314f54753bdcda3611c8c46af147a7c63907a54ef06b059062d0c9bd1e90a491b9518f20c92d881c647e45c2d9df19e203f64de5703473f197783de77156adc0afa41e81c80c4f60a42f106248231001a5689bd629c30ec3d27d76ea5a1cdc18d0cf7b6f346919b549248a06def2081139a720870836a9a40c8c0865231041eb069f5379b56cbf0eada4866438302a5483da0d4818767ebd29813d4b9d584b2b0189d552e401f014c59d5bdc7a3b2072e7fa13bc8692495f9ab89137f9829849752e0d712f59ea14a0acd13c67830228e051d1fd8250f23f65e4a3fdba8cbcd2b84451bc9380a21e77c1e793ca93ed122ba329565201041c8820d594b19de2290a2d456968ef885966701db833d5cc2e0ef5753f0349af0ce855853b368e9ce21f7153b24a60cac010466083b0834a7e796ea78ca828e12c71b71343392e845ec0e44574742acad98208c0823a8d02da3257fc227c46a3c46f07bc6c60456f24af11d03f4920c380a1ddbe6d48bae09c70ee5aae0a9a6d7038355a0f64d59afbeadf578254faa3a89fd050e71bb68721eee4f85443e7b3a07b890edc4f89c05208489c09826c12ee6ac927843eaf92778e4b28e52060b26c71c185695e114ff00f35ad1d24e9d7161356869d0f9d048b5a22663d91486b42dc20eb78b9a1eb92afa0b74fbfce9a796fa5f3fb88e8db59c390545014b93900aa33635195b2ba2658beeb6d1e8344104620ee2394ec190eddc28673630c07dee7bc1325fcc4248f1e663d6f117cfa01f494c3bb3b4443c81cb909cdc61feed383a4a74217fd15f2e989624924e649351613ca30b543b513cbe460389c2b495a467cf955688c08cbed0c78c7278246d461e303578f6d117c16e54120a3641ebe550742014c2795290df4719c51b9d8d88ad092c90c4085d784be038a56802beda55a35b73b9cb196046b7660056d9b5e66e2edcb12c90caa55d1b610683cba2e43c4c7e63d1e23783d03bab24c727fd48a2082311bc1e4ca55eac89c378aee241e36e353c7ed0a3cec9d9b2b1271c541e4246b756e22a22e840c1bac761152853d4d4711eb1d1755e240ab85f8fc2bbb8124129ed110d7e45c58dbb3afde4cc56918e078ae1cc41f7a35699b5627aa551522b83bd4823ddd2d2516b8fe14675dfd4b563cc2fd74a03bd5c4b7096439e6790e38c872414752553ad04bbd1ea060149d56dc475a9de2ae13d2703ea353a93b954e34a62b08db1966dcbfddaa2090c281100ea1536bdc118a5bc79b9a8e382e6325e245df1744f3b7f277124a99f35e6a79f404ba52518804e3cc86e8202ef0a4ca38a988d3bcd3cce599b327135a1a6b908c1b51a2728d86781c2b479813b20893f3d69b308edb9fd22af94dcf4ef94302191cc950931038dac6fe39f2cfda3c12e2305ade6ea6ac63e69f52077f10f91ca01c6b44d94a4ef78509a89638a350a88b90503601d0852586552ae8e310c0ed0456bcba3b78da61ec6f368e0e062cbca85e79982eaae649639014985f9eedee63f0d5da90cd66cddc4cbe037f634d8f58de391306f296a67c2935986f6e5db862bc686609d507de294c67cdabaf79534bafea35687d835115f401f1ab8d51d45eae8f68028c8de9a19436b2e1e960390644107d358fd0caea30f35b56a475f51ad25244dd68ed19f756959651e79127c6ada07e309ad1369f8725430c3dab0d6969f9a3b503eaafb294cd21f50a40249701828ebcb0e2687f8a9f096e389d8bc9671cf19dce312bc3a8d5f5e41e664f52dcdd798e428a10dada409d88882ada496772544fab893ff006d6a637372e75cc18e3e991aa211c06502444c9049fd9e9b18a64040debd8dc840500924e400eda0f34f2928d7117c22ac26d24e336da21ec4e8e8eb6b89634d5579630daa2ad20887547185a1c8fab147b06f763b145295d1b136013710b98892902a200aaa32000c8003ed2205d2500ee1b74a3c8358a5ec38a42f2645f53c47ef201520820f6d0c1c776f663e31d298a65c8eb0d5d9b981a3bb05ed3498924ada03ef93922596270432380410771068920666d09cc7fdb351343329c1b5815238834711eb07a594ab99c37e1be8eacc3d4dde369b56f73f2ec3713ffb9de086948ee56a3cf6dac4ff00ee1e86400ac2faf06e43f46a7b5aae1ed6c31c5108c3f0d2ad421f1a56ce47e2791318678ca9ec3b9a9f08269b089b707dcc3b1eae5218c7b4dd8a37d40f6fa37c73facad4bceddb81cf5c1199ef332c7044a5998d078343da9f617f591ea211411285441f6990ae928b3655c8cc3f47a6e6f4943902d973e17e0fde80b6bd1b2e107e71571cedb412932ccb9a08d4e048e3481228915114640051801d0879aba5f02e23c9e93e75620feda3cd70f386ea608fe49e91092fb89a899946fdf532e3e49c8fbfa5b278264f83f21c1638d9cf0518d6d76c7d2c493d29556ad649a57d982e26b096e310e96db557efd0e59fe7574364307ead486c745b1ed44feef4bf3cbcdd2ca324fb8bd18ffc659025f576bc55a6ddd2d8aa98b1c64356a9042832551de6658e1894b3bb6400140c5a2addf12c7f3bd441228fd6e77b37da84297f11e7258d32326a78ebe7d388f4a42380980ef3211797aa41c36a4549fe3ae8092e09ddd49d218d016375e60fa26e29568cf6db04cb8bc67830a7d56ea6fd0f45030ea398a7319f58a9cb2ee00e23d46adb11daa455a1f41ab7905472fa850611c732193ee1c9a98156008237834d8493a7311f196b5b5cb127015afeaa127a8540c789ad1534a4f911b3d5a1b543be5222ad24f336f8a0c855945029da54774dc4efe470aaa312c48000eb24d39be9c6e84f71edd21b2d1b2718a32bf17a1f3fb91be518460f6250000180dc00e90c4114a4e8abc39a8f237a714a70f1ca8ae8c0e2086188c3bc4ab1c51a96776c8281b49340c7a3226c59cffb8f51e006723f8d23ef63f6ab18af623af2451e45c8de9479ad2718c063b26e9b610c11976fd00ed349f410cd8c29b8bee51d89d07d58a18da473d8a31a205b5c5cb9b38f5702915480336c5c462780e5456461815600823a8e358d84fe66719e2956e6eed47f121c5c7a46d148626a7561d871e92835047ec8ab78fd42a255906630a7789ed97523982b3875a8a54d196e712e7dee6b4241eb6ad076d5a0ec87fe306b46daa1dc444a08a0001d590e5d2702b81fb353aee7d0b5a1649a43e034bff04ad226d6dcec89cfc234a80dddc0fe2cf9fa9686000c872c8864400b28604a83b311db5793dbc22fe24b8688e0751e95a5b46385be95404820ee96a5592375c55d48208ec23946130eeeddfa9c5129716ccfcc06ecda9d3992286352ceee70000a57874646f8bb9fcf25276cb291ddcadd67ed60e6b48a60ce89973ddabd4f4443a453b8477c84dd8de7f49c9026026236197fb252e11c28063bdcef63d089e7b8b8c26b98e3f216aea0d0691588902c0824711ae0000d57b7d7d72b989249dd685d5ecd1e4eb6b1f3ba957245c28eea0994a483a1a3e3e7774d17d1c9eb5ad281baa29f23ed8ad153141e385d71ed252b21f58a993e07dfd3401c9389ab58a10f044ee576b332824b1e85e4108ff51c2d5fb5c38f16dd0bd682777dc5f176f5255c9b2b63b8b8817d94ccd5ecf76fbc0fa34ab086dd07908013c4ef3d0b8c19fc08901791f80ab0beb079db085eea3088f44fff004ed2985bdef98fb03d007e80c89c62c24ab34b4d1a6044b9bc9d43b48ca30610ad1974a68a95807b57c9e363bd690a12a095247724f591d5cb949148a27ec65d8f5933e522790e368e8dc2c3044b8b3b7c00de4d03068a85f125bf3bd458019c8e73791badbed70106945cf1192cd5af14f1bf369712fc24a20823958a92080c368246d15263392ec9332e2b3c721a02cef48c3027e8dcf9a7a17297179793771228235611b16b217568f11a629757d70b6b1b6f1af51286d5066937c8fbc9ac20d2765346c932645863b1a9013f368e458b66324b860b56971a2e77008170b825488f1b8c55908208eb0474344db34a76b8408feb5ab8bab57ec21d6b4bc12f1d684d5973e06f8dd1eb415d0ed303d58baf1c455b30feaa81bd75115c09df5f27b1314289899bc815f2687e14b3568c36ebdb0ac5ef92b4e9854eee7c8f7475a72699faa24fd5c9ad1e67237cce5ead6181078b12041d02000332720053c97f77b0416839cceb44c56364621cc445f5a6c7ada91862919d1f33a17454f32b465d6906864d7429003a8c37ae34586e28e30786419a9aff00e75806b59bce4d80d40f1986e6658c30c314d6e85da449b81cd9bb106fa845bd8b82ae5f3924152c89f3e08e96de48dce7b4f4270aa3244f1ddba90517b5d0d0c9e85fef254023857d6c7acf69fb600417c83e8ae07c1aa191ecc3611c9b4a0eb43bd2a749a19062ae8710472a8598026de6df1bd1f985e090ac375b63d63b9fcc3b9aaddaf3476c4624b2f147aba025f1e0908591395e44b9b0983c2ebeb2a41a84cb368dbb4bad41bc255f4231505d1dc2b21ea229c4a866596fee23cd2245a9c43651491cf7670242c6b928caa4b1bbb5d5de55801f115313a1ed2f2436ae76044c4b5685b7bfb096593515088e7540d5657b61792b0448e788e0cd571189300750b00d81d9974914f100d58dbb718d4d68db5fc24ad1d6c3844b56d1a81e4a81f0ef17e90cf71e006070e24ec14f8165ee5b23b4646a6e72f209a6b7958800947a6b6b4bbb0bb92291c8c249057c9db89ad39c025ba9fe89353794ab1e7a08d972e684a4135a4ac62b72808e6ca83ecad5abc1617aca96cae30326aed7ab60b79708a92c989cc0ece5b98e189466f230502acdeea73909d909f612afdda793f63661f19a53d47722d5b84b40e5ade0dce7a0c25bb61f476ea73e2d52491d8e38a26cd71e4c6372d40b14318c11146007db2803aed57193a1dc54d1375a2657fe83ff0007a9b09140e7217c9d31e5089a46004c326e6f31ea25e7e3c6188cd987ff0049c355d1b4b85cc4258ea7a1aac659631b25d92f10763d5f24876bc7b1d78af2e8a4131cd9a2668b1e212ace3810f85abb5b89389356654dcdc1b78629d36449d8d560f03139882431a9a80422ea44b58a31bcbd7c96b85b4822082e2d4896984a227009742191bd34b2b416863b788a394c1c57ca2bdd5b643235add1e762745a8f51ae21d665ea6d86a196692501a5e6ff0082a4e00b51c88abf82d836ce71f026afe0b80bb79b7d62288189e189e520725cc66e1103b44186b853b091b40ad23ab3c27078d11988a9ae610f9092588aa54abcca44642e0e23540c71ad292689d0e5c8b7487f6d281bcb56979f4ae8d461f3a82e73741d68d40c96a8e9ceeaed30cf4f25ff00c9b970305dae6f006a9d1ec34fd9f70ea715e792ad2196ceff00e82432262ab30c8355cf3f71b05bdb0e71f1ad026ceddf010acc439910edd7535a0edb9cc7782ca382924500140c00190039278e189462cee428ab66bbb827012b0c13820abf92087746737e0a9b12add224519b9c1a699b728340ae8d85b058f71ea8969155100555190000c0003947ce6f09d4e757bb44ec5f2da899ee5db9c16f27c65a000030036003eda44b244ea55d1802181da08352ca353336e0e2e94059df63a9ae728dff00e068820f200ba4a1cd82e4660b4e1749c03f15455a473c27c5906357cf04a87110bbfe47ad1924c9ba5d8fc436c7abf4136f864ee64e8e889ef74658399e448302e64aba7b3977c772862ae639a28f33bc586ab6aae25895df5f286f347ddddddcce426713d7ca4109b6239f8962eee787ad1a87376965000a3b17200769a5c7486924f9cc63eaa087bb44a6c79cb542788c8d08fe726702c85ce50f3350c36f7514e0c8237091cb156d7d310721230be82b6acf6cc4d361a4ed00e69c9ca7877115b2e3427e47a89185e68c4950b8c706402a059227423061b0ee23a88a72f368e3716f11f3051c9200878ad61cdb5aca1f1ead5a04f3b15ca438f6392951894c01ad268df3c9371a9b1b68ee44e2da47c399714ac175d24c632032b2f5120d68f8a37d865235a43c58f2dec50279e733c06fad1b25c4ef92cae0fb9056907822da232433f054192d592897673efddca6a511c31296773b80f89eaad787435ab7b0a7e323d442382150a8a392e5218475ed63d4a379ab5920b1d923ef65eb91a80b8d20467391927627db802dafb74ca327ec7156cf73618e087f589eaf15f2eed0e4e9d8cbc80c7730307b848bfdc14512fe1005c443f38e482396da28d99d1c621b0dd4f1d8c692fd0644a1739951d8b5035ed88def8ca98763ad16b19ffd5cd0f07a9e39633e323061cba3a09c79eb89aff0b6ef03c49a98b6a6b9c4d36b8823d42d861ac76935692cba98c178225f1283ff00f4eb602eafdb301ba92b4c694b40508d449f14a5324da32ea64095a3226219d191cf77191e72d69099ec6eeed2096ca63af936f5af1b4aa9e4fe6e0add1dbb7bc536a696b3b68a781c645c6ae2529352e7e693dadd45e448a1e8851716f3455a4edd75413a81c16386e0054450694bd79911bc8a822bed193ca64364ee11e16f30d59c5a1b473e1cf9d7124d2ad26ac3046110762d5aa426e266965d5f1ddb324e3cae1540c4b1c80157bf3a9f7456d83d68c78233973a8317f6ce4b5a5dccec3c0425dbd2ed51aa4b24856290af8ebfa38e460a8a0b331c80006249358a68d81c9693e32bd2611443363b5cef63470ac2f6fbb338a33e71ab9960b6dd1ec723cc4f1055b2c30aee5dfda4fdbab649a19060cae2af6557424f304e0e3ee355ab5bcd1e46603dd2254f1cf04ab8aba10ca686166f21d78b7464ed43e61a7fa39060c9bd1c6d5359bbc88d376bb780b471585336f298e658d0041ab316d39db25bf715a659d3c8c79a7ad0baebe594311357525a48774e957114d19d8f1b061d019efe48dd1ef64e72705895d6ad2f77a2a6998b48b0671b93e65699bad2b716e71839e184687ac2d5cc71ad85d73ec8466fc93471cad2c6e1a4f31b1a9512492044d738e00ae152077b7b78e22cbbca00b533c12a3ebbc2a31577ae771b62faba8d87875a2d6471b0cc4cbee6a00003203200742548d1466eec1540ed26b4889dfc9b7064ad0478b0333d69336b6de431f846951bdf4a3ebbc0a8523451805450a00ec03906135bba2ce47fe8f5aaace309506e91326a0d23c9204b865de7c8a1af3be0d712f96f5720cd862b04783486adcda68f2d83907f3bd0f9dde8d92b8c94f98bf6fad01970c1264ca44abb92eacf124aa0f8c75682d5e6431c84e711fd52a6e7ec6488bc2e87595ce18c6e289791a561076bb66edd18925471832ba8208ed06ac4db3f956e752b4e7004985ead1ef211bcc6271eb4ad06f13ef313fe8f57cd039dd3232d695b49bb239958d1ef645692b583fee4aa95a4f9f6ea8119eb42cb3b6e323ea568f6b584ef48b9a5f6e5ad3bef339a825bc71be77fd16ad628231b16340a3a2bad14d13238ec34312ea4427a9f74957a82f2f41e650f772ea7f77ad1f244876c806327f6415726eae18e3ccab62bc5daa158a345c11100000ec03fe80da73572764f0608f532ddda3ca135f63c4b4804504413891b49ed3de6c2de6eb32206ab036e4ef81d85697b98dbcf0af5f2987e24b1d5cbdc20f3e193f3d684e778db7eb1d7c991f81357c9aff7057c9c1edbd7c9c1edbd7c9af7486be4d0fc09ab41f35c2dff00592a76b753e7c31fe4af94cbc39d964ad333c8de62815652dd38df3486b46db4007908077ab7d7bd42219131035d2af5a67fa884e0bc0b55ac7044064a800ffa2a2917d4295687ff00c2b7ffc400461100010302020605060b08020203000000020001030412051110132122313220425052620614334172b1233034405154618291a1a2151643607181c1d1247353b2257080ffda0008010201013f00ff00ed59248e202390ad164d89d07d601362344fc2a0133faff9367aba7a76f8591854de505286c8c0cbf2587629156b65ca7dde879433d94f1c4dd72f769c327d7d1424fc59adfc3a15f8e0c136ae1113cb9941e50d29ec90087f350cf0cf1df115c3fc8fe517caa3f6344721c662605690a8b1e98a311f357235e7b8ccbc94b6ff006ff69e2c7a5e692dfc1bdc8f03af99f396a04bda774de4dcff00f9813f93737aa60fcd4784e294ed6c3500c3e17756e3f1f0262fc13d7e3317a4a7fd3fe954e395871146f159775b6acf3d1e4f3e7466de3fe43196323201905c87aba1dd99b375538cd1c1b04af2f0a9e2aec56669469ed154fe4e7ae79bfb0a8709a08b84373f890c600d90008f40c981ae75e75126a985fac9a689fac9885d490c32b6524604a6c12825e50b3d9551e4ecc3b6192ffc95254d5e14e412d3ee12a5c4a92a7964c8bba5a1dd99b3750d5d3cee43148c443dba46202446568b2c471d72ba2a6d8ddfff004a39e68a4d601e44a2f28a5d55a505d27790d2e2b88bdd3c9ab8d52e13474fb6dbcbbc499b2d8dd09658e10be42b457ed3a1fac02fda743f58052e2142616f9c02d750fd6816ba8beb40b5d45f5a0462f1b8e47c50d44a3d64159de1413c67c091089b6442c4caa704a6977a2f832fc96bb14c35f29075b17e2b11c666aa6b03701452c90989c65690ac3f1c8e5b63a8dd2ef7a933b3ed6edba8823a888a29394957e1f2d1cb93f2f54951e1d53567900eef7bd4a8b09a5a5deb6f3ef174f1cf9017b42a0c0294e18cdccf320125fbbd47df35fbbb47df35fbbd47df35fbbd47df35896114f4900ca046e5788a2f470ffd43eee804f2070251d5016c2d8b61377995760704f71c3b87f92a9a49e98ec9472585e16756779eec43fa908880880f28f6bbbb3366ea4c7e9826b180887bca29a2980648cae17588e2f1523581bd2fb96155d256445ac1de1eb7a9d4d045385928dc282308c44006d16f88c73e425ed8aa5f9341ec0fbb4198c62e6459369c7be443ff0060a2f470ff00d43eee9473481c1455207b1f6129e9e19e3b251b850004402203688a62626cdb4637552d30d39465b6f545571d5c0320f1eb76a637895bff001a22f6bfd2a0c18aa6229a492c1eaa9ebc29a37a5a2fbd27adff00a2c3f0739cc65a92c98babeb24118462200368b7c5639f21fbe2a97e4d07b03ee453c00f914a02ff006932c76b41a984229049c8babf62a2ae864a5848e6062b77b79904b11f21897b2eb1df917df15ab328a1761fe10fb96a64eead4c9dd5a993bab5327756a64eead4c9dd4ec42fb54354e3b0f82a8a8bf74795433bc6fe1406c4d9b2f2905f57017b4b05ab782ac41cb70f74bb4f15af1a48321f4a5cbfed61b4525754dc7c8dbc448a10284a26dd1b6d5061149457cf215d6f7935554d457090c84e77eea6cf2dbf158e7c87ef8aa6f93c3ec0fb956e1f05586f6c3ef2a985e09e489caeb561743e79358f25a23bca0a7869c18231c9963df22fbe29ccc628598bf843ee5ad93bc98a62e172609bac76ff0074ce23cd3669ea59b94504a595c6a5b65221eb3276767c9f408b93e4ca084e3e24b13a47aba5201e66de1514520d4805bbd7a6570dd967b7b40c980089faad9a9e592bab378b98d52c1051c410b10b3ffecfa31ac475d279bc45b83cde2758261baa0f3894778b97e2f1cf90fdf154df2787d81f72909c632766cdd995260a2445355ef1175545861d15684d06f445ba4dddcf463df221f6c50ea9a185c876ea87dcb5c0dcb1a29e47f5a7777e3a228db2bcf82791ce41752be533bb2266982e6e71d1462cee4fa198da47eea2a4a72946678daf1eb68abc46cc5c1d8b74374933b3b66dd9eecced93a9b0ca6a498aac8be0877adf17a99529cf5f880ca45ba27717859962d8b0043ab824b88bac3d56583e1cf532ebe4e41fd4e99b2d9a27aa829d875d25b9afdaf877d63f275fb5f0efac7e4ebf6be1df58fc9d415d4950564525c5fdf4bbb0b66e8ea3baa611aa864864eb72ff005585549839514fb0e3e5fb5ba339be255a3087a08b9893cb96c61dd4e1149e12471903e45a231639045d4d5943758f50c36f56d743578733e7e74df83a92b30e33bbce9bf07415b400f9b5537e0ea6d5988cb196624a9e5b0b6f2ba2a9885b61217a837271504aefb87cc89f2627539b94f213f339ac2e6d751424fc72b7f0ed0c62b4aa67f378b907f5128b0b923c38a28cad94f9bfd2a7c16b249ac902c16e62ff004a18821886301c8474e2344d594e41d66de15343243210483690e811222c8560d873d2c45249e90ff26d0eeccd9ba924727f0e9ada529d867877678ff52c3b111aa1b0f7651e61d35f5c7349e6749b48b989410474b0ea838f58bbcfa5b2906c2460e0f93a1271217658bd03b915544370173785f4d0d14b5528b30eef58be85258cc201ca1ba3a210bcc590b30b64caa5ad2131e28098c33589d0491569080e63272ac3294a968e303e6e6ecd96418a39242e023723acaca8a922090ee7e5b54f5b554987884d2673cbfa596170c300f9ed572b16efdaff004a8668a68c648cae12e9545253d43652c6c5ef4f8050bbe799fe2a9f0ea4a6db1c7bdde24f200f124f502a496fd8dd067767cd955d0b4efafa72d5ce3fa953e32f13bc55a1698f594b5d57889945483647d6354d4d152476c7bc65cc7d1778cd86fe2b570bf022431906d8cae52d1504a59c90d85e14186e1a0f9da65ed12bd846c8c6c0f0e980d86517759a92a584ad61b94550c456db6a766776771dac8cc4008cb80b2c26bceacea98bbf98ff004eccc727d55090b731eeaf2720ce49262eaeefe2aaf0aa9abc41ccbd177bec58fb0c7e6f08728872ac04082819dfac4fd377666cdd493396c6e1f132c704e394f1ddef4ce2236462c23f10cf9704f6c8d917377918b8164fd16394b758945008b66e3bcaa23666bdb8b28cef01258fd4bc54ac03c64f72c065b2b987bc0fd99e50cf75447137507deb068355411e7cc7bda31495ea310366ef5a2a9a26869e18dbaa3d39cf6dadf35947591dfd61e8c1e94744b6135a45966a10606c98b35e5140e50452b754fdeb0388cab80d877479bb32b64d757c86fcae6a5aba4a48a163937726b5544e31d3493316cb2e1585c4f518803bf7ae2e9bbe4c89f32cfe6b171717eb226c8b2e88d63b3656a68649b7c8ad5aa78484d8b754b104d1146639892829e1806c8a361151554734f2c20fc9d9755808cb29491496ddd5258a3eb6bc211e016c62b18aa941c6904b70006efb5d793d4ae2325410f36e8f4b3cb8a90c6c2662f9b0be4e2ea481ccc8848514663cc3d0a71ba51d13be511288ae01758b5779a536ef39f2af274ddea67cfd61d9721b471c86fd51585c6f5589b197a8ae5253c12fa48c0bfb211116b44726e8c876322332e3f39191db63ed15346c0f98f296984ec3175ac0cb3b91d5b3164c39b2864091b75794446f560cfcac0bc9c177a994be80ecaaac7a0a798a268dcad55b8934d85148216de56ac14e2a5a79aae6e0476aa7a986a63be22b87a539667f3b26ba126eef4000cdf214146d96f128a3d54b93707589e16f5c71131db6f32a2a2868a22117f689018988981662fd904f9093a8226a9ae18c8b9cd63703c51d2c110fc1b67f8aaea47870781b3b5c4ae21f697936efff0021bd9e949e90be76de8e4e8518b6445a243ca58db46358a3b3953425ed17f85867c869fd8ec8a87ca9e67f017b960ed7625127167e22bca02ca859bc6bc9b1dca82f67a5336527cedf6424fd0a79da3b99d1d5b65ba2a39425b6fe655b2bc34b348dc4413b91966ea882ca3a717ee0f64573db473bf81d60237620cfdd024e60c56b935ddd5e519650423e375e4f33352193f7d5c3de570f795c3de570f7911b0b668cdcdf37f9d8933b585ca9e94f3dde55e6b377579acddd51d213beff000431462d930a9a07771205570bcd4b2c6dc48151e0350f2894fb0053364d937646211949455023cd62c3aa64a4aa1261f092c46690316bd8b810ac7ea5e49c22b76037fecb0e178f0e8f3eb1112cc9664b32508b9978548776c6e1a06322dac8a321dba045c9f26445147b1f79d36ae4e5e29db2d9a09c22e3bc49aa5bd71ab40dae0e8333bbe4c82066da4b561dd52c56ed6d000e6f9321a7066da8e0c9b31d2d11bedb510b8ec7d104993dafd3acad86923be42dbd51fa561b5325540531f58f77fa76495252915cf0867fd163836620cfde1152d3d24baa96586e2201f5fd88ceeb5986d11e51e846d6c24ff4e8066e62e02a4948dfc2a194c4f2eaa36c88999116ae2cdb896867c9f3644f7809a6553cf9e88cdc0b3646cc4d78f0d30c7935cfa677dcd100e419e99c6d2cd9538b3be6fa0c189b27442e2f93a67c9d0be622fd1aa9c29e09252eaaaaa996aa52332daeb0d8f55454e3e0cff1dbd95e518e5510978103c6f494a67280ee0f32b0486f8cc4c7c3d085ee8887d6da267b6311ef6885ae905948f99929fd1c6da5b640285b37c9543e729690f41f7b48728e999b302d113e603a6a5b9553bef65a6a079490b5cf93216b585ba38f5de60ecddf1587d04b53502d66ef5893333364dd938c56d4bd61c6321080eedab13091a8280a41deb494b4b2d4e134b207f098ae581ca435251754c093e9a7cf5a29f9954befb368a66f85cd3f1551cb1e92d831b78547b2e37eaa27ccb37d21e8074c7c83a5db36c918da44ca07cc34d4f0650be463a676dc5073f48999db271cd4d3414d1b999308aa0adf3c192461c82eb47b27196b31197eeaf3786b68a1195ba824bcde38a94a18f96c215859598945eddaa46c8c9b4d336d22fa13732a9f49a299f7f24eaa3963d27c237f0a37b61f6ba0de863d31720f4276c8b354fc9a6a780a89b331d33fa351be462fd2c42ba3a28ae7da45ca2aaaaea2ae4ba42cd61706a28a117e2fbdf8f64f9403956b3f78196185750d3bf813f041f05888f866ff002a76ca52d307a39144db737eaa90ae327d005698bb295b6e6dd653fa38f483df178854fe8e36e83ec8a36d307a3e8543676a01b445b4d4f55538f5b4935cd92cb23c9370e8e3ed29d500b0ee882c33089659464986d887f5266cb6764f9491e52407e1582d4c4f4431ddbe39eeac3b169a5ac2826e05cbf62aa7ff00e42476ff00cdfe55473e9a7da123237d5c59758ba1116b23b3ac2a76ca38f4c523c659b29e40311b7a07b1a36f0e9a7e4e838b3be6fd0985c9c59908dad9374250df176f5f4a438a31be421164f8c0cd511d3d30dd717376562742f5b008b15a63caa9305ad8278e5b8374be958a44f49893483b2ede14f49472c91d6166f7da56fab3466e6444fa61935659ba964732cdfa0cee2f9b23948edbba6dcca5e3969a67d85f1b967d1c42ba3a286e7da4fca2aaab6a2a8ae90960144e0255263cdba3d998f536b299a56e68fdceb089466a4388cadd56f7dd5e7f876b357797b5ea52058f97c7c6d998b291f332d34cfb49be658cd156d55403c619808aa2c024bc4ea76377508b088888e42dd96eec2c445c193e2d4d55379a08ee1dc372a12f35c41e29394b38cbfbac470b968fe12eba323586d479cd1da5cf17bbe3e9c73933eea77cdf3d3096527cca6a88601ba591853632d3d40c14d1f1eb126e1d97347ad8648fbc2a99da9ebe3d60f21ef29f09a79ea02a58adeb178956538d4534913fadb77faac3e62a3ad663e5e5252858797c700eae2f117419f240570e7f30c5319f3777861e7eb17754d3cd39dd21dc4b01a1d5c655063bc5cbfd3b371fa5d5ce338f29fbd60b57afa4612e60ddfeda31ea4d55434c3ca7ef5453f9cd10bbf386e97f8f8810737c8579b65c644f4cfea214f4f2b7553c66dc45450be771f2a32b9f3e8c276be4fc171d0eec9e406eb21312e05f153110432380e64c3baa4098a437203b96198349318cb30db17bd30b335adc3b3710a56a9a5923eb730ff558555799d6331ee896e92c58de6a327a6959c8778ad2f52a69ff0068539524c5bfcd197f8585d2cf4b0d46b9adbb95400c676ba96378cad7e8b366f932d91b583c7ada589db812d61f79111171d31b08b8ddcc4a58ed7cdb8696321e049e437eb27777d0ceedb59447736de3f14e22ef9b8b76862f85cbaf29a08ee13eefd2b0ac32ba3946527b07ac25d6658b501d24daf8791ff4baa5aa6aea762fe28737fb5463bc4ea689a41cbd6885c5f27e843e9451f39680072e08808788e91172e088822e3bc4a0be49ae74ecced93a92076da29d9db8e9188c910b8be4fa29f9bb7268639a228e41dd2516155f4953ac82d216fb7d4a20616badcb3f5689e0636cdb9910b8be4fa02333e514d98927f8566314c04ef930a98d85b563f790b4b6094649e536d8712f380f5468a790b636ea6032e02a9e3b231d2e22fc596a83ba9801b80e89a2bb7995879e56a882c6dbfc833403237893c3231dae2a28d803252d389ed6d84882489fe84f34aed939688246e424e661b1d5e3eb8c55ecdc0456b09fac878291dd809d934c6dd64d504bce5fbab5921be4c806d6fe45c9b490b1364ea5a4f58220307c887404f935a6d9b26d51f292d517ab25ab3eea0e51cd4acee3932d59f753426fd5434efd6240021c3f92c8049b27147480fcbb11d2ca3ea4e263c45664caf3ef2a599f3b1ff94dc59d3c313f114f4f0bf55053c60f9b0fff00b6bfffc400431100010302020704050a05040203000000020103040011051206101321223132204250521433415161153040536271728291a11623243460436492b154817080a2ffda0008010301013f00ff00e5511525b256c1df2d6c5df2ff008703667d23431097a8a9e615bde9cbb1102e445adf1c8e12761a8d9c6e5451093a4a880816c5fe0f13a352a2125968a28a2f56ead9c71e65485187bb4925a1dc235e983e5af4b1f2d2c860fa86af18a91a8e5c8a823b68b7e7ae5f58ff0081a89225d4755af411ccb7aeea026981b2951cbf28d14874bbd4a4abccbb11a39c9785a6fa8a97477114ee8feb4580e243fe8fee94785ce0ea8e746d3c0b62034a4231e454129d1e7be8258af50d1836fa5d0a8d830e63a937d136429721f1d44525b2533191388e944552cb4b10735f370d29b2d6e11ccb4720cfe1d911525b256c1df2d6c1df2d61e6e44920f2b79ad5fc45fed4bf5afe22ff006a5fad7f117fb52fd6a0c86311609c562dc5969ec1603dcd9cbf877548d174e6c3bff2a93844e8dd4d661f30efae215a09243b8b8ab2b0f72e12a6a3886f5deb44284965a76328ef0f1c03505cc94d3a8e25d29c780137d3920cfe09db8beb28a5109125abd2cfdd5e967eeaf4b3f757a59fba9990465956b477fb473f1aeb54bf3a9783c293cdbca5e61a9ba3d258cc4d718fef4406dad887295372487716f4a0700d2e34fbc80964eaa55badd7c5d37d0c5251be6a20515b2d331d4f7af2a7da405dd42640b71a22525bafcc45f594e7596a44525b26b8beb2b477fb473f1af6a6e17126271b7c5e61e75886092626621e30f3509102dd2910dc3b27112d38d9b4590c72aea8c08799169d6d40ade29199ef953b210172a0de85a535cee53afa0a582889496ebf3517d6539d654824bc86a336b9b328d38d9219220d28aa734a8beb2b02991d98ce0b8f089675af94617d78feb5f28c2faf1fd6be5185f5e3fad7ca30bebc7f5af94617d78feb5f2940ff00c80fd681c65f6ee04043589e8f83d99c8fc27e5f62d60f828c54dabc3777feab14c21a9addd373a9d255223bb1dd26dc1b2a5435de495203305fdde26c359caebd34f388d8eea43542ccb44fb8e708d64006ecb4bf351bd651f59536e902fc280b308ad3ce6cc6f968cc8d6eb517d65605163bb19c271a122cebd494b020a73603f44a71bc25aeb1693f4a29385726a2ed57ec856cde7bd4e18d02799cb52606f3beb9c683ec88a549c3236726237128f138e2fb3e1587abf01969f4e264fabecfc69b701c01312cc25a9e79b65a271c2ca2358be271e69d819e5d25eda60f21dd6895325f5596d7f1014bada8051a6f7519138445aa3339533173a92f5d7227cdc5f5b4e75950ef51a724db85ba5791c6884bab545f5b583fa79b2e0b2e000675eae749853ce6f7e6197e1dc94d61505bde8d662fb5be81b6c12c219754f966a43163f13a7ffe53df411022c27053ab21662f7ad61402e61ad090e612a6ccf0c7f647fdb9f497957dd48b71ba56943ae8032025c05d5a88a29c10455caf07ee948e1a0e542dda81abb1f7d2eef0f45b6fa0788c72273a3416dab2530c2a96621a90f644ca9d5ac008fa6b60ef96b60ef96b60ef9689a304b90eb22104cc4564a7b14445b343503123db8a39eda7c117f983c97b28a91d9270baabe5996dba44d3961ac274c5e1216e46f1a8931896d0b8c95d3562124e34471d11b92542c55c8ea4e2c6ce67d457a771f79c6c83d13abe350f1a7a34706bd1af6f8d48c68a4344d391372fc6b0098f3c0e32e0f474d63787fa647b80f1874d45c0e73ae8a137907bc454f3582c416db784337dd58ce1cd020c98bea8bcb49ce812c0294f8e57493c423b68019979d13e8af5d7a528e4b683742a32535baeb65cc857a12424ba6a55b73a90ee75ca9cb511200911724a97309f3b2746a45b6f4ac2e78b81b2739d3cca82dd396b69a404da3958acf574b661cb5e8fe3af417c448b816a3486e4322eb65b8aa4322f34e365c8829d69c8af132e7b3a7e29ac8adb93792d60f0962c7e3eb3e22d589ccf43884e20dca9c74dd32322baad60048fb12633c5c15323946906dafb2997509bbaf769f3433ba78688e6244a46db00b2d03606edc478529e222fe58510a8ad97b40e1874957a53b46f19f32a725b0df5394b8a474e48553276dd040370f600cdb3121eaac3f13074766ef55147cdc4d96ea46da6133b85beb11c514ff96d72ec72ac2f4a64416367ce9ad393bf180d063b84e2a391f1ca5e6f757c88f12668b240c7ed506058812d8cc052a0e0d1e2ae72e33f316bc5e39c884e00755289215aa0e004ec7179c789b52ac4703759609f17f6b6ff00aabaa50a292d929f6d0106de191833397f754b3b208d03e00d593aaa2aa92112d4a54577b644808a45caa5cf3717287087cc22922dd2a2e2eeb2994f7d4ac41e90bd5947e6048856e25580e91bf11d16dd2b82d477db90d0bad95c4bb1ce9d8901842904c870f172ac47177e4b842d9e56bcb5824c70dcf4474b3018d4e8eb1a538d2f74aa28663cde5a94376bc322058737bea496673530391a1a32cc64bdbc4e46fd88fe6fa222dab4371652fe99c2ece2c8a501f411bf0eac3d64b4f0becb39f2562928e5b82e1b390d371544244221a92488d1278600e56851291b3322b5002ab8234f164697b64b950969e714dc225f6fd17059251e7b6494cb88e34069deec12210e55a7346009c2347f28d1e270f0b4f478ede7b7517c687106f1361e60db01772e61aba816ee744646b722a26d444497dbe1612ac9621a6532b5997db4c362bfcc5e752dcbe514ed2aa26f5a9525a461c4170737d1993c8e89796b0cd278011d969c2de2396a2e2112525da7857b18dbcad407550aca5c34ab7e75850e69ecf15b8ab12676335e04e59aa3b79cb7f24a969c03e1629995129f5c8cda84c879152aaaef5ecca9091dbbf7a9d90ebab722fa45ed50b129311d12073956058b0e2318557ac7ab5e271bd261bcda0e62eefdf5e832f3e4d81e6fbaa3e8db86c091b991dac4a04988e0ed8b366e92a888992a5af00a78537148c6ea54db395eb796a4a299080d18102d8bb58938a7232f97e97a17288266cb36e2ec4a931e235b5756c94fe9439b42465b1cbddbd4f9c9884017086c607c5ffba61fd9a12538e138b4a8a8b65f0844bad11646ef51cf32b845ce9b7333e553390f6a77f74e7d2f445157126fb1a50f1e769ab70f56a85154f0d9a6bf0fdb54663be54ffad2f0804b98d3eb668a9155395444fe654c5e9ed624196412f9be97a16ca9cecfeeec6338494f4026cec4351f46deda7f50e088fc2a6e1b270f170a396760c78a9b1cce0a2d225a9d5bb84be10d25dc1a92b66aacb6bd434e225a92266e0a08e6ad83df5475b07bea8eb60f7d51d6c1efaa3a7dc160489cdd526413ee675fa5e0d8b3b87be2425c34c692c036848cac4b5fc438779ff6afe21c3bcffb54dd236119fe9b79d3d88cb78d5c378af585e2e2cb6f3324b30174d09a23b9a9c9436b0f84b2a88e0aad3a086dd969a14562d5182c37ac0833cd74f2ee11cb5b30f256cc3c95b30f2562d2d98311c715033776b109872df2352d4c419323d5b79aa440931fd63797534d1bc62003c5587686bd21a171d5cb7ac5744a4441236f8868c540b29756ac0b4596600bceee1a7b4361137602e2ac6347e461e77cb71ec00119651eaa8d86b62999de22a58cc2a5b66353a08b49b46f96a61871f2ca14de18c0a71f11549c35113335ff001a54545b2d225f725061f20d2f969d65c696c636d5874adfb13fcbdb6db235b253c0805953c251c3f35465bb5587614f4c6c8c1eca22796b0fc3c2135904b3117517634e259a10329cb5611879cf942083586e151a132222df179ab15c3634b8ce666f8843aaa6348dc97007a46b4370e090faba63744a44b6e4a30430212e92ad27809127920f4d0f50d68d15f0c6f54c86d4b649a31dcb58f614702510a8f0eb81151a0da17516bc416d14b561ed203025ed2d7893480f664e45585b4046445ddd4f320f0642a7da569c202f65092890aa53479da6cbde3d901ce62294008da5929e2cce92f85445e124ac2f150842f364d995cf370d42c69894eecb2901fdaec69ae1ee1a0be3cb56854141689f21dfab1273670641fd85a9679e4b8bf6ab4201122997ddaf4d5c129b9529a15370452b00655ac35945ef716bd392fe7827d94d6c6f65bfc09ae68678ee5b5445458edaa7975e2c9c2dad614567087ecebc55ae87129a6d5c70407db4d8e46c43cbd98beb69d75006f4bbfc263b628d8aa8d32a9b5711284d01e245ef566507197539a18d02dc0575e3a8dae1afe7a3b6d4ade7ad17040c303ed6ad227767863df1a35b992d68525a11fe5d7a50ea9e26efe22ac0612cb9cd8d32da34d800f21d7a6e779889f76b8cb761bfc3ad45091516a437b374817d958695e327c35e2beadbac3cb2ca1d7888de3156196f48dfda4554a113716c94eb68de54f6f84c75bb2359c9b74946b3a9399969cded25433cf1592f780ebd2e90ad61f953bd43bceb46c4930c6736ad256d4f0c72ddda24b1596b42d7fa12ff00d6a5ad24051c49ebf98ab41e2a13a4eaf77b1a6877c40935c25bc66fb18a059e12f35618968df9b5e2deadba802a52835e208ab18ad50cf2486d7ed769a695c5b536d8b6964a7cb3384be13157f954fa59d2a4aea6bf2d61259a047fc3af4e0d523349f7d61718a44c6c506a1b28c466da4ee86a96ca3f1dc68bbc158ac628d31c021ad082bc334fbb5e99e1c63236e23c255a10168a65f77634b8f3622e7e3d787ade28f6314052d8a25476b64c886bc59781b4ac29ab093abadc0430215f6d6556decabdd3a1e49d98b640a7a40a2587abc2a1aee24a900bb4bf769d6045bcc3409fca1ac095570e6aff001d7a6ad29c4024f65eb4370b5273d20c770f634c30753fea5a1fc55a0e2a2cba8baf1082d4e609a3ac070f770f290d18f0f775ad6929e6c4ddfc45af0c2bc6b7daec10091092fb3b13d9378d901a69b16c0407d9d899157d21b31ef52764508b725247ca0467e14c3bb32baf2a724b442434c921b565a81064cb526db21411eaa891c63476d91eeebc5a0fa6c556d3aaa0430871db683d9d875a6dd02031cc2550f0f8f095cd88db3f6dc5b01ad63479e7bcbaf0a2bb6e27ceaa22f3ecb4d2b856a6da004b254a72fc09e1914ec797df5127140904e65cc263972d2e3b394f3236397cb506604c605c0fcc3eef9f9a7922bc7ee02a9e79e538bf6b5e125c4e0fd0a3b8d806f2df4e4a4b582955556ebe16897dc948c180ed3da94e2676b32534f21eeef56112bd1a66cd7a1dff00bf9fd219431f0e76e5c45c34e167708bcdaf0e7102425fbdf4200325b08d7a3e40cc65e180b94c568f8db2b50be4239169b3cae09515d50487a87886b0d9492a236e77bbdf7fcf698e29b57b6005b87b024a2574a8eea3cc89a7d0188f9f88b950888a592a53975c89e1b14f30e55f65490c8774f6ea8a79872af76b0293b294e30bd27c43f7fcc3f2598ed938e9654a774c6083842837a674bb0e737170d358de1aef4be3f9a865c62e97817f356398f46891885b733197ed525f37de270bbda91157726b812b64790ba4a915177a6a5214e65452581e6e0d03cd39d057f9a04452145a45141dd4f48414b0f552adf7af86b2790c569f0cedeea61329f18d106c8b683cbbd58701bf39856bbbc44558b4b289115d0eae1ac3e684c605c0fcdd971c46db232e91ad23c75e9720800ac0357bd5e85e743a4e867ca1e4f1d3afbaeadccb36ae7585610eac776518f0a54f86ad96d007857584a90da585ca29920b9b8544e196f52d40e182e612cab50a4eddbdfd49f35997c423be99729153ef36a99537d30ea18652e75834c088f6c5ce83e92f8d6943b68ec82778ab0bc45c82fdfb85d434c3edbed0b8d95c4bb18a212e1f232f90aa4dfd21cbf9b54586f4acc8d8f4d3b19f656c6deb69971d5b00e6ac0b459e7cc5d7c6c158aa4585861471e1cdd2344284994b954ac38917335bc7cb44062b621d4884bca9a82fb9ddca34f344d38405ecd5855f6c56f2f8e0128add2964364362a9935d920d0195f26ed58462c709cc87bda2fda9979b79b136cb3096a913634621475ccb9a8901d6893a84ab487047e2ca2310b8953715f70f28b75a2b81ac46b6cf0f1174d4a7b0d592e313a38817987db5fc3383ca4ccc3d41a170856ea7fb545c0b0d89bc4108bed52c98ac8d95c01ac625fa4cd7090ae23c23ac9b6cba8516bd0e3defb34a065a0e96c691539254f86af71875524779572eccaf50a36c1be2ea5ff01c33167a11dba9af2d3589c476313e2e6e1eaac4669cc924e2f4f77eeac371b7e22881f1b54d48818933dc34f2953584c068b38470cd4896ad26c1bd318db35d635e973e139976869968749f1314b6d8bf55a7748f12712cae97eab4b88cb70b7b943d23528941870856cb41884a1ef50e2aea7508d2e2c5ec6e9264b90590377e1a61ad9379556e5deff05433142442e7ad97dd60b3b45956a0692f484a1fcc34c4a6240e669c124d58b68d449d9884729d4cd109ccaddb1ba7eb4e60d3db5b1335f27cb45f534da1236085cf2d4c122608406e4b490a4aff00a743874a2eed37852f371cff008d32c34ca5807fc2d990f30599b70856a2692c86f73c39c7f7a8f8fc07b729e42fb541218712e0e01528345cc52962c75e6c87e958fe14d234b25ae1cbd43fe262eb80b71354a0c4e7074c83a1c77121ff005bf64a918cce90d134e39c25f0ff00eed7ffd9, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_pinjaman`
--

CREATE TABLE `m_pinjaman` (
  `pk` int(11) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `bunga` double NOT NULL DEFAULT 0,
  `sistembunga` varchar(50) NOT NULL,
  `kolektif` tinyint(4) DEFAULT 1,
  `tabungan` double NOT NULL DEFAULT 0,
  `akunpinjaman` varchar(15) DEFAULT NULL,
  `akunbunga` varchar(15) DEFAULT NULL,
  `kd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_pinjaman`
--

INSERT INTO `m_pinjaman` (`pk`, `nm`, `bunga`, `sistembunga`, `kolektif`, `tabungan`, `akunpinjaman`, `akunbunga`, `kd`) VALUES
(1, 'Pinjaman Koperasi Menurun', 1.2, 'Bunga Menurun', 1, 0.3, '1-132', '4-211', 'P001'),
(27, 'Bunga Tetap Multi Guna', 1.3, 'Bunga Tetap', 1, 0, '1-131', '4-212', 'P001'),
(28, 'Pinjaman Lunak', 0, 'Tanpa Bunga', 1, 0, '1-134', '4-211', ''),
(29, 'Pinjaman PKB Menetap', 1, 'Bunga Tetap', 1, 0, '1-135', '4-214', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_promo_dt`
--

CREATE TABLE `m_promo_dt` (
  `pk` int(11) NOT NULL,
  `fk` int(11) NOT NULL,
  `itemfk` int(11) NOT NULL,
  `harga` double NOT NULL DEFAULT 0,
  `diskon` double NOT NULL DEFAULT 0,
  `jmldiskon` double NOT NULL DEFAULT 0,
  `hargaakhir` double NOT NULL DEFAULT 0,
  `satuanfk` int(11) NOT NULL,
  `jmlkonversi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_promo_dt`
--

INSERT INTO `m_promo_dt` (`pk`, `fk`, `itemfk`, `harga`, `diskon`, `jmldiskon`, `hargaakhir`, `satuanfk`, `jmlkonversi`) VALUES
(12, 2, 1, 15000, 10, 1500, 13500, 0, 1),
(13, 1, 1, 5000, 4, 200, 4800, 0, 1),
(14, 3, 1, 15000, 10, 1500, 13500, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_promo_hd`
--

CREATE TABLE `m_promo_hd` (
  `pk` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `tglmulai` date NOT NULL,
  `tglselesai` date NOT NULL,
  `ctn` text NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL,
  `stsaktif` tinyint(2) NOT NULL DEFAULT 1,
  `gudangfk` tinyint(2) NOT NULL,
  `nmcomp` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_promo_hd`
--

INSERT INTO `m_promo_hd` (`pk`, `tgl`, `tglmulai`, `tglselesai`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `stsaktif`, `gudangfk`, `nmcomp`) VALUES
(1, '2023-11-12', '2023-11-12', '2023-11-26', 'Promo Akhit Tahun', '2023-11-09 15:11:37', 4, '2023-12-27 21:44:19', 0, 0, 1, 'BALISOLUTIONBIZ'),
(3, '2023-12-29', '2023-12-29', '2023-12-29', 'a', '2023-12-29 16:44:39', 4, '0000-00-00 00:00:00', 0, 1, 1, 'BALISOLUTIONBIZ');

-- --------------------------------------------------------

--
-- Table structure for table `m_provinsi`
--

CREATE TABLE `m_provinsi` (
  `pk` int(11) NOT NULL,
  `negarafk` int(11) DEFAULT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_provinsi`
--

INSERT INTO `m_provinsi` (`pk`, `negarafk`, `nm`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(4, 1, 'Nanggroe Aceh Darussalam', NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Sumatera Utara', NULL, NULL, NULL, NULL, NULL),
(6, 1, 'Bali', NULL, NULL, NULL, NULL, NULL),
(7, 1, 'Jawa Barat', NULL, NULL, NULL, NULL, NULL),
(8, 1, 'Banten', NULL, NULL, NULL, NULL, NULL),
(9, 1, 'Riau', NULL, NULL, NULL, NULL, NULL),
(10, 1, 'Sumatera Barat', NULL, NULL, NULL, NULL, NULL),
(11, 1, 'Jambi', NULL, NULL, NULL, NULL, NULL),
(12, 1, 'Bengkulu', NULL, NULL, NULL, NULL, NULL),
(13, 1, 'Sumatera Selatan', NULL, NULL, NULL, NULL, NULL),
(14, 1, 'Lampung', NULL, NULL, NULL, NULL, NULL),
(15, 1, 'Bangka Belitung', NULL, NULL, NULL, NULL, NULL),
(16, 1, 'Jakarta', NULL, NULL, NULL, NULL, NULL),
(17, 1, 'Jawa Tengah', NULL, NULL, NULL, NULL, NULL),
(18, 1, 'Jogjakarta', NULL, NULL, NULL, NULL, NULL),
(19, 1, 'Jawa Timur', NULL, NULL, NULL, NULL, NULL),
(20, 1, 'Kalimantan Barat', NULL, NULL, NULL, NULL, NULL),
(21, 1, 'Kalimantan Tengah', NULL, NULL, NULL, NULL, NULL),
(22, 1, 'Kalimantan Timur', NULL, NULL, NULL, NULL, NULL),
(23, 1, 'Kalimantan Selatan', NULL, NULL, NULL, NULL, NULL),
(24, 1, 'Sulawesi Utara', NULL, NULL, NULL, NULL, NULL),
(25, 1, 'Gorontalo', NULL, NULL, NULL, NULL, NULL),
(26, 1, 'Sulawesi Tengah', NULL, NULL, NULL, NULL, NULL),
(27, 1, 'Sulawesi Selatan', NULL, NULL, NULL, NULL, NULL),
(28, 1, 'Sulawesi Tenggara', NULL, NULL, NULL, NULL, NULL),
(29, 1, 'Nusa Tenggara Barat', NULL, NULL, NULL, NULL, NULL),
(30, 1, 'Nusa Tenggara Timur', NULL, NULL, NULL, NULL, NULL),
(31, 1, 'Maluku', NULL, NULL, NULL, NULL, NULL),
(32, 1, 'Maluku Utara', NULL, NULL, NULL, NULL, NULL),
(33, 1, 'Papua Barat', NULL, NULL, NULL, NULL, NULL),
(34, 1, 'Papua Tengah', NULL, NULL, NULL, NULL, NULL),
(35, 1, 'Papua Timur', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_rak`
--

CREATE TABLE `m_rak` (
  `pk` int(11) NOT NULL,
  `nm` varchar(20) NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_rak`
--

INSERT INTO `m_rak` (`pk`, `nm`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(1, '01', '2023-11-06 19:38:27', 0, '0000-00-00 00:00:00', 0),
(3, '02', '2023-11-06 19:39:27', 0, '0000-00-00 00:00:00', 0),
(4, '03', '2023-11-06 19:39:33', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_rek`
--

CREATE TABLE `m_rek` (
  `pk` varchar(10) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `grupfk` varchar(11) NOT NULL,
  `divisi` int(11) NOT NULL DEFAULT 1 COMMENT '1= SimpanPinjma, 2 = Retail ; 3 = catering\r\n',
  `kas` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_rek`
--

INSERT INTO `m_rek` (`pk`, `nm`, `grupfk`, `divisi`, `kas`) VALUES
('1-111', 'Kas Kecil', '1-11', 1, 1),
('1-112', 'Kas Besar', '1-11', 1, 1),
('3-210', 'LabaTahun Berjalan', '3-11', 1, 0),
('3-211', 'Deviden', '3-11', 1, 0),
('3-213', 'Laba Bulan Berjalan', '3-11', 1, 0),
('1-323', 'RAK. Cabang Katering (Aktiva)', '1-32', 1, 0),
('1-322', 'RAK. Cabang Toko (Aktiva)', '1-32', 1, 0),
('1-321', 'RAK. Cabang Kantor Simpan Pinjam (Aktiva)', '1-32', 1, 0),
('1-123', 'Bank BRI', '1-12', 1, 1),
('1-124', 'Kas Kecil BRILink', '1-12', 1, 1),
('1-125', 'Bank BCA', '1-12', 1, 1),
('1-131', 'Pinjaman yang Diberikan', '1-13', 1, 0),
('1-141', 'Piutang Dagang', '1-14', 1, 0),
('1-142', 'Piutang Pendapatan Bunga', '1-14', 1, 0),
('1-143', 'Piutang Lain-lain', '1-14', 1, 0),
('1-145', 'Piutang Voucher', '1-14', 1, 0),
('1-146', 'Piutang Antar Kantor', '1-14', 1, 0),
('1-151', 'Cadangan Penyisihan Piutang ', '1-15', 1, 0),
('1-161', 'Uang Muka Pajak PPH 25/29 & Pasal 4 Ayat 2', '1-16', 1, 0),
('1-162', 'Biaya Dibayar Dimuka', '1-16', 1, 0),
('1-163', 'Uang Muka Pajak PPH 21', '1-16', 1, 0),
('1-171', 'Persediaan Toko', '1-17', 1, 0),
('1-181', 'Persediaan Materai', '1-18', 1, 0),
('1-182', 'Persediaan Alat Tulis Kantor', '1-18', 1, 0),
('1-191', 'Investasi Ke Pihak Kedua', '1-19', 1, 0),
('1-211', 'Peralatan Kantor Pusat', '1-21', 1, 0),
('1-212', 'Peralatan Semua Cabang', '1-21', 1, 0),
('1-221', 'Akumulasi Penyusutan Peralatan Pusat', '1-22', 1, 0),
('1-222', 'Akumulasi Penyusutan Peralatan Cabang', '1-22', 1, 0),
('1-213', 'Harga Perolehan Program', '1-21', 1, 0),
('1-223', 'Akumulasi Penyusutan Program', '1-22', 1, 0),
('1-311', 'Piutang Management', '1-31', 1, 0),
('2-111', 'Tabungan Koperasi ', '2-11', 1, 0),
('2-131', 'Hutang Antar Kantor', '2-13', 1, 0),
('2-132', 'Hutang Dagang', '2-13', 1, 0),
('2-133', 'Hutang Gaji Yang Masih Harus Dibayar', '2-13', 1, 0),
('2-134', 'Hutang Seragam Yang Masih Harus Dibayar', '2-13', 1, 0),
('2-135', 'Hutang THR Yang Masih Harus Dibayar', '2-13', 1, 0),
('2-136', 'Hutang Antar Rekening', '2-13', 1, 0),
('2-137', 'Cadangan Pajak', '2-13', 1, 0),
('2-141', 'Dana Cadangan', '2-14', 1, 0),
('2-153', 'Titipan Antar Rekening-Lain-lain', '2-15', 1, 0),
('2-154', 'Titipan Antar Rekening-Konsumsi', '2-15', 1, 0),
('2-155', 'Titipan Antar Rekening-Kantin', '2-15', 1, 0),
('2-161', 'Pinjaman Bank', '2-16', 1, 0),
('3-116', 'Cadangan Resiko', '3-11', 1, 0),
('3-117', 'Modal Lain', '3-11', 1, 0),
('3-118', 'Cadangan Umum', '3-11', 1, 0),
('4-111', 'Penjualan', '4-11', 1, 0),
('4-211', 'Pendapatan Bunga SP Menurun', '4-21', 1, 0),
('4-212', 'Pendapatan Bunga Pinjaman Menetap', '4-21', 1, 0),
('4-213', 'Pendapatan Piutang Bunga', '4-21', 1, 0),
('4-221', 'Pendapatan Administrasi Pinjaman', '4-22', 1, 0),
('4-222', 'Pendapatan Administrasi Simjangkop', '4-22', 1, 0),
('4-223', 'Pendapatan Administrasi Tabungan', '4-22', 1, 0),
('4-231', 'Pendapatan Denda Kredit', '4-23', 1, 0),
('4-232', 'Pendapatan Fee Bank', '4-23', 1, 0),
('4-233', 'Pendapatan Jasa Elektronik/ Sepeda Motor', '4-23', 1, 0),
('4-234', 'Pendapatan Fee Asuransi', '4-23', 1, 0),
('4-251', 'Pendapatan Bunga Bank', '4-25', 1, 0),
('4-252', 'Pendapatan Jasa Lainnya', '4-25', 1, 0),
('4-261', 'Pendapatan Kantin', '4-26', 1, 0),
('4-112', 'Retur Penjualan', '4-12', 1, 0),
('4-113', 'Potongan Penjualan', '4-12', 1, 0),
('5-201', 'Beban Bunga SP', '5-20', 1, 0),
('6-111', 'Beban Gaji Karyawan', '6-11', 1, 0),
('6-112', 'Beban PPH 21 Karyawan', '6-11', 1, 0),
('6-113', 'Beban Seragam Karyawan', '6-11', 1, 0),
('6-114', 'Beban THR Karyawan', '6-11', 1, 0),
('6-115', 'Beban Gaji Pengurus Tahunan', '6-11', 1, 0),
('6-116', 'Biaya BPJS Ketenagakerjaan Karyawan', '6-11', 1, 0),
('6-117', 'Biaya BPJS Kesehatan Karyawan', '6-11', 1, 0),
('6-121', 'Beban Pembebanan HUT', '6-12', 1, 0),
('6-122', 'Beban Santunan Anggota', '6-12', 1, 0),
('6-123', 'Beban Administrasi Umum', '6-12', 1, 0),
('6-124', 'Beban Perlengkapan Toko/ Kantor', '6-12', 1, 0),
('6-125', 'Beban Printing dan Stasionery', '6-12', 1, 0),
('6-126', 'Beban Konsumsi', '6-12', 1, 0),
('6-131', 'Biaya Listrik', '6-13', 1, 0),
('6-132', 'Biaya Telpon', '6-13', 1, 0),
('6-133', 'Biaya PAM', '6-13', 1, 0),
('6-141', 'Beban Service AC/Kulkas/Komputer', '6-14', 1, 0),
('6-142', 'Beban Asuransi', '6-14', 1, 0),
('6-143', 'Beban Pemeliharaan & Perbaikan', '6-14', 1, 0),
('6-151', 'Beban Penyusutan Peraltan Pusat', '6-15', 1, 0),
('6-152', 'Beban Penyusutan Peralatan Cabang', '6-15', 1, 0),
('6-153', 'Beban Penyusutan Program', '6-15', 1, 0),
('6-171', 'Beban Kadaluarsa ', '6-17', 1, 0),
('6-181', 'Beban Operasional Kantin', '6-18', 1, 0),
('6-231', 'Beban Konsultant dan Audit Laporan Keuangan ', '6-23', 1, 0),
('6-232', 'Beban Market Survey', '6-23', 1, 0),
('6-233', 'Beban Maintenance Program', '6-23', 1, 0),
('6-241', 'Beban Berjalan ', '6-24', 1, 0),
('6-251', 'Biaya Pajak Pph Badan Final', '6-25', 1, 0),
('6-252', 'Biaya Administrasi Bank', '6-25', 1, 0),
('6-253', 'Biaya Non Operasional Lainnya', '6-25', 1, 0),
('6-254', 'Biaya Pajak Bank', '6-25', 1, 0),
('6-261', 'Beban Diskon', '6-26', 1, 0),
('6-211', 'Beban RAT', '6-21', 1, 0),
('3-119', 'Modal Lain - Lain Penyesuaian Program', '3-11', 1, 0),
('4-114', 'Pendapatan Lain - Lain Toko', '4-11', 1, 0),
('5-101', 'Harga Pokok Penjualan', '5-10', 1, 0),
('5-102', 'Short Over', '5-10', 1, 0),
('6-161', 'Beban Penyisihan Piutang', '6-16', 1, 0),
('6-172', 'Beban Barang Kadaluarsa', '6-17', 1, 0),
('6-242', 'Beban Berjalan', '6-24', 1, 0),
('5-202', 'Beban Bunga Deposito', '5-20', 1, 0),
('6-255', 'Biaya Promosi', '6-25', 1, 0),
('3-120', 'LabaTahun Lalu', '3-11', 1, 0),
('2-138', 'Hutang Antar Rekening-Oth Vendor/Supplier', '2-13', 1, 0),
('1-172', 'Persediaan Awal Toko', '1-20', 1, 0),
('5-301', 'Pembelian Toko', '5-30', 1, 0),
('5-311', 'Retur Pembelian', '5-31', 1, 0),
('1-132', 'Pinjaman Tanpa Bunga', '1-13', 1, 0),
('4-214', 'Pendapatan Bunga Pinjaman PKB', '4-21', 1, 0),
('5-103', 'Beban Penyesuain Stok', '5-10', 1, 0),
('1-126', 'Bank Mandiri', '1-12', 1, 1),
('1-128', 'Tabungan LPD', '1-12', 1, 0),
('1-129', 'Deposito Bank', '1-12', 1, 0),
('1-133', 'Piutang Usaha IDR', '1-13', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_rekgrup`
--

CREATE TABLE `m_rekgrup` (
  `pk` varchar(10) NOT NULL,
  `nm` varchar(200) NOT NULL,
  `jnsrek` varchar(50) NOT NULL,
  `subjns` varchar(50) DEFAULT NULL,
  `tipe` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_rekgrup`
--

INSERT INTO `m_rekgrup` (`pk`, `nm`, `jnsrek`, `subjns`, `tipe`) VALUES
('1-11', 'KAS', 'NR', 'Asset Lancar', 'Aktiva'),
('1-12', 'BANK', 'NR', 'Asset Lancar', 'Aktiva'),
('1-21', 'HARGA PEROLEHAN', 'NR', 'Asset Tidak Lancar', 'Aktiva'),
('1-22', 'AKUMULASI PENYUSUTAN', 'NR', 'Asset Tidak Lancar', 'Aktiva'),
('1-30', 'ASSET LAIN-LAINT', 'NR', 'Asset Tidak Lancar', 'Aktiva'),
('1-31', 'PIUTANG LAIN-LAIN', 'NR', 'Asset Tidak Lancar', 'Aktiva'),
('1-32', 'RAK KANTOR CABANG (AKTIVA)', 'NR', 'Asset Tidak Lancar', 'Aktiva'),
('3-11', 'SIMPANAN ANGGOTA', 'NR', 'Modal', 'Modal'),
('1-13', 'PINJAMAN YG DIBERIKAN', 'NR', 'Asset Lancar', 'Aktiva'),
('1-14', 'PIUTANG USAHA', 'NR', 'Asset Lancar', 'Aktiva'),
('1-15', 'CADANGAN PENYISIHAN PIUTANG', 'NR', 'Asset Lancar', 'Aktiva'),
('1-16', 'BIAYA DIBAYAR DIMUKA', 'NR', 'Asset Lancar', 'Aktiva'),
('1-17', 'PERSEDIAAN', 'NR', 'Asset Lancar', 'Aktiva'),
('1-18', 'PERLENGKAPAN KANTOR', 'NR', 'Asset Lancar', 'Aktiva'),
('1-19', 'INVESTASI', 'NR', 'Asset Tidak Lancar', 'Aktiva'),
('2-11', 'TABUNGAN KOPERASI', 'NR', 'Asset Tidak Lancar', 'Utang'),
('2-12', 'SIMPANAN BERJANGKA', 'NR', 'Asset Tidak Lancar', 'Utang'),
('2-13', 'HUTANG USAHA', 'NR', 'Asset Tidak Lancar', 'Utang'),
('2-14', 'DANA-DANA', 'NR', 'Asset Tidak Lancar', 'Utang'),
('2-15', 'TITIPAN', 'NR', 'Asset Tidak Lancar', 'Utang'),
('2-16', 'KEWAJIBAN JANGKA PANJANG', 'NR', 'Asset Tidak Lancar', 'Utang'),
('4-21', 'Pendapatan Simpan Pinjam', 'LR', 'Pendapatan', 'Pendapatan'),
('4-22', 'Pendapatan Administrasi', 'LR', 'Pendapatan', 'Pendapatan'),
('4-23', 'Pendapatan Operasional Lain', 'LR', 'Pendapatan', 'Pendapatan'),
('4-25', 'Pendapatan non Operasional', 'LR', 'Pendapatan', 'Pendapatan'),
('4-26', 'Pendapatan Kantin', 'LR', 'Pendapatan', 'Pendapatan'),
('4-11', 'Pendapatan Toko', 'LR', 'Pendapatan', 'Pendapatan'),
('5-20', 'Beban Bunga SP', 'LR', 'Biaya', 'Biaya'),
('6-11', 'Beban Personalia', 'LR', 'Biaya', 'Biaya'),
('6-12', 'Biaya Administrasi dan Perlengkapan Kantor', 'LR', 'Biaya', 'Biaya'),
('6-13', 'Biaya Listrik, Telp dan PAM', 'LR', 'Biaya', 'Biaya'),
('6-14', 'Beban Maintenance Gedung', 'LR', 'Biaya', 'Biaya'),
('6-15', 'Beban Penyusutan', 'LR', 'Biaya', 'Biaya'),
('6-16', 'Beban Penyisihan Piutang', 'LR', 'Biaya', 'Biaya'),
('6-17', 'Beban Barang Kadaluarsa', 'LR', 'Biaya', 'Biaya'),
('6-18', 'Beban Operasional Kantin', 'LR', 'Biaya', 'Biaya'),
('6-21', 'Beban RAT', 'LR', 'Biaya', 'Biaya'),
('6-22', 'Beban Umum Pensiuna Karyawan', 'LR', 'Biaya', 'Biaya'),
('6-23', 'Beban Audit dan Konsultan', 'LR', 'Biaya', 'Biaya'),
('6-24', 'Beban Berjalan', 'LR', 'Biaya', 'Biaya'),
('6-25', 'Beban Non Operasional', 'LR', 'Biaya', 'Biaya'),
('6-26', 'Beban Diskon Bunga', 'LR', 'Biaya', 'Biaya'),
('5-10', 'Beban Pokok', 'LR', 'Biaya', 'Biaya'),
('5-30', 'Pembelian', 'LR', 'Biaya', 'Biaya'),
('5-31', 'Retur Pembelian', 'LR', 'Biaya', 'Biaya'),
('1-20', 'Persediaan Awal', 'NR', 'Asset Lancar', 'Aktiva'),
('4-12', 'Retur dan Potongan Toko', 'LR', 'Pendapatan', 'Pendapatan');

-- --------------------------------------------------------

--
-- Table structure for table `m_salesman`
--

CREATE TABLE `m_salesman` (
  `pk` int(11) NOT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kotafk` int(11) DEFAULT NULL,
  `provinsifk` int(11) DEFAULT NULL,
  `kodepos` varchar(20) DEFAULT NULL,
  `negarafk` int(11) DEFAULT NULL,
  `notlp` varchar(50) DEFAULT NULL,
  `nofax` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `komisi` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_salesman`
--

INSERT INTO `m_salesman` (`pk`, `kd`, `nm`, `alamat`, `kotafk`, `provinsifk`, `kodepos`, `negarafk`, `notlp`, `nofax`, `email`, `komisi`, `ctn`, `status`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(1, '0001', 'Dewa', '', 0, 0, NULL, NULL, '', NULL, '', 0, '', 'Aktif', NULL, NULL, NULL, NULL),
(2, '0002', 'Ahifsdf', '', 0, 0, NULL, NULL, '', NULL, '', 0, '', 'Aktif', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_satuan`
--

CREATE TABLE `m_satuan` (
  `pk` int(11) NOT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_satuan`
--

INSERT INTO `m_satuan` (`pk`, `nm`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(1, 'Pcs', '', '2023-11-04 22:29:13', 0, NULL, NULL),
(2, 'Dus', '', '2023-11-04 22:29:19', 0, NULL, NULL),
(3, 'Pack', '', '2023-11-04 22:29:30', 0, NULL, NULL),
(4, 'Lsn', '', '2023-11-04 22:29:41', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_shu`
--

CREATE TABLE `m_shu` (
  `pk` int(11) NOT NULL,
  `akun` varchar(30) NOT NULL,
  `persen` double NOT NULL DEFAULT 0,
  `divisi` int(11) NOT NULL DEFAULT 1 COMMENT '1=Simpan pinjam\r\n2=Retail\r\n3=catring\r\n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_shu`
--

INSERT INTO `m_shu` (`pk`, `akun`, `persen`, `divisi`) VALUES
(33, '2-143', 2, 1),
(34, '2-147', 5, 1),
(35, '2-148', 2, 1),
(36, '2-149', 5, 1),
(37, '2-145', 2, 1),
(38, '2-1411', 75, 1),
(39, '2-1410', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_shu_sp`
--

CREATE TABLE `m_shu_sp` (
  `pk` int(11) NOT NULL,
  `akun` varchar(10) NOT NULL,
  `persen` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `pk` int(11) NOT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tipe` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=stok, 2=Tenant, 3=konsinyasi;4=Event/EO',
  `kotafk` int(11) DEFAULT NULL,
  `provinsifk` int(11) DEFAULT NULL,
  `kodepos` varchar(20) DEFAULT NULL,
  `negarafk` int(11) DEFAULT NULL,
  `notlp` varchar(50) DEFAULT NULL,
  `nofax` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nmkontak` varchar(100) DEFAULT NULL,
  `notlpkontak` varchar(50) DEFAULT NULL,
  `emailkontak` varchar(50) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `status` varchar(15) DEFAULT 'Aktif',
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `pilih` bit(1) DEFAULT NULL,
  `saldo` double NOT NULL DEFAULT 0,
  `akunrek` varchar(25) NOT NULL,
  `member` tinyint(4) NOT NULL DEFAULT 0,
  `bank` varchar(50) NOT NULL,
  `an` varchar(125) NOT NULL,
  `norek` varchar(50) NOT NULL,
  `tipeharga` tinyint(4) NOT NULL DEFAULT 1,
  `komisi` int(10) NOT NULL DEFAULT 0 COMMENT 'komisi tenant atau konsinyasi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`pk`, `kd`, `nm`, `alamat`, `tipe`, `kotafk`, `provinsifk`, `kodepos`, `negarafk`, `notlp`, `nofax`, `email`, `nmkontak`, `notlpkontak`, `emailkontak`, `ctn`, `status`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `pilih`, `saldo`, `akunrek`, `member`, `bank`, `an`, `norek`, `tipeharga`, `komisi`) VALUES
(3, 'SUPP-1', 'UNIRAMA', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '081936310947', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(4, 'SUPP-10', 'DELTA PLAZA', 'JL. GAJAH MADA NO.115 PEMECUTAN DENPASAR BARAT', 1, NULL, NULL, NULL, NULL, '0361405271', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(5, 'SUPP-100', 'RAJAWALI MAS CEMILAN', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(6, 'SUPP-101', 'PT SEMATA KARYA ANUGRAH ', 'JL. KARGO PERMAI  42B ', 1, NULL, NULL, NULL, NULL, '0361418753', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(7, 'SUPP-102', 'MODERN BAKERY', '', 1, NULL, NULL, NULL, NULL, '08164705903', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(8, 'SUPP-103', 'RUKUN MITRA SEJATI PT', 'BALUK 1', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(9, 'SUPP-104', 'MATAHARI BAKERY', 'JATIM', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(10, 'SUPP-105', 'USFI PT', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(11, 'SUPP-106', 'MENSA BINASUKSES PT ', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(12, 'SUPP-107', 'SINAR BANGKIT MULIA ', 'YOGJAKARTA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(13, 'SUPP-108', 'CV AMANAH BERKAH SEJAHTERA', 'LELATENG', 1, NULL, NULL, NULL, NULL, '081338731325', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(14, 'SUPP-109', 'ANDRE TK.', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(15, 'SUPP-11', 'UNIRAMA DUTA NIAGA', 'JL. KELAPA DUA WETAN NO. 09, CIRACAS, JAKARTA TIMUR', 1, NULL, NULL, NULL, NULL, '0361720481', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(16, 'SUPP-110', 'ANDRE', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(17, 'SUPP-111', 'PUTERA PAMENANG', 'KEDIRI', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(18, 'SUPP-112', 'BUANA MAS MAKMUR PT', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(19, 'SUPP-113', 'DJARUM', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(20, 'SUPP-114', 'CV. FAJAR ', 'PADANG SAMBIAN KAJA', 1, NULL, NULL, NULL, NULL, '085737236757', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(21, 'SUPP-115', 'AMANAH BERKAH SEJAHTERA', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(22, 'SUPP-116', 'SANJIWANI', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(23, 'SUPP-117', 'PULAU EMAS GEMILANG ', 'MAHENDRADATTA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(24, 'SUPP-118', 'DUTA PANGAN', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(25, 'SUPP-119', 'BINA SARANA CANDY', 'GATOT SUBROTO', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(26, 'SUPP-12', 'PT. TIGARAKSA SATRIA ', 'JL. CARGO SARI II NO 1 UBUNG DENPASAR', 1, NULL, NULL, NULL, NULL, '0361418688', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(27, 'SUPP-120', 'ENSEVAL PUTERA ', 'LUK LUK', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(28, 'SUPP-121', 'LESTARI BALI BERSAMA', 'JLN. GATOT SUBROTO', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(29, 'SUPP-122', 'SEMATA KARYA ANUGRAH ', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(30, 'SUPP-123', 'FELIX UD', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(31, 'SUPP-124', 'HERRY KISWANTO', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(32, 'SUPP-125', 'JAVAS BALI LESTARI', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(33, 'SUPP-126', 'PJI', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(34, 'SUPP-127', 'INDO PANGAN', 'KEBO IWA SELATAN', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(35, 'SUPP-128', 'MULIA ABDI SENTOSA', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(36, 'SUPP-129', 'INDOCAFE ', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(37, 'SUPP-13', 'PT. KARYA PRATAMA GEMILANG', 'JL. TANJUNG BIRU, BALUK, NEGARA', 1, NULL, NULL, NULL, NULL, '087862233173', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(38, 'SUPP-130', 'DISTRIVERSA BUANAMAS PT.', 'BADUNG', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(39, 'SUPP-131', 'SURYA SINAR BERLIAN ', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(40, 'SUPP-132', 'SURYA KINTAMANI', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(41, 'SUPP-133', 'MULIA HARAPAN SENTOSA ', '', 1, NULL, NULL, NULL, NULL, '03619008055', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(42, 'SUPP-134', 'JAYA NEGARA DISTRIBUTOR', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(43, 'SUPP-135', 'BALI CAKRAWALA CV', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(44, 'SUPP-14', 'CV. SUMBER JASA GEMILANG', 'JL. TANJUNG BIRU BALUK', 1, NULL, NULL, NULL, NULL, '036542136', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(45, 'SUPP-15', 'PT. SINAR SOSRO', 'JLN DENPASAR GILIMANUK, BANYUBIRU DEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(46, 'SUPP-16', 'PT. PUJI SURYA INDAH', 'GEL GEL SURABAYA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(47, 'SUPP-17', 'MADU NUSANTARA', 'JL. GATOT SUBROTO ', 1, NULL, NULL, NULL, NULL, '0361239462', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(48, 'SUPP-18', 'PT. PINUS MERAH ABADI', 'JL. BANJAR DINAS TABANAN', 1, NULL, NULL, NULL, NULL, '087704729491', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(49, 'SUPP-19', 'PT. DISTRIBUSI SURYA KENCANA', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(50, 'SUPP-2', 'PT. DELTA SATRIA DEWATA', 'JALAN IMAM BONJOL DENPASAR  BALI', 1, NULL, NULL, NULL, NULL, '08123890858', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(51, 'SUPP-20', 'PT. ARIZONA KARYA MITRA', 'JL. BANYUBIRU NEGARA', 1, NULL, NULL, NULL, NULL, '0361429353', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(52, 'SUPP-21', 'UD. MAYINDO JAYA', 'JL. HIMALAYA SELATAN NO. 6', 1, NULL, NULL, NULL, NULL, '0361418531', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(53, 'SUPP-22', 'PT. BORWITA CITRA PRIMA', 'JL. RAYA TAMAN, PEMECUTAN KAJA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(54, 'SUPP-23', 'PT. SINAR MAYURI', 'JL. PULAU NIAS NO 1 LC DAUH WARU', 1, NULL, NULL, NULL, NULL, '036543369', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(55, 'SUPP-24', 'PT. SIWA CITRA UTAMA', 'JL. NGURAH RAI NO. 82 NEGARA', 1, NULL, NULL, NULL, NULL, '03654501357', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(56, 'SUPP-25', 'CV. SINAR BALI', 'JL. GATOT SUBROTO NO. 296 KELURAHAN TONJA', 1, NULL, NULL, NULL, NULL, '08814803844', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(57, 'SUPP-26', 'PT. KEMBAR PUTRA MAKMUR', 'JL. RAYA BALUK NO. 70', 1, NULL, NULL, NULL, NULL, '036540501', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(58, 'SUPP-27', 'PT. ARTA BOGA CEMERLANG', 'JL. LINGKAR LUAR BARAT', 1, NULL, NULL, NULL, NULL, '036540960', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(59, 'SUPP-28', 'PT. SEKAR NUSA BARUNA', 'JL. BYPASS NGURAH RAI NO 88', 1, NULL, NULL, NULL, NULL, '0362192269', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(60, 'SUPP-29', 'BERLIMPAH ANUGRAH SEJATI PT', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(61, 'SUPP-3', 'MANDARA JAYA', 'BANJAR BATU AGUNG', 1, NULL, NULL, NULL, NULL, '087761099443', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(62, 'SUPP-30', 'INDOMARCO ADI PRIMA PT', 'NEGARA', 1, NULL, NULL, NULL, NULL, '081907487565', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(63, 'SUPP-31', 'ARIZONA KARYA MITRA PT', 'JL ABIAN BASE BADUNG ', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(64, 'SUPP-32', 'NET BUYING', 'JATI BOGA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(65, 'SUPP-33', 'LOTTE', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(66, 'SUPP-34', 'YAKULT', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(67, 'SUPP-35', 'SURYA MADISTRINDO PT', 'SINGARAJA BALI', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(68, 'SUPP-36', 'BANYUMAS PT', 'JL KEPUNDUNG NO 70/ SALES OKI', 1, NULL, NULL, NULL, NULL, '081936407058', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(69, 'SUPP-37', 'TANTRI DELTA TAMA PT', 'JL GUNUNG KAWI NO 1A DENPASAR BARAT', 1, NULL, NULL, NULL, NULL, '0361 427644/434849', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(70, 'SUPP-38', 'ARIZONA PT', 'JALAN RAYA ABIAN BASE NO 70 MUNCAN KAPAL MENGWI', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(71, 'SUPP-39', 'TEMPO PT', 'JALAN ANTASURA NO 21 DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(72, 'SUPP-4', 'PT. MANDIRI TRI MAKMUR', 'JL. DANAU TONDANO 36 LELATENG NEGARA', 1, NULL, NULL, NULL, NULL, '081775142166', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(73, 'SUPP-40', 'FASTRATA BUANA PT', 'JL KEBO IWA DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(74, 'SUPP-41', 'BINTANG BALI INDAH PT', 'JL. CARGO NO.9A', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(75, 'SUPP-42', 'HALUS CIPTA NADI PPT', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(76, 'SUPP-43', 'SIWA CITRA UTAMA PT', 'JL NGURAH RAI NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(77, 'SUPP-44', 'DWI NIAGA PRATAMA', 'TABANAN', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(78, 'SUPP-45', 'BINTANG ANUGRAH DEWATA PT', 'BB AGUNG NEGARA BALI', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(79, 'SUPP-46', 'COCA COLA INDONESIA PT', 'JL COKROAMINOTO DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(80, 'SUPP-47', 'SAMPOERNA PT', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(81, 'SUPP-48', 'VANESSA BAKERY', 'ANTASURA DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(82, 'SUPP-49', 'SUMBER JASA GEMILANG', 'TANJUNG BIRU  BALUK NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(83, 'SUPP-5', 'MANDARA JAYA', 'BATUAGUNG ', 1, NULL, NULL, NULL, NULL, '087761099443', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(84, 'SUPP-50', 'MODERN GOLDEN PT', 'AICE PRODUCT', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(85, 'SUPP-51', 'INDAH PERMAI PT', 'JALAN GAJAH MADA NEDARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(86, 'SUPP-52', 'KARYA PRATAMA GEMILANG', 'TANJUNG BIRU', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(87, 'SUPP-53', 'SARI ROTI', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(88, 'SUPP-54', 'MANOHARA ADIKA', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(89, 'SUPP-55', 'BISMA RAHAYU', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(90, 'SUPP-56', 'DUPA SARASWATI', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(91, 'SUPP-57', 'SEKAR NUSA BARUNA', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(92, 'SUPP-58', 'MASKER', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(93, 'SUPP-59', 'SOSIS SONICE', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(94, 'SUPP-6', 'INDAH PERMAI NEGARA', 'JL. GAJAH MADA (DEPAN PAPIN)', 1, NULL, NULL, NULL, NULL, '081246969600', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(95, 'SUPP-60', 'GUDANG GARAM', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(96, 'SUPP-61', 'JIMBARWANA', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(97, 'SUPP-62', 'SINAR BINTANG TIMBRA PT', 'JL GATOT SUBTOTO BARAT NO 88X', 1, NULL, NULL, NULL, NULL, '0361 422330,412063', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(98, 'SUPP-63', 'SOSRO PT', 'JALAN RAYA DENPASAR GILIMANUK NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(99, 'SUPP-64', 'MARGA NUSANTARA', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(100, 'SUPP-65', 'SINAR KARUNIA PT', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(101, 'SUPP-66', 'PARAMA GLOBAL INSPIRA PT', 'JAKARTA', 1, NULL, NULL, NULL, NULL, '089685940436', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(102, 'SUPP-67', 'MANDIRI JAYA', 'JLN RAYA KAPAL', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(103, 'SUPP-68', 'SUKANDA DJAYA PT', 'JLN I GUSTI NGURAH RAI', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(104, 'SUPP-69', 'KOPI', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(105, 'SUPP-7', 'PT. ANUGERAH AGUNG ALAMI', 'JL. BRINGKIT GADON, DESA MENGWITANI, KEC, MENGWI, KAB, BADUNG', 1, NULL, NULL, NULL, NULL, '0361813335', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(106, 'SUPP-70', 'PARAMA GLOBAL INSPIRA', 'JAKARTA SELATAN', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(107, 'SUPP-71', 'PT. EKA ARTHA BUANA', 'SINGARAJA', 1, NULL, NULL, NULL, NULL, '081331507049', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(108, 'SUPP-72', 'ABADI NIAGA PRIMA PT', 'DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(109, 'SUPP-73', 'BALI ERATEL', 'JL. IMAM BONJOL NO.567 DENPASAR', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(110, 'SUPP-74', 'SARI AMERTHA', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(111, 'SUPP-75', 'PURI PANGAN UTAMA PT', 'JL.BAYPASS NGURAH RAI NO.555', 1, NULL, NULL, NULL, NULL, '0361726146', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(112, 'SUPP-76', 'CITRA MULTI MAKMUR ', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(113, 'SUPP-77', 'DON BOSCO PUTRA', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(114, 'SUPP-78', 'GUNATITA UD', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(115, 'SUPP-79', 'MASUYA GRAHA TRIKENCANA', 'JL. KUSANEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(116, 'SUPP-8', 'GIEB INDONESIA', 'JL. MAWAR NO. 140 GROGAK TABANAN', 1, NULL, NULL, NULL, NULL, '081933113227', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(117, 'SUPP-80', 'DUNIA ANAK', 'JLN. SESETAN NO.57E', 1, NULL, NULL, NULL, NULL, '082144659825', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(118, 'SUPP-81', 'PT. INTERFOOD SUKSES JASINDO', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(119, 'SUPP-82', 'CV. BUMI HARUM MANIS', 'JLN. DANAU BUYAN NO.37', 1, NULL, NULL, NULL, NULL, '036543894', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(120, 'SUPP-83', 'PT.KING GUAN ', 'JL. SUWUNG BATAN KENDAL NO.18', 1, NULL, NULL, NULL, NULL, '0361720706', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(121, 'SUPP-84', 'DELTA PUSAKA PRATAMA', 'JL.IMAM BONJOL NO.226A PEMECUTAN ', 1, NULL, NULL, NULL, NULL, '0361492312', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(122, 'SUPP-85', 'DEWATA KENCANA ', 'JEMBRANA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(123, 'SUPP-86', 'PT JAYA BARU', 'PENGAMBENGAN', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(124, 'SUPP-87', 'DUNHILL', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(125, 'SUPP-88', 'TOKO BUCU', 'BR TENGAH', 1, NULL, NULL, NULL, NULL, '0365', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(126, 'SUPP-89', 'GONUSA PRIMA DISTRIBUSI', 'SINGARAJA', 1, NULL, NULL, NULL, NULL, '08001466872', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(127, 'SUPP-9', 'DELTA PUSAKA INDAH', 'NEGARA', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(128, 'SUPP-90', 'EKA ARTA BUANA PT', '', 1, NULL, NULL, NULL, NULL, '0341414469', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(129, 'SUPP-91', 'STARS DISTRIBUSI ', 'BALUK', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(130, 'SUPP-92', 'BALI UNITED ', 'KUTA', 1, NULL, NULL, NULL, NULL, '088801100888', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(131, 'SUPP-93', 'SUMMER SPRING', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(132, 'SUPP-94', 'BUMI HARUM MANIS CV', 'JLN DANAU BUYAN', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(133, 'SUPP-95', 'PUTRI PERDANA', '', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(134, 'SUPP-96', 'KARUNIA DEWATA', 'SERIRIT', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(135, 'SUPP-97', 'UD SARI BUAH', 'PERUMNAS BB AGUNG', 1, NULL, NULL, NULL, NULL, '08123985126', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(136, 'SUPP-98', 'KARYA SAFARI PT', 'JL. BULUH INDAH RAYA NO.74 ', 1, NULL, NULL, NULL, NULL, '0361430625', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0),
(137, 'SUPP-99', 'MAC CANDY INDONESIA', 'JL. RAYA SOLO-SEMARANG, LOPAIT KM.6', 1, NULL, NULL, NULL, NULL, '0298315046', NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_tabungan`
--

CREATE TABLE `m_tabungan` (
  `pk` int(11) NOT NULL,
  `nmtabungan` varchar(50) NOT NULL,
  `stspokok` int(11) NOT NULL COMMENT 'hanya untuk simpanan pokok dan simpanan wajib',
  `jenistabungan` int(11) NOT NULL COMMENT '1 Simpanan Pokok;2 Simpanan Wajib;3 Umum',
  `sistembunga` varchar(20) NOT NULL COMMENT '1= Saldo Rata-rata;2 = Saldo Minimum; 3= saldo Terakhir',
  `sukubunga` double NOT NULL,
  `saldominimum` double NOT NULL,
  `saldominimbunga` double NOT NULL,
  `setoranminim` double NOT NULL,
  `saldominpajak` double NOT NULL,
  `administrasi` double NOT NULL,
  `pajak` double NOT NULL,
  `terimaShu` tinyint(4) NOT NULL COMMENT 'true Meniram SHU',
  `rekkas` varchar(10) NOT NULL,
  `reksetoran` varchar(10) NOT NULL,
  `rekpajak` varchar(10) NOT NULL,
  `rekpenarikan` varchar(10) NOT NULL,
  `rekbunga` varchar(10) NOT NULL,
  `rekadministrasi` varchar(10) NOT NULL,
  `kodeawal` varchar(5) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) NOT NULL,
  `autosetor` tinyint(4) NOT NULL,
  `penarikankolektif` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_tabungan`
--

INSERT INTO `m_tabungan` (`pk`, `nmtabungan`, `stspokok`, `jenistabungan`, `sistembunga`, `sukubunga`, `saldominimum`, `saldominimbunga`, `setoranminim`, `saldominpajak`, `administrasi`, `pajak`, `terimaShu`, `rekkas`, `reksetoran`, `rekpajak`, `rekpenarikan`, `rekbunga`, `rekadministrasi`, `kodeawal`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `autosetor`, `penarikankolektif`) VALUES
(1, 'Simpanan Pokok', 0, 1, 'Rata-rata', 0, 0, 0, 0, 0, 0, 0, 0, '1-112', '3-114', '2-113', '3-114', '4-211', '4-222', 'P', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 11, 0, 0),
(2, 'Simpanan Wajib', 0, 2, 'Rata-rata', 0, 0, 0, 150000, 0, 0, 0, 0, '2-151', '3-112', '2-113', '3-112', '4-211', '4-221', 'W', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 11, 1, 0),
(3, 'SHU', 0, 3, 'Saldo Terakhir', 0, 0, 0, 0, 0, 0, 0, 0, '1-112', '3-113', '2-137', '3-113', '4-211', '4-221', 'H', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 11, 0, 0),
(4, 'Tabungan Sukarela', 0, 4, 'Saldo Minimum', 3.6, 0, 0, 0, 240000, 0, 10, 0, '1-112', '2-111', '2-1511', '2-111', '5-201', '4-223', 'T', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 11, 0, 0),
(5, 'Simpanan Hari Tua', 0, 0, 'Saldo Minimum', 0, 0, 0, 0, 0, 0, 0, 0, '1-112', '2-112', '2-1511', '2-112', '5-201', '4-223', 'T', '2022-12-29 19:50:15', 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_tebusmurah_dt`
--

CREATE TABLE `m_tebusmurah_dt` (
  `pk` int(11) NOT NULL,
  `fk` int(11) NOT NULL,
  `itemfk` int(11) NOT NULL,
  `hargaawal` double NOT NULL DEFAULT 0,
  `diskon` double NOT NULL DEFAULT 0,
  `hargajl` double NOT NULL DEFAULT 0,
  `satuanfk` int(11) NOT NULL,
  `jmlkonversi` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_tebusmurah_dt`
--

INSERT INTO `m_tebusmurah_dt` (`pk`, `fk`, `itemfk`, `hargaawal`, `diskon`, `hargajl`, `satuanfk`, `jmlkonversi`) VALUES
(12, 1, 8, 100000, 5000, 95000, 1, 1),
(13, 1, 1, 5000, 500, 4500, 1, 1),
(14, 1, 2, 8000, 1000, 7000, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_tebusmurah_hd`
--

CREATE TABLE `m_tebusmurah_hd` (
  `pk` int(11) NOT NULL,
  `tglmulai` date NOT NULL,
  `tglselesai` date NOT NULL,
  `stsaktif` tinyint(4) NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `addedbyfk` int(11) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `lastuserfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `nmcomp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_tebusmurah_hd`
--

INSERT INTO `m_tebusmurah_hd` (`pk`, `tglmulai`, `tglselesai`, `stsaktif`, `total`, `addedbyfk`, `dateadded`, `lastuserfk`, `datemodified`, `nmcomp`) VALUES
(1, '2023-11-06', '2023-11-29', 0, 100000, 0, '2023-11-06 21:33:44', 0, '2023-11-09 15:34:22', 'BALISOLUTIONBIZ');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `pk` int(11) NOT NULL,
  `kd` varchar(50) NOT NULL,
  `groupfk` int(11) NOT NULL,
  `pas` varchar(50) NOT NULL,
  `konpas` varchar(50) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notlp` varchar(50) DEFAULT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT 1,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `cabangfk` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`pk`, `kd`, `groupfk`, `pas`, `konpas`, `nm`, `alamat`, `notlp`, `aktif`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `cabangfk`) VALUES
(1, 'admin', 13, 'f1a0c726e6028090d45a433a95ad8610', 'f1a0c726e6028090d45a433a95ad8610', 'Admnistrator', 'Alamat', '', 1, '0000-00-00 00:00:00', NULL, NULL, NULL, 1),
(4, 'dewa', 13, '3b31aae2787818ba209950b2edb35e01', '3b31aae2787818ba209950b2edb35e01', 'dewa santika', 'ddewa fdsfdsf dewa', '', 1, '2021-05-25 10:49:41', NULL, '2023-07-02 23:19:17', 4, 1),
(5, 'kasir', 14, 'c7911af3adbd12a035b289556d96470a', 'c7911af3adbd12a035b289556d96470a', 'kasir', '-', '', 1, '2022-12-31 19:23:56', NULL, '2023-07-01 00:25:11', 4, 3),
(6, 'agus', 13, 'fdf169558242ee051cca1479770ebac3', 'fdf169558242ee051cca1479770ebac3', 'Agus', '-', '', 1, '2023-01-25 12:12:50', NULL, NULL, NULL, 1),
(7, 'ria', 13, 'd42a9ad09e9778b177d409f5716ac621', 'd42a9ad09e9778b177d409f5716ac621', 'Ria', 'Taman Kampial Residence ', '085739026616', 1, '2023-02-01 13:02:09', NULL, NULL, NULL, 1),
(8, 'klungkung', 13, 'b27b97ad8aeb6d97f1646e28c95f1eaf', 'b27b97ad8aeb6d97f1646e28c95f1eaf', 'Klungkung', '-', '', 1, '2023-06-23 13:33:30', 4, NULL, NULL, 3),
(9, 'agusweda553@gmail.com', 13, 'c31347b46f17945b9fe37e9c4e03d94b', 'c31347b46f17945b9fe37e9c4e03d94b', 'weda', '-', '', 1, '2023-06-26 16:08:32', 4, NULL, NULL, 1),
(10, 'hendra', 13, '8c50038f521650e1f2dcec72a5ee8dff', '8c50038f521650e1f2dcec72a5ee8dff', 'hendra', '.', '', 1, '2023-06-26 16:09:34', 4, NULL, NULL, 1),
(11, 'putraariana40@gmail.com', 13, '359b83c24b4cea14677a89f4c7ef8863', '359b83c24b4cea14677a89f4c7ef8863', 'hendra', '.', '', 1, '2023-06-26 16:10:31', 4, NULL, NULL, 1),
(12, 'indrayani', 14, '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 'ayu indrayani', '-', '', 1, '2023-06-26 19:16:56', 4, NULL, NULL, 3),
(13, 'ari80234@gmail.com', 13, 'dd9dbd214b151057264c6fbd06ffa6e2', 'dd9dbd214b151057264c6fbd06ffa6e2', 'wayan ariama', '-', '', 1, '2023-06-26 19:17:45', 4, NULL, NULL, 3),
(14, 'novi', 14, '5ec829debe54b19a5f78d9a65b900a39', '5ec829debe54b19a5f78d9a65b900a39', 'novi ernawati', '-', '-', 1, '2023-06-26 20:02:44', 4, NULL, NULL, 3),
(15, 'listiana', 14, '7f6ffaa6bb0b408017b62254211691b5', '7f6ffaa6bb0b408017b62254211691b5', 'listiana dewi', '-', '', 1, '2023-06-26 20:15:37', 13, NULL, NULL, 3),
(16, 'onis', 14, '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 'onis anandita', '-', '-', 1, '2023-06-27 07:07:31', 13, NULL, NULL, 3),
(22, 'bos', 14, 'ceb8447cc4ab78d2ec34cd9f11e4bed2', 'ceb8447cc4ab78d2ec34cd9f11e4bed2', '-', '-', '', 1, '2023-06-27 20:00:34', 9, NULL, NULL, 1),
(18, 'husnul', 14, 'f0254c8e293c55578b130f9f62b8f75c', 'f0254c8e293c55578b130f9f62b8f75c', 'husnul', '-', '', 1, '2023-06-27 07:56:16', 4, NULL, NULL, 1),
(19, 'ariyanti', 14, '634a18043954ba363eedeb695d163412', '634a18043954ba363eedeb695d163412', 'Ariyanti', '-', '', 1, '2023-06-27 07:56:55', 4, NULL, NULL, 1),
(20, 'oktaviani', 14, '39aec72bd8ad66719ca3a34bcbedba5c', '39aec72bd8ad66719ca3a34bcbedba5c', 'oktaviani', '-', '', 1, '2023-06-27 07:57:52', 4, '2023-06-27 14:45:08', 9, 1),
(21, 'arini', 14, '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 'Arini', '-', '', 1, '2023-06-27 07:58:18', 4, NULL, NULL, 1),
(23, 'yanari', 13, 'dd9dbd214b151057264c6fbd06ffa6e2', 'dd9dbd214b151057264c6fbd06ffa6e2', 'wayan', '-', '-', 1, '2023-08-09 17:53:02', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_wilayah`
--

CREATE TABLE `m_wilayah` (
  `pk` int(11) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_wilayah`
--

INSERT INTO `m_wilayah` (`pk`, `nm`, `ket`) VALUES
(1, 'Nusa Dua', '-');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(10) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `tahun` int(50) NOT NULL,
  `hasil_penjualan` int(25) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `bulan`, `tahun`, `hasil_penjualan`, `created_at`) VALUES
(1, 'januari', 2023, 0, '2023-02-08'),
(2, 'februari', 2023, 0, '2023-02-08'),
(3, 'maret', 2023, 0, '2023-02-08'),
(4, 'april', 2023, 0, '2023-02-08'),
(5, 'mei', 2023, 0, '2023-02-08'),
(6, 'juni', 2023, 0, '2023-02-08'),
(7, 'juli', 2023, 0, '2023-02-08'),
(8, 'agustus', 2023, 0, '2023-02-08'),
(9, 'september', 2023, 0, '2023-02-08'),
(10, 'oktober', 2023, 0, '2023-02-08'),
(11, 'november', 2023, 0, '2023-02-08'),
(12, 'desember', 2023, 84500, '2023-02-08'),
(13, 'Januari', 2024, 0, '2023-02-08'),
(14, 'Februari', 2024, 0, '2023-02-08'),
(15, 'Maret', 2024, 0, '2023-02-08'),
(16, 'April', 2024, 0, '2023-02-08'),
(17, 'Mei', 2024, 0, '2023-02-08'),
(18, 'Juni', 2024, 0, '2023-02-08'),
(19, 'Juli', 2024, 0, '2023-02-08'),
(20, 'Agustus', 2024, 0, '2023-02-08'),
(21, 'September', 2024, 0, '2023-02-08'),
(22, 'Oktober', 2024, 0, '2023-02-08'),
(23, 'November', 2024, 0, '2023-02-08'),
(24, 'Desember', 2024, 0, '2023-02-08'),
(0, 'Januari', 2025, 0, '2023-02-08'),
(0, 'Februari', 2025, 0, '2023-02-08'),
(0, 'Maret', 2025, 0, '2023-02-08'),
(0, 'April', 2025, 0, '2023-02-08'),
(0, 'Mei', 2025, 0, '2023-02-08'),
(0, 'Juni', 2025, 0, '2023-02-08'),
(0, 'Juli', 2025, 0, '2023-02-08'),
(0, 'Agustus', 2025, 0, '2023-02-08'),
(0, 'September', 2025, 0, '2023-02-08'),
(0, 'Oktober', 2025, 0, '2023-02-08'),
(0, 'November', 2025, 0, '2023-02-08'),
(0, 'Desember', 2025, 0, '2023-02-08');

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_alurkas`
-- (See below for the actual view)
--
CREATE TABLE `qry_alurkas` (
`notrs` varchar(50)
,`tgl` date
,`noref` varchar(50)
,`keterangan` varchar(100)
,`rekfk` varchar(10)
,`grupfk` varchar(11)
,`nm` varchar(100)
,`kas` tinyint(4)
,`debet` double
,`kredit` double
,`divisi` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_bayarhutang`
-- (See below for the actual view)
--
CREATE TABLE `qry_bayarhutang` (
`notrs` varchar(20)
,`tgl` date
,`jam` datetime
,`supplierfk` int(11)
,`totalbayar` double
,`ctn` varchar(200)
,`cabangfk` int(11)
,`posting` bit(1)
,`lock` bit(1)
,`dateadded` datetime
,`addedbyfk` int(11)
,`datemodified` datetime
,`lastuserfk` int(11)
,`validasi` varchar(50)
,`akunkas` varchar(20)
,`rek` varchar(50)
,`deposit` double
,`tunai` double
,`nobaris` smallint(6)
,`noref` varchar(20)
,`keterangan` varchar(100)
,`bayar` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_bayarpiutang`
-- (See below for the actual view)
--
CREATE TABLE `qry_bayarpiutang` (
`notrs` varchar(20)
,`tgl` date
,`jam` datetime
,`konsumenfk` int(11)
,`totalbayar` double
,`ctn` varchar(200)
,`cabangfk` int(11)
,`posting` bit(1)
,`lock` bit(1)
,`dateadded` datetime
,`addedbyfk` int(11)
,`datemodified` datetime
,`lastuserfk` int(11)
,`validasi` varchar(50)
,`akunkas` varchar(20)
,`rek` varchar(50)
,`nobaris` smallint(6)
,`noref` varchar(20)
,`keterangan` varchar(100)
,`bayar` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_beli`
-- (See below for the actual view)
--
CREATE TABLE `qry_beli` (
`notrs` varchar(20)
,`tgl` date
,`jam` datetime
,`noorder` varchar(20)
,`tglorder` datetime
,`supplierfk` int(11)
,`gudangfk` int(11)
,`carabayar` tinyint(4)
,`syarat` int(11)
,`tgljthtmp` datetime
,`totaljmlorder` double
,`totaljml` double
,`subtotal` double
,`disfaktur` double
,`jmldisfaktur` double
,`pajak` double
,`jmlpajak` double
,`biayalain` double
,`grandtotal` double
,`deposit` double
,`bayar` double
,`sisakurang` double
,`cicil` double
,`kurang` double
,`tglterima` datetime
,`ctn` varchar(200)
,`posting` bit(1)
,`dateadded` datetime
,`addedbyfk` int(11)
,`datemodified` datetime
,`lastuserfk` int(11)
,`validasi` varchar(50)
,`pilih` bit(1)
,`akunkas` varchar(20)
,`akunbiaya` varchar(20)
,`akunhutang` varchar(20)
,`akunpajak` varchar(20)
,`rek` varchar(50)
,`statuspajak` bit(1)
,`pulsa` bit(1)
,`beratawal` double
,`tunai` double
,`kartu` double
,`plat` varchar(30)
,`potberat` double
,`petugas` varchar(40)
,`nmsupplier` varchar(100)
,`nmgudang` varchar(100)
,`nmcarabayar` varchar(6)
,`pending` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_belidt_tidakada`
-- (See below for the actual view)
--
CREATE TABLE `qry_belidt_tidakada` (
`notrs` varchar(20)
,`nobaris` smallint(6)
,`itemfk` int(11)
,`jmlorder` double
,`jml` double
,`hargabl` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_beli_peritem`
-- (See below for the actual view)
--
CREATE TABLE `qry_beli_peritem` (
`notrs` varchar(20)
,`gudangfk` int(11)
,`tgl` date
,`itemfk` int(11)
,`kditem` varchar(20)
,`kategorifk` varchar(50)
,`nmitem` varchar(100)
,`nmkategori` varchar(100)
,`jml` double
,`nmsatuan` varchar(100)
,`hargabl` double
,`disitem` double
,`jmldisitem` double
,`total` double
,`disfaktur` double
,`nmgudang` varchar(100)
,`totaldisfaktur` double
,`totalbeli` double
,`pkp` tinyint(2)
,`ppn` int(2)
,`jenis` tinyint(4)
,`nmjenis` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_bukubesar_hutang`
-- (See below for the actual view)
--
CREATE TABLE `qry_bukubesar_hutang` (
`notrs` varchar(20)
,`tgl` date
,`supplierfk` int(11)
,`nmsupplier` varchar(100)
,`hutang` double
,`bayar` int(1)
,`ket` varchar(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_bukubesar_piutang`
-- (See below for the actual view)
--
CREATE TABLE `qry_bukubesar_piutang` (
`notrs` varchar(50)
,`tgl` date
,`konsumenfk` int(11)
,`noanggota` varchar(50)
,`nmkonsumen` varchar(255)
,`piutang` double
,`bayar` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_daftarhutang`
-- (See below for the actual view)
--
CREATE TABLE `qry_daftarhutang` (
`notrs` varchar(20)
,`tgl` date
,`supplierfk` int(11)
,`nmsupplier` varchar(100)
,`sisakurang` double
,`cicil` double
,`kurang` double
,`tgljthtmp` datetime
,`carabayar` tinyint(4)
,`deposit` double
,`grandtotal` double
,`bayar` double
,`saldo` double
,`noretur` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_daftarpiutang`
-- (See below for the actual view)
--
CREATE TABLE `qry_daftarpiutang` (
`notrs` varchar(50)
,`tgl` date
,`jam` datetime
,`tgljthtmp` datetime
,`konsumenfk` int(11)
,`kdkonsumen` varchar(50)
,`nmkonsumen` varchar(255)
,`grandtotal` double
,`bayar` double
,`piutang` double
,`terbayar` double
,`sisapiutang` double
,`carabayar` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_deposito`
-- (See below for the actual view)
--
CREATE TABLE `qry_deposito` (
`pk` int(11)
,`notrs` varchar(50)
,`tgl` date
,`iddeposito` varchar(50)
,`norekening` varchar(50)
,`statusbunga` tinyint(4)
,`aro` tinyint(4)
,`tglbukarek` date
,`jangkawaktu` int(11)
,`tgljtmp` date
,`tenor` double
,`kd` varchar(50)
,`ktp` varchar(50)
,`nm` varchar(255)
,`alamat` varchar(255)
,`tlp` varchar(50)
,`departemen` varchar(50)
,`setor` double
,`admin` double
,`totaldeposito` double
,`bunga` double
,`jmlbunga` double
,`pinalti` double
,`pajak` double
,`jmlpajak` double
,`akunkas` varchar(50)
,`akunbunga` varchar(10)
,`aktif` tinyint(4)
,`ctn` varchar(255)
,`akunposting` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_detailjurnal`
-- (See below for the actual view)
--
CREATE TABLE `qry_detailjurnal` (
`notrs` varchar(50)
,`SumOfdebet` double
,`SumOfkredit` double
,`statu` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_gudang1`
-- (See below for the actual view)
--
CREATE TABLE `qry_gudang1` (
`itemfk` int(11)
,`QIQI MART` double
,`Gudang I` int(1)
,`Gudang II` int(1)
,`QIQI MART KLUNGKUNG` int(1)
,`hargapokok` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_gudang2`
-- (See below for the actual view)
--
CREATE TABLE `qry_gudang2` (
`itemfk` int(11)
,`QIQI MART` int(1)
,`Gudang I` double
,`Gudang II` int(1)
,`QIQI MART KLUNGKUNG` int(1)
,`hargapokok` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_gudang3`
-- (See below for the actual view)
--
CREATE TABLE `qry_gudang3` (
`itemfk` int(11)
,`QIQI MART` int(1)
,`Gudang I` int(1)
,`Gudang II` double
,`QIQI MART KLUNGKUNG` int(1)
,`hargapokok` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_gudang4`
-- (See below for the actual view)
--
CREATE TABLE `qry_gudang4` (
`itemfk` int(11)
,`QIQI MART` int(1)
,`Gudang I` int(1)
,`Gudang II` int(1)
,`QIQI MART KLUNGKUNG` double
,`hargapokok` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_gudang_all`
-- (See below for the actual view)
--
CREATE TABLE `qry_gudang_all` (
`itemfk` int(11)
,`QIQI MART` double
,`Gudang I` double
,`Gudang II` double
,`QIQI MART KLUNGKUNG` double
,`hargapokok` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_hitungstok`
-- (See below for the actual view)
--
CREATE TABLE `qry_hitungstok` (
`gudangfk` int(11)
,`ket` varchar(13)
,`itemfk` int(11)
,`masuk` double
,`keluar` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_hutang_dt`
-- (See below for the actual view)
--
CREATE TABLE `qry_hutang_dt` (
`notrs` varchar(20)
,`gudangfk` int(11)
,`tgl` date
,`tgljthtmp` datetime
,`grandtotal` double
,`deposit` double
,`bayar` double
,`sisakurang` double
,`cicil` double
,`kurang` double
,`supplierfk` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_item`
-- (See below for the actual view)
--
CREATE TABLE `qry_item` (
`pk` int(11)
,`tipe` tinyint(6)
,`kode` varchar(100)
,`kd` varchar(20)
,`bd` varchar(50)
,`nm` varchar(100)
,`jenis` tinyint(4)
,`divisifk` varchar(50)
,`jenisfk` varchar(50)
,`kategorifk` varchar(50)
,`ukuranfk` varchar(50)
,`merekfk` varchar(50)
,`satuanfk` int(11)
,`profit` double
,`jmlprofit` double
,`hargabl` double
,`hargajl` double
,`grosira` double
,`grosirb` double
,`grosirc` double
,`persengrosirb` double
,`persengrosirc` double
,`diskon` double
,`belimin` double
,`pembulatan` double
,`hargapokok` double
,`metodehpp` tinyint(4)
,`stockmin` double
,`stock` double
,`gudangfk` int(11)
,`supplierfk` int(11)
,`rekhpp` varchar(20)
,`rekjual` varchar(20)
,`rekpersediaan` varchar(20)
,`rekreturjual` varchar(20)
,`pjkbeli` int(11)
,`pjkjual` int(11)
,`nmgambar` varchar(100)
,`ctn` mediumtext
,`status` varchar(15)
,`dateadded` datetime
,`addedbyfk` int(11)
,`datemodified` datetime
,`lastuserfk` int(11)
,`komisisales` double
,`pilih` bit(1)
,`aktif` bit(1)
,`chkmargin` tinyint(1)
,`satuanfk1` int(11)
,`konversi1` double
,`hargapokok1` double
,`retail1` double
,`grosir1A` double
,`grosir1b` double
,`grosir1c` double
,`persenretail1` double
,`persengrosir1a` double
,`persengrosir1b` double
,`persengrosir1c` double
,`satuanfk2` int(11)
,`konversi2` double
,`hargapokok2` double
,`retail2` double
,`grosir2a` double
,`grosir2b` double
,`grosir2c` double
,`persenretail2` double
,`persengrosir2a` double
,`persengrosir2b` double
,`persengrosir2c` double
,`grosird` double
,`grosir1d` double
,`grosir2d` double
,`grosir3d` double
,`persengrosird` double
,`persengrosir2d` double
,`persengrosir1d` double
,`persengrosir3d` double
,`nmjenis` varchar(10)
,`nmkategori` varchar(100)
,`nmsatuan` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_jual`
-- (See below for the actual view)
--
CREATE TABLE `qry_jual` (
`notrs` varchar(50)
,`pk` int(11)
,`jenistransaksi` int(11)
,`namatransaksi` varchar(20)
,`tgl` date
,`jam` datetime
,`noorder` varchar(20)
,`tglorder` datetime
,`konsumenfk` int(11)
,`gudangfk` int(11)
,`salesmanfk` int(11)
,`komisisales` double
,`carabayar` tinyint(4)
,`syarat` int(11)
,`tgljthtmp` datetime
,`totaljmlorder` double
,`totaljml` double
,`subtotal` double
,`disfaktur` double
,`jmldisfaktur` double
,`pajak` double
,`jmlpajak` double
,`biayalain` double
,`grandtotal` double
,`jmlchg` double
,`carabayar1` int(11)
,`tunai` double
,`kartu` double
,`kembali` double
,`bayar` double
,`sisakurang` double
,`cicil` double
,`kartukreditfk` int(11)
,`nokartukredit` varchar(50)
,`chg` double
,`kurang` double
,`tglkirim` datetime
,`statuskirim` varchar(50)
,`biayakirim` double
,`kdcargo` int(11)
,`noresi` varchar(50)
,`tipekirim` bit(1)
,`ctn` varchar(200)
,`posting` bit(1)
,`dateadded` datetime
,`addedbyfk` int(11)
,`pending` bit(1)
,`datemodified` datetime
,`lastuserfk` int(11)
,`validasi` varchar(50)
,`akunkas` varchar(20)
,`akunbiaya` varchar(20)
,`akunhutang` varchar(20)
,`akunpajak` varchar(20)
,`rek` varchar(50)
,`statuspajak` bit(3)
,`addedpoin` tinyint(3)
,`statuspending` bit(3)
,`statuspenjualan` bit(3)
,`pulsa` bit(3)
,`jmlbayarpiutang` double
,`spesial` bit(3)
,`dp` double
,`totalkomisi` double
,`plat` varchar(20)
,`sopir` varchar(50)
,`jeniskendaraan` varchar(100)
,`diskonberat` double
,`jmlpoin` double
,`nilaipoin` double
,`totalpoin` double
,`biayasopir` double
,`rekselisihtimbangan` varchar(5)
,`rekpotpabrik` varchar(5)
,`rekbiayasopir` varchar(5)
,`rekbongkar` varchar(5)
,`nmkonsumen` varchar(255)
,`nmgudang` varchar(100)
,`nmsalesman` varchar(100)
,`pilih` int(1)
,`voucher` double
);

-- --------------------------------------------------------

--
-- Table structure for table `qry_jual_peritem`
--

CREATE TABLE `qry_jual_peritem` (
  `notrs` varchar(50) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kditem` varchar(20) DEFAULT NULL,
  `kategorifk` varchar(50) DEFAULT NULL,
  `nmitem` varchar(100) DEFAULT NULL,
  `nmkategori` varchar(100) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `nmsatuan` varchar(100) DEFAULT NULL,
  `hargabl` double DEFAULT NULL,
  `disitem` double DEFAULT NULL,
  `jmldisitem` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `totaldisfaktur` double DEFAULT NULL,
  `totalbeli` double DEFAULT NULL,
  `pkp` tinyint(2) DEFAULT NULL,
  `ppn` int(2) DEFAULT NULL,
  `jenis` tinyint(4) DEFAULT NULL,
  `nmjenis` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_jual_persupplier`
--

CREATE TABLE `qry_jual_persupplier` (
  `tgl` date DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `nmitem` varchar(100) DEFAULT NULL,
  `kategorifk` varchar(50) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `nmsupplier` varchar(100) DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `hargajl` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `totaljualperitem` double DEFAULT NULL,
  `hpp` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_jual_tdkada`
--

CREATE TABLE `qry_jual_tdkada` (
  `pk` int(11) DEFAULT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kdpaket` varchar(10) DEFAULT NULL,
  `qtypaket` double DEFAULT NULL,
  `hargapaket` double DEFAULT NULL,
  `jmlorder` double DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `hargajl` double DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `disitem` double DEFAULT NULL,
  `displus` double DEFAULT NULL,
  `jmldisitem` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `jmlretur` double DEFAULT NULL,
  `jmlreturPaket` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `komisi` double DEFAULT NULL,
  `noref` varchar(50) DEFAULT NULL,
  `notrskonsinyasi` varchar(20) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT NULL,
  `pulsa` bit(1) DEFAULT NULL,
  `ctnpulsa` varchar(100) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `hargasales` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_jurnal_awal`
--

CREATE TABLE `qry_jurnal_awal` (
  `tgl` date DEFAULT NULL,
  `rekfk` varchar(10) DEFAULT NULL,
  `nmrek` varchar(100) DEFAULT NULL,
  `debet` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `jnspst` varchar(2) DEFAULT NULL,
  `tipe` varchar(100) DEFAULT NULL,
  `grupfk` varchar(11) DEFAULT NULL,
  `jnsrek` varchar(50) DEFAULT NULL,
  `divisi` int(11) DEFAULT NULL,
  `kas` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_kasir`
--

CREATE TABLE `qry_kasir` (
  `notrs` varchar(50) DEFAULT NULL,
  `jenis` varchar(5) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `voucher` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `tunai` double DEFAULT NULL,
  `kartu` double DEFAULT NULL,
  `nmkasir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_kasir_detail`
--

CREATE TABLE `qry_kasir_detail` (
  `namatransaksi` varchar(20) DEFAULT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `jmldisfaktur` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `nmkonsumen` varchar(255) DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `nmcarabayar` varchar(6) DEFAULT NULL,
  `useradd` varchar(50) DEFAULT NULL,
  `nmrek` varchar(100) DEFAULT NULL,
  `jmltunai` double DEFAULT NULL,
  `kartu` double DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `voucher` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_kasir_rekap`
--

CREATE TABLE `qry_kasir_rekap` (
  `tgl` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_labarugi`
--

CREATE TABLE `qry_labarugi` (
  `tgl` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  `totaljual` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `hpp` double DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `jmlkonversi` double DEFAULT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `nmitem` varchar(100) DEFAULT NULL,
  `kategorifk` varchar(50) DEFAULT NULL,
  `nmkategori` varchar(100) DEFAULT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `nmsupplier` varchar(100) DEFAULT NULL,
  `pkp` tinyint(2) DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_mutasi_deposito`
--

CREATE TABLE `qry_mutasi_deposito` (
  `notrs` int(11) DEFAULT NULL,
  `nodeposito` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `ket` varchar(14) DEFAULT NULL,
  `Debet` double DEFAULT NULL,
  `Kredit` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_orderbeli`
--

CREATE TABLE `qry_orderbeli` (
  `deposit` double DEFAULT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `jmldisfaktur` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `jmlpajak` double DEFAULT NULL,
  `biayalain` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `tglpakai` datetime DEFAULT NULL,
  `ststerima` varchar(20) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `pilih` bit(1) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `beratawal` double DEFAULT NULL,
  `plat` varchar(15) DEFAULT NULL,
  `potberat` double DEFAULT NULL,
  `petugas` varchar(50) DEFAULT NULL,
  `nmsupplier` varchar(100) DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `nmcarabayar` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_pinjaman`
--

CREATE TABLE `qry_pinjaman` (
  `pk` int(11) DEFAULT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `pinjamanfk` int(11) DEFAULT NULL,
  `nasabahfk` int(11) DEFAULT NULL,
  `jaminan_1` varchar(200) DEFAULT NULL,
  `jaminan_2` varchar(200) DEFAULT NULL,
  `sistempinjam` tinyint(4) DEFAULT NULL,
  `periodepinjam` varchar(10) DEFAULT NULL,
  `totalpeminjaman` double DEFAULT NULL,
  `bungapinjam` double DEFAULT NULL,
  `lamapinjam` int(11) DEFAULT NULL,
  `biayaadmin` double DEFAULT NULL,
  `biayaprovisi` double DEFAULT NULL,
  `biayalain` double DEFAULT NULL,
  `pokokpinjaman` double DEFAULT NULL,
  `jumlahangsuran` double DEFAULT NULL,
  `notabungan` varchar(50) DEFAULT NULL,
  `akuntabungan` varchar(10) DEFAULT NULL,
  `penyisihanbunga` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `statusproses` varchar(1) DEFAULT NULL,
  `tanggalpersetujuan` date DEFAULT NULL,
  `tanggaljatuhtempo` date DEFAULT NULL,
  `tanggalbayarpertama` date DEFAULT NULL,
  `nmjaminan1` varchar(250) DEFAULT NULL,
  `nmjaminan2` varchar(250) DEFAULT NULL,
  `alamatjaminan1` varchar(250) DEFAULT NULL,
  `alamatjaminan2` varchar(250) DEFAULT NULL,
  `jenisjaminan1` varchar(100) DEFAULT NULL,
  `jenisjaminan2` varchar(100) DEFAULT NULL,
  `nilaijaminan1` double DEFAULT NULL,
  `nilaijaminan2` double DEFAULT NULL,
  `nojurnal` varchar(50) DEFAULT NULL,
  `akunkas` varchar(50) DEFAULT NULL,
  `akunmacet` varchar(10) DEFAULT NULL,
  `akunprovisi` varchar(10) DEFAULT NULL,
  `akunlain` varchar(10) DEFAULT NULL,
  `akunadmin` varchar(10) DEFAULT NULL,
  `nmpenjamin` varchar(150) DEFAULT NULL,
  `pekerjaanpenjamin` varchar(50) DEFAULT NULL,
  `alamatpenjamin` varchar(250) DEFAULT NULL,
  `Tlppenjamin` varchar(50) DEFAULT NULL,
  `ktppenjamin` varchar(50) DEFAULT NULL,
  `kolektibilitas` varchar(50) DEFAULT NULL,
  `sisapinjaman` double DEFAULT NULL,
  `jmlsaldomacet` tinyint(1) DEFAULT NULL,
  `tglmacet` date DEFAULT NULL,
  `autobayar` tinyint(4) DEFAULT NULL,
  `jenispinjaman` tinyint(4) DEFAULT NULL,
  `tutup` tinyint(4) DEFAULT NULL,
  `akunpinjam` varchar(20) DEFAULT NULL,
  `akunbunga` varchar(20) DEFAULT NULL,
  `biayaasuransi` double DEFAULT NULL,
  `biayacadangan` double DEFAULT NULL,
  `akuncadangan` varchar(10) DEFAULT NULL,
  `akunasuransi` varchar(10) DEFAULT NULL,
  `noangsuran` int(11) DEFAULT NULL,
  `tglbayarterakhir` date DEFAULT NULL,
  `nonpinjaman` tinyint(4) DEFAULT NULL,
  `saldotambahan` double DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `sistembunga` varchar(50) DEFAULT NULL,
  `kd` varchar(50) DEFAULT NULL,
  `nmnasabah` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `wilayah` varchar(50) DEFAULT NULL,
  `statuskredit` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_pinjaman_dt`
--

CREATE TABLE `qry_pinjaman_dt` (
  `pk` int(11) DEFAULT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `pinjamanfk` int(11) DEFAULT NULL,
  `nasabahfk` int(11) DEFAULT NULL,
  `jaminan_1` varchar(200) DEFAULT NULL,
  `jaminan_2` varchar(200) DEFAULT NULL,
  `sistempinjam` tinyint(4) DEFAULT NULL,
  `periodepinjam` varchar(10) DEFAULT NULL,
  `totalpeminjaman` double DEFAULT NULL,
  `bungapinjam` double DEFAULT NULL,
  `lamapinjam` int(11) DEFAULT NULL,
  `biayaadmin` double DEFAULT NULL,
  `biayaprovisi` double DEFAULT NULL,
  `biayalain` double DEFAULT NULL,
  `pokokpinjaman` double DEFAULT NULL,
  `pokokangsuran` double DEFAULT NULL,
  `bungaangsuran` double DEFAULT NULL,
  `jumlahangsuran` double DEFAULT NULL,
  `notabungan` varchar(50) DEFAULT NULL,
  `akuntabungan` varchar(10) DEFAULT NULL,
  `penyisihanbunga` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `statusproses` varchar(1) DEFAULT NULL,
  `tanggalpersetujuan` date DEFAULT NULL,
  `tanggaljatuhtempo` date DEFAULT NULL,
  `tanggalbayarpertama` date DEFAULT NULL,
  `nmjaminan1` varchar(250) DEFAULT NULL,
  `nmjaminan2` varchar(250) DEFAULT NULL,
  `alamatjaminan1` varchar(250) DEFAULT NULL,
  `alamatjaminan2` varchar(250) DEFAULT NULL,
  `jenisjaminan1` varchar(100) DEFAULT NULL,
  `jenisjaminan2` varchar(100) DEFAULT NULL,
  `nilaijaminan1` double DEFAULT NULL,
  `nilaijaminan2` double DEFAULT NULL,
  `nojurnal` varchar(50) DEFAULT NULL,
  `akunkas` varchar(50) DEFAULT NULL,
  `akunmacet` varchar(10) DEFAULT NULL,
  `akunprovisi` varchar(10) DEFAULT NULL,
  `akunlain` varchar(10) DEFAULT NULL,
  `akunadmin` varchar(10) DEFAULT NULL,
  `nmpenjamin` varchar(150) DEFAULT NULL,
  `pekerjaanpenjamin` varchar(50) DEFAULT NULL,
  `alamatpenjamin` varchar(250) DEFAULT NULL,
  `Tlppenjamin` varchar(50) DEFAULT NULL,
  `ktppenjamin` varchar(50) DEFAULT NULL,
  `kolektibilitas` varchar(50) DEFAULT NULL,
  `sisapinjaman` double DEFAULT NULL,
  `jmlsaldomacet` tinyint(1) DEFAULT NULL,
  `tglmacet` date DEFAULT NULL,
  `autobayar` tinyint(4) DEFAULT NULL,
  `jenispinjaman` tinyint(4) DEFAULT NULL,
  `tutup` tinyint(4) DEFAULT NULL,
  `akunpinjam` varchar(20) DEFAULT NULL,
  `akunbunga` varchar(20) DEFAULT NULL,
  `biayaasuransi` double DEFAULT NULL,
  `biayacadangan` double DEFAULT NULL,
  `akuncadangan` varchar(10) DEFAULT NULL,
  `akunasuransi` varchar(10) DEFAULT NULL,
  `noangsuran` int(11) DEFAULT NULL,
  `tglbayarterakhir` date DEFAULT NULL,
  `nonpinjaman` tinyint(4) DEFAULT NULL,
  `saldotambahan` double DEFAULT NULL,
  `tipejaminan` tinyint(4) DEFAULT NULL,
  `hakmilik` varchar(50) DEFAULT NULL,
  `hartatetap` varchar(50) DEFAULT NULL,
  `nosertifikat` varchar(50) DEFAULT NULL,
  `nilaihartatetap` double DEFAULT NULL,
  `atasnama` varchar(100) DEFAULT NULL,
  `suratukur` varchar(50) DEFAULT NULL,
  `tglsuratukur` varchar(50) DEFAULT NULL,
  `luas` varchar(10) DEFAULT NULL,
  `nib` varchar(50) DEFAULT NULL,
  `alamatjaminan` varchar(225) DEFAULT NULL,
  `hartabergerak` varchar(50) DEFAULT NULL,
  `bpkb` text DEFAULT NULL,
  `nopol` varchar(20) DEFAULT NULL,
  `merk` varchar(50) DEFAULT NULL,
  `warna` varchar(30) DEFAULT NULL,
  `isisilinder` varchar(10) DEFAULT NULL,
  `tahunpembuatan` varchar(10) DEFAULT NULL,
  `samsat` text DEFAULT NULL,
  `norangka` varchar(50) DEFAULT NULL,
  `ankendaraan` varchar(220) DEFAULT NULL,
  `alamatkendaraan` varchar(225) DEFAULT NULL,
  `nilaikendaraan` double DEFAULT NULL,
  `ftjaminan1` longblob DEFAULT NULL,
  `ftjaminan2` longblob DEFAULT NULL,
  `statuspasangan` varchar(50) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `sistembunga` varchar(50) DEFAULT NULL,
  `kd` varchar(50) DEFAULT NULL,
  `ktp` varchar(50) DEFAULT NULL,
  `nmnasabah` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `wilayah` varchar(50) DEFAULT NULL,
  `statuskredit` varchar(11) DEFAULT NULL,
  `jmlhari` int(7) DEFAULT NULL,
  `kolektabilitas` varchar(13) DEFAULT NULL,
  `angsuranbulanan` double DEFAULT NULL,
  `bungabulanan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_returbeli`
--

CREATE TABLE `qry_returbeli` (
  `notrs` varchar(20) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `noref` varchar(20) DEFAULT NULL,
  `tglref` datetime DEFAULT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `jmldisfaktur` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `jmlpajak` double DEFAULT NULL,
  `biayalain` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `sisakurang` double DEFAULT NULL,
  `cicil` double DEFAULT NULL,
  `kurang` double DEFAULT NULL,
  `tglkirim` datetime DEFAULT NULL,
  `statuskirim` varchar(50) DEFAULT NULL,
  `biayakirim` double DEFAULT NULL,
  `kdcargo` int(11) DEFAULT NULL,
  `noresi` varchar(50) DEFAULT NULL,
  `tipekirim` bit(1) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `nmsupplier` varchar(100) DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `nmcarabayar` varchar(6) DEFAULT NULL,
  `stspothutang` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_returbeli_peritem`
--

CREATE TABLE `qry_returbeli_peritem` (
  `notrs` varchar(20) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kditem` varchar(20) DEFAULT NULL,
  `kategorifk` varchar(50) DEFAULT NULL,
  `nmitem` varchar(100) DEFAULT NULL,
  `nmkategori` varchar(100) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `nmsatuan` varchar(100) DEFAULT NULL,
  `hargabl` double DEFAULT NULL,
  `disitem` double DEFAULT NULL,
  `jmldisitem` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `totaldisfaktur` double DEFAULT NULL,
  `totalbeli` double DEFAULT NULL,
  `pkp` tinyint(2) DEFAULT NULL,
  `ppn` int(2) DEFAULT NULL,
  `jenis` tinyint(4) DEFAULT NULL,
  `nmjenis` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_returjual`
--

CREATE TABLE `qry_returjual` (
  `notrs` varchar(20) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `noref` varchar(20) DEFAULT NULL,
  `tglref` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `jmldisfaktur` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `jmlpajak` double DEFAULT NULL,
  `biayalain` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `sisakurang` double DEFAULT NULL,
  `cicil` double DEFAULT NULL,
  `kurang` double DEFAULT NULL,
  `tglterima` datetime DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `nmkonsumen` varchar(255) DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `nmcarabayar` varchar(6) DEFAULT NULL,
  `nmsalesman` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_satuan`
--

CREATE TABLE `qry_satuan` (
  `pk` int(11) DEFAULT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `bd` varchar(50) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `retail` double DEFAULT NULL,
  `grosira` double DEFAULT NULL,
  `grosirb` double DEFAULT NULL,
  `grosirc` double DEFAULT NULL,
  `grosird` double DEFAULT NULL,
  `jmlkonversi` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_stok`
--

CREATE TABLE `qry_stok` (
  `pk` int(11) DEFAULT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `stockmin` double DEFAULT NULL,
  `kategorifk` varchar(50) DEFAULT NULL,
  `nmitem` varchar(100) DEFAULT NULL,
  `stok` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_stokopname`
--

CREATE TABLE `qry_stokopname` (
  `ket` varchar(6) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `jmlkonversi` double DEFAULT NULL,
  `totalmasuk` double DEFAULT NULL,
  `totalkeluar` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_stokperiode`
--

CREATE TABLE `qry_stokperiode` (
  `tgl` datetime DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `masuk` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `totmasuk` double DEFAULT NULL,
  `keluar` double DEFAULT NULL,
  `totkeluar` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_tarik_deposito`
--

CREATE TABLE `qry_tarik_deposito` (
  `pk` int(11) DEFAULT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `depositofk` int(11) DEFAULT NULL,
  `nodeposito` varchar(50) DEFAULT NULL,
  `nasabahfk` int(11) DEFAULT NULL,
  `tenor` double DEFAULT NULL,
  `tgljtmp` date DEFAULT NULL,
  `norekening` varchar(50) DEFAULT NULL,
  `admin` double DEFAULT NULL,
  `deposito` double DEFAULT NULL,
  `bunga` double DEFAULT NULL,
  `jmlbunga` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `jmlpajak` double DEFAULT NULL,
  `pinalti` double DEFAULT NULL,
  `jmlpinalti` double DEFAULT NULL,
  `totaldeposito` double DEFAULT NULL,
  `akunkas` varchar(50) DEFAULT NULL,
  `akunbunga` varchar(10) DEFAULT NULL,
  `kolektorfk` int(11) DEFAULT NULL,
  `validasiperson` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ctn` varchar(250) DEFAULT NULL,
  `kdkas` varchar(50) DEFAULT NULL,
  `notrstabungan` varchar(50) DEFAULT NULL,
  `statusbunga` tinyint(4) DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL,
  `kd` varchar(50) DEFAULT NULL,
  `nm` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_trx_deposito`
--

CREATE TABLE `qry_trx_deposito` (
  `nodeposito` varchar(50) DEFAULT NULL,
  `depositfk` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `bunga` double DEFAULT NULL,
  `tarik` int(1) DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `norekening` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qry_wait`
--

CREATE TABLE `qry_wait` (
  `notrs` varchar(50) DEFAULT NULL,
  `pk` int(11) DEFAULT NULL,
  `jenistransaksi` int(11) DEFAULT NULL,
  `namatransaksi` varchar(20) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `noorder` varchar(20) DEFAULT NULL,
  `tglorder` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljmlorder` double DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `jmldisfaktur` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `jmlpajak` double DEFAULT NULL,
  `biayalain` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `jmlchg` double DEFAULT NULL,
  `carabayar1` int(11) DEFAULT NULL,
  `tunai` double DEFAULT NULL,
  `kartu` double DEFAULT NULL,
  `kembali` double DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `sisakurang` double DEFAULT NULL,
  `cicil` double DEFAULT NULL,
  `kartukreditfk` int(11) DEFAULT NULL,
  `nokartukredit` varchar(50) DEFAULT NULL,
  `chg` double DEFAULT NULL,
  `kurang` double DEFAULT NULL,
  `tglkirim` datetime DEFAULT NULL,
  `statuskirim` varchar(50) DEFAULT NULL,
  `biayakirim` double DEFAULT NULL,
  `kdcargo` int(11) DEFAULT NULL,
  `noresi` varchar(50) DEFAULT NULL,
  `tipekirim` bit(1) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `pending` bit(1) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `statuspajak` bit(3) DEFAULT NULL,
  `addedpoin` bit(3) DEFAULT NULL,
  `statuspending` bit(3) DEFAULT NULL,
  `statuspenjualan` bit(3) DEFAULT NULL,
  `pulsa` bit(3) DEFAULT NULL,
  `jmlbayarpiutang` double DEFAULT NULL,
  `spesial` bit(3) DEFAULT NULL,
  `dp` double DEFAULT NULL,
  `totalkomisi` double DEFAULT NULL,
  `plat` varchar(20) DEFAULT NULL,
  `sopir` varchar(50) DEFAULT NULL,
  `jeniskendaraan` varchar(100) DEFAULT NULL,
  `diskonberat` double DEFAULT NULL,
  `jmlpoin` double DEFAULT NULL,
  `nilaipoin` double DEFAULT NULL,
  `totalpoin` double DEFAULT NULL,
  `biayasopir` double DEFAULT NULL,
  `rekselisihtimbangan` varchar(5) DEFAULT NULL,
  `rekpotpabrik` varchar(5) DEFAULT NULL,
  `rekbiayasopir` varchar(5) DEFAULT NULL,
  `rekbongkar` varchar(5) DEFAULT NULL,
  `nmkonsumen` varchar(255) DEFAULT NULL,
  `nmgudang` varchar(100) DEFAULT NULL,
  `nmsalesman` varchar(100) DEFAULT NULL,
  `pilih` int(1) DEFAULT NULL,
  `voucher` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r_formatnr`
--

CREATE TABLE `r_formatnr` (
  `nobaris` int(11) NOT NULL,
  `kolom1` varchar(50) NOT NULL,
  `kolom2` varchar(50) NOT NULL,
  `kolom3` varchar(50) NOT NULL,
  `kolom4` varchar(50) NOT NULL,
  `kolom5` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `r_formatnr`
--

INSERT INTO `r_formatnr` (`nobaris`, `kolom1`, `kolom2`, `kolom3`, `kolom4`, `kolom5`) VALUES
(1, 'TX=Aktiva Lancar', '', '', '', ''),
(2, '', 'TG=10/Kolom3', '', '', ''),
(3, 'TX=Total Aktiva Lancar', '', '', 'TOT=Kolom3/Baris2-Baris2', 'GA=Kolom3'),
(4, 'TX=', '', '', '', ''),
(5, 'TX=Aktiva Tetap', '', '', '', ''),
(6, '', 'TG=11/Kolom3', '', '', ''),
(7, '', 'TG=12/Kolom3', '', '', ''),
(8, 'TX=Total Aktiva Tetap', '', '', 'TOT=Kolom3/Baris6-Baris7', 'GA=Kolom3'),
(9, 'TX=', '', '', '', ''),
(10, 'TX=Rupa-Rupa Aktiva', '', '', '', ''),
(11, '', 'TG=15/Kolom3', '', '', ''),
(12, 'TX=Total Rupa-Rupa Aktiva', '', '', 'TOT=Kolom3/Baris11-Baris11', 'GA=Kolom3'),
(13, 'TX=TOTAL AKTIVA', '', '', 'TOT=Kolom4/Baris3-Baris12', 'GA=Kolom4'),
(14, 'TX=', '', '', '', ''),
(15, 'TX=Hutang Jangka Pendek', '', '', '', ''),
(16, '', 'TG=20/Kolom3', '', '', ''),
(17, 'TX=Total Hutang Jangka Pendek', '', '', 'TOT=Kolom3/Baris16-Baris16', 'GA=Kolom3'),
(18, 'TX=', '', '', '', ''),
(19, 'TX=Jasa Dan Dana SHU', '', '', '', ''),
(20, '', 'TG=21/Kolom3', '', '', ''),
(21, 'TX=Total Jasa Dan Dana SHU', '', '', 'TOT=Kolom3/Baris20-Baris20', 'GA=Kolom3'),
(22, 'TX=', '', '', '', ''),
(23, 'TX=Hutang Jangka Panjang', '', '', '', ''),
(24, '', 'TG=22/Kolom3', '', '', ''),
(25, 'TX=Total Hutang Jangka Panjang', '', '', 'TOT=Kolom3/Baris24-Baris24', 'GA=Kolom3'),
(26, 'TX=Total Kewajiban', '', '', 'TOT=Kolom4/Baris17-Baris25', 'GA=Kolom4'),
(27, 'TX=', '', '', '', ''),
(28, 'TX=Modal', '', '', '', ''),
(29, '', 'TG=30/Kolom3', '', '', ''),
(30, '', 'TG=31/Kolom3', '', '', ''),
(31, '', 'TG=32/Kolom3', '', '', ''),
(32, '', 'TG=33/Kolom3', '', '', ''),
(33, 'TX=Total Modal', '', '', 'TOT=Kolom3/Baris29-Baris32', 'GA=Kolom3'),
(34, 'TX=TOTAL HUTANG & MODAL', '', '', 'TOT=Kolom4/Baris26-Baris33', 'GA=Kolom4');

-- --------------------------------------------------------

--
-- Table structure for table `r_formatrl`
--

CREATE TABLE `r_formatrl` (
  `nobaris` int(11) NOT NULL,
  `kolom1` varchar(100) NOT NULL,
  `kolom2` varchar(100) NOT NULL,
  `kolom3` varchar(100) NOT NULL,
  `kolom4` varchar(100) NOT NULL,
  `kolom5` varchar(100) NOT NULL,
  `formatlap` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `r_formatrl`
--

INSERT INTO `r_formatrl` (`nobaris`, `kolom1`, `kolom2`, `kolom3`, `kolom4`, `kolom5`, `formatlap`) VALUES
(1, 'TX=Pendapatan :', '', '', '', '', 'DGJ'),
(2, '', 'TG=40/Kolom3', '', '', '', 'DGJ'),
(3, '', 'TG=42/Kolom3', '', '', '', 'DGJ'),
(4, 'TX=Total Pendapatan', '', '', 'TOT=Kolom3/Baris2-Baris3', 'GA=Kolom3', 'DGJ'),
(5, 'TX=', '', '', '', '', 'DGJ'),
(6, 'TX=Biaya Usaha :', '', '', '', '', 'DGJ'),
(7, '', 'TG=60/Kolom3', '', '', '', 'DGJ'),
(8, 'TX=Total Biaya Usaha', '', '', 'TOT=Kolom3/Baris7-Baris7', 'GA=Kolom3', 'DGJ'),
(9, 'TX=', '', '', '', '', 'DGJ'),
(10, 'TX=Biaya Admin & Umum :', '', '', '', '', 'DGJ'),
(11, '', 'TG=61/Kolom3', '', '', '', 'DGJ'),
(12, 'TX=Total Biaya Admin & Umum', '', '', 'TOT=Kolom3/Baris11-Baris11', 'GA=Kolom3', 'DGJ'),
(13, 'TX=', '', '', '', '', 'DGJ'),
(14, 'TX=TOTAL BIAYA', '', '', 'TOT=Kolom4/Baris8-Baris12', 'GA=Kolom4', 'DGJ'),
(15, 'TX=', '', '', '', '', 'DGJ'),
(16, 'TX=RUGI/LABA USAHA', '', '', 'TOT=Kolom4/Baris4-Baris12', 'GA=Kolom4', 'DGJ'),
(17, 'TX=Pendapatan Diluar Usaha :', '', '', '', '', 'DGJ'),
(18, '', 'TG=70/Kolom3', '', '', '', 'DGJ'),
(19, 'TX=Total Pendapatan Diluar Usaha', '', '', 'TOT=Kolom3/Baris18-Baris18', 'GA=Kolom3', 'DGJ'),
(20, 'TX=', '', '', '', '', 'DGJ'),
(21, 'TX=Biaya Diluar Usaha :', '', '', '', '', 'DGJ'),
(22, '', 'TG=80/Kolom3', '', '', '', 'DGJ'),
(23, 'TX=Total Biaya Diluar Usaha', '', '', 'TOT=Kolom3/Baris22-Baris22', 'GA=Kolom3', 'DGJ'),
(24, 'TX=', '', '', '', '', 'DGJ'),
(25, 'TX=SHU Sebelum Pajak', '', '', 'TOT=Kolom4/Baris16-Baris23', 'GA=Kolom4', 'DGJ'),
(26, 'TX=Biaya Pajak :', '', '', '', '', 'DGJ'),
(27, '', 'TG=81/Kolom3', '', '', '', 'DGJ'),
(28, 'TX=Total Biaya Pajak', '', '', 'TOT=Kolom3/Baris27-Baris27', 'GA=Kolom3', 'DGJ'),
(29, 'TX=SHU Setelah Dipotong Pajak', '', '', 'TOT=Kolom4/Baris25-Baris28', 'GA=Kolom4', 'DGJ');

-- --------------------------------------------------------

--
-- Table structure for table `r_formatrl2`
--

CREATE TABLE `r_formatrl2` (
  `nobaris` smallint(6) NOT NULL,
  `kolom1` varchar(50) NOT NULL,
  `kolom2` varchar(50) NOT NULL,
  `kolom3` varchar(50) NOT NULL,
  `kolom4` varchar(50) NOT NULL,
  `kolom5` varchar(50) NOT NULL,
  `formatlap` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `r_formatrl2`
--

INSERT INTO `r_formatrl2` (`nobaris`, `kolom1`, `kolom2`, `kolom3`, `kolom4`, `kolom5`, `formatlap`) VALUES
(1, 'TX=Penjualan :', ' ', '', '', '', 'DGJ'),
(2, '', 'TG=4-11\\Kolom3', '', '', '', 'DGJ'),
(3, '', 'TG=4-12\\Kolom3', '', '', '', 'DGJ'),
(4, 'TX=Penjualan Bersih', '', '', 'TOT=Kolom3\\Baris2-Baris3', 'GA=Kolom3', 'DGJ'),
(5, 'TX=', '', '', '', '', 'DGJ'),
(6, 'TX=Harga Pokok Penjualan (HPP) :', '', '', '', '', 'DGJ'),
(7, '', 'TG=1-20\\Kolom3', '', '', '', 'DGJ'),
(8, '', 'TG=5-30\\Kolom3', '', '', '', 'DGJ'),
(9, '', 'TG=5-31\\Kolom3', '', '', '', 'DGJ'),
(10, 'TX=Barang tersedia untuk dijual', '', 'TOT=Kolom3\\Baris7-Baris9', '', 'GA=Kolom3', 'DGJ'),
(11, '', 'TG=1-17\\Kolom3', '', '', '', 'DGJ'),
(12, 'TX=HPP', '', '', 'TOT=Kolom3\\Baris10-Baris11', 'GA=Kolom3', 'DGJ'),
(13, 'TX=RUGI/LABA KOTOR', '', '', 'TOT=Kolom4\\Baris4-Baris12', 'GA=Kolom4', 'DGJ'),
(14, 'TX=', '', '', '', '', 'DGJ'),
(15, 'TX=Pendapatan Kantin :', '', '', '', '', 'DGJ'),
(16, '', 'TG=4-26\\Kolom3', '', '', '', 'DGJ'),
(17, 'TX=Pendapatan Kantin :', '', '', 'TOT=Kolom3\\Baris16-Baris16', 'GA=Kolom3', 'DGJ'),
(18, 'TX=', '', '', '', '', ''),
(19, 'TX=Beban Kantin:', '', '', '', '', 'DGJ'),
(20, '', 'TG=6-18\\Kolom3', '', '', '', 'DGJ'),
(21, 'TX=Beban Kantin:', '', '', 'TOT=Kolom3\\Baris20-Baris20', 'GA=Kolom3', 'DGJ'),
(22, 'TX=TOTAL Pendapatan Usaha', '', '', 'TOT=Kolom4\\Baris13-Baris21', 'GA=Kolom4', 'DGJ'),
(23, 'TX=', '', '', '', '', ''),
(24, 'TX=Pendapatan Operasional Lain :', '', '', '', '', 'DGJ'),
(25, '', 'TG=4-21\\Kolom3', '', '', '', 'DGJ'),
(26, '', 'TG=4-22\\Kolom3', '', '', '', 'DGJ'),
(27, '', 'TG=4-23\\Kolom3', '', '', '', ''),
(28, '', 'TG=4-25\\Kolom3', '', '', '', ''),
(29, 'TX=Pendapatan Operasional Lain', '', '', 'TOT=Kolom3\\Baris26-Baris28', 'GA=Kolom3', 'DGJ'),
(30, 'TX=', '', '', '', '', ''),
(31, 'TX=RUGI/LABA USAHA', '', '', 'TOT=Kolom4\\Baris22-Baris29', 'GA=Kolom4', 'DGJ'),
(32, 'TX=Bebas Personalia :', '', '', '', '', 'DGJ'),
(33, '', 'TG=6-11\\Kolom3', '', '', '', 'DGJ'),
(34, 'TX=Bebas Personalia', '', '', 'TOT=Kolom3\\Baris33-Baris33', 'GA=Kolom3', 'DGJ'),
(35, 'TX=', '', '', '', '', 'DGJ'),
(36, 'TX=Biaya Administrasi dan Perlengkapan Kantor:', '', '', '', '', 'DGJ'),
(37, '', 'TG=6-12\\Kolom3', '', '', '', 'DGJ'),
(38, 'TX=Biaya Administrasi dan Perlengkapan Kantor', '', '', 'TOT=Kolom3\\Baris37-Baris37', 'GA=Kolom3', 'DGJ'),
(39, 'TX=', '', '', '', '', 'DGJ'),
(40, 'TX=Biaya Listrik, Telp dan PAM:', '', '', '', '', 'DGJ'),
(41, '', 'TG=6-13\\Kolom3', '', '', '', 'DGJ'),
(42, 'TX=Biaya Listrik, Telp dan PAM', '', '', 'TOT=Kolom3\\Baris41-Baris41', 'GA=Kolom3', 'DGJ'),
(43, 'TX=', '', '', '', '', 'DGJ'),
(44, 'TX=Beban Maintenance Gedung:', '', '', '', '', 'DGJ'),
(45, '', 'TG=6-14\\Kolom3', '', '', '', 'DGJ'),
(46, 'TX=Beban Maintenance Gedung', '', '', 'TOT=Kolom3\\Baris45-Baris45', 'GA=Kolom3', 'DGJ'),
(47, 'TX=', '', '', '', '', 'DGJ'),
(48, 'TX=Beban Penyusutan:', '', '', '', '', 'DGJ'),
(49, '', 'TG=6-15\\Kolom3', '', '', '', 'DGJ'),
(50, 'TX=Beban Penyusutan', '', '', 'TOT=Kolom3\\Baris49-Baris49', 'GA=Kolom3', 'DGJ'),
(51, 'TX=', '', '', '', '', 'DGJ'),
(52, 'TX=Beban Penyisihan Piutang:', '', '', '', '', 'DGJ'),
(53, '', 'TG=6-16\\Kolom3', '', '', '', 'DGJ'),
(54, 'TX=Beban Penyisihan Piutang', '', '', 'TOT=Kolom3\\Baris53-Baris53', 'GA=Kolom3', 'DGJ'),
(55, 'TX=', '', '', '', '', 'DGJ'),
(56, 'TX=Beban Barang Kadaluarsa:', '', '', '', '', 'DGJ'),
(57, '', 'TG=6-17\\Kolom3', '', '', '', 'DGJ'),
(58, 'TX=Beban Barang Kadaluarsa', '', '', 'TOT=Kolom3\\Baris57-Baris57', 'GA=Kolom3', 'DGJ'),
(59, 'TX=', '', '', '', '', 'DGJ'),
(60, 'TX=Beban RAT:', '', '', '', '', 'DGJ'),
(61, '', 'TG=6-21\\Kolom3', '', '', '', 'DGJ'),
(62, 'TX=Beban RAT', '', '', 'TOT=Kolom3\\Baris61-Baris61', 'GA=Kolom3', 'DGJ'),
(63, 'TX=', '', '', '', '', 'DGJ'),
(64, 'TX=Beban Audit dan Konsultan:', '', '', '', '', 'DGJ'),
(65, '', 'TG=6-23\\Kolom3', '', '', '', 'DGJ'),
(66, 'TX=Beban Audit dan Konsultan', '', '', 'TOT=Kolom3\\Baris65-Baris65', 'GA=Kolom3', 'DGJ'),
(67, 'TX=', '', '', '', '', 'DGJ'),
(68, 'TX=Beban Berjalan:', '', '', '', '', 'DGJ'),
(69, '', 'TG=6-24\\Kolom3', '', '', '', 'DGJ'),
(70, 'TX=Beban Berjalan', '', '', 'TOT=Kolom3\\Baris69-Baris69', 'GA=Kolom3', 'DGJ'),
(71, 'TX=', '', '', '', '', 'DGJ'),
(72, 'TX=Beban Non Operasional:', '', '', '', '', 'DGJ'),
(73, '', 'TG=6-25\\Kolom3', '', '', '', 'DGJ'),
(74, 'TX=Beban Non Operasional', '', '', 'TOT=Kolom3\\Baris73-Baris73', 'GA=Kolom3', 'DGJ'),
(75, 'TX=', '', '', '', '', 'DGJ'),
(76, '', '', '', '', '', ''),
(77, 'TX=TOTAL BIAYA', '', '', 'TOT=Kolom4\\Baris34-Baris74', 'GA=Kolom4', 'DGJ'),
(78, 'TX=', '', '', '', '', 'DGJ'),
(79, 'TX=RUGI/LABA USAHA', '', '', 'TOT=Kolom4\\Baris31-Baris74', 'GA=Kolom4', 'DGJ');

-- --------------------------------------------------------

--
-- Table structure for table `r_neraca`
--

CREATE TABLE `r_neraca` (
  `pk` int(11) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `nobaris` int(11) DEFAULT NULL,
  `refnobaris` int(11) DEFAULT NULL,
  `kolom1` varchar(200) DEFAULT NULL,
  `kolom2` varchar(200) DEFAULT NULL,
  `kolom3` text DEFAULT NULL,
  `kolom4` varchar(150) DEFAULT NULL,
  `kolom5` varchar(150) DEFAULT NULL,
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r_neracasaldo`
--

CREATE TABLE `r_neracasaldo` (
  `pk` int(11) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `grupfk` varchar(10) NOT NULL,
  `rekfk` varchar(10) NOT NULL,
  `debet` double NOT NULL DEFAULT 0,
  `kredit` double NOT NULL DEFAULT 0,
  `saldo` double NOT NULL DEFAULT 0,
  `jnsns` text NOT NULL COMMENT 'Field Size = 2 => NP = Neraca Saldo Pada Periode Bersangkutan; NT = Neraca Saldo Penutup Periode Bersangkutan; LR =Iktisar Laba Rugi',
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r_rugilaba`
--

CREATE TABLE `r_rugilaba` (
  `pk` int(11) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `nobaris` int(11) DEFAULT NULL,
  `refnobaris` int(11) DEFAULT NULL,
  `kolom1` varchar(150) DEFAULT NULL,
  `kolom2` varchar(150) DEFAULT NULL,
  `kolom3` varchar(150) DEFAULT NULL,
  `kolom4` varchar(150) DEFAULT NULL,
  `kolom5` varchar(150) DEFAULT NULL,
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r_rugilaba_periode`
--

CREATE TABLE `r_rugilaba_periode` (
  `pk` int(11) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `nobaris` int(11) DEFAULT NULL,
  `refnobaris` int(11) DEFAULT NULL,
  `kolom1` int(11) DEFAULT NULL,
  `kolom2` int(11) DEFAULT NULL,
  `kolom3` int(11) DEFAULT NULL,
  `kolom4` int(11) DEFAULT NULL,
  `kolom5` int(11) DEFAULT NULL,
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_configuration`
--

CREATE TABLE `s_configuration` (
  `JenisPerusahaan` tinyint(4) NOT NULL COMMENT '1 = Perseorangan; 2 = Perseroan',
  `RekIktisarLR` varchar(10) NOT NULL,
  `RekModal` varchar(10) NOT NULL,
  `RekPrive` varchar(10) NOT NULL,
  `RekLabaDitahan` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `s_configuration`
--

INSERT INTO `s_configuration` (`JenisPerusahaan`, `RekIktisarLR`, `RekModal`, `RekPrive`, `RekLabaDitahan`) VALUES
(2, '3-213', '3-11', '3-211', '3-210');

-- --------------------------------------------------------

--
-- Table structure for table `s_default`
--

CREATE TABLE `s_default` (
  `pk` int(11) NOT NULL,
  `JmlHariEfektif` smallint(6) DEFAULT NULL,
  `PeriodeTHR` int(11) DEFAULT NULL,
  `BiayaTHR` double DEFAULT NULL,
  `StatusLembur` tinyint(4) DEFAULT NULL,
  `BiayaLembur` double DEFAULT NULL,
  `Maxkasbon` double DEFAULT NULL,
  `kdkaspinjam` varchar(50) DEFAULT NULL,
  `kdkasgaji` varchar(50) DEFAULT NULL,
  `kdkasUS` varchar(50) DEFAULT NULL,
  `kdkasTHR` varchar(50) DEFAULT NULL,
  `kdkasLain` varchar(50) DEFAULT NULL,
  `kdkasjual` varchar(50) DEFAULT NULL,
  `kdkasrjual` varchar(50) DEFAULT NULL,
  `kdkaspiutang` varchar(50) DEFAULT NULL,
  `kdkasbeli` varchar(50) DEFAULT NULL,
  `kdkasrbeli` varchar(50) DEFAULT NULL,
  `kdkashutang` varchar(50) DEFAULT NULL,
  `nmHRd` varchar(50) DEFAULT NULL,
  `useradd` varchar(50) DEFAULT NULL,
  `dateadd` datetime DEFAULT NULL,
  `useredit` varchar(50) DEFAULT NULL,
  `dateedit` datetime DEFAULT NULL,
  `saldopulsa` varchar(50) DEFAULT NULL,
  `biayapulsa` varchar(50) DEFAULT NULL,
  `rekselisihtimbangan` varchar(5) NOT NULL,
  `rekpotpabrik` varchar(5) NOT NULL,
  `rekbiayasopir` varchar(5) NOT NULL,
  `rekbongkar` varchar(5) NOT NULL,
  `ctnkasir` text DEFAULT NULL,
  `ctnruhee` text NOT NULL,
  `ctnopi` text NOT NULL,
  `ctnevent` text NOT NULL,
  `ctnstore` text NOT NULL,
  `akunkantinbiaya` varchar(10) NOT NULL,
  `akunkantinpendapatan` varchar(10) NOT NULL,
  `akunkantinhutang` varchar(10) NOT NULL,
  `akunkantinpiutang` varchar(10) NOT NULL,
  `akunkantinkas` varchar(10) NOT NULL,
  `akunbeli` varchar(10) NOT NULL,
  `akunjual` varchar(10) NOT NULL,
  `akunrbeli` varchar(10) NOT NULL,
  `akunrjual` text NOT NULL,
  `akunpiutang` varchar(10) NOT NULL,
  `akunhutang` varchar(10) NOT NULL,
  `akunvoucher` varchar(20) NOT NULL,
  `akunpersediaan` varchar(10) NOT NULL,
  `akunhpp` varchar(10) NOT NULL,
  `akunstok_so` varchar(10) NOT NULL,
  `gudangfk` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_default`
--

INSERT INTO `s_default` (`pk`, `JmlHariEfektif`, `PeriodeTHR`, `BiayaTHR`, `StatusLembur`, `BiayaLembur`, `Maxkasbon`, `kdkaspinjam`, `kdkasgaji`, `kdkasUS`, `kdkasTHR`, `kdkasLain`, `kdkasjual`, `kdkasrjual`, `kdkaspiutang`, `kdkasbeli`, `kdkasrbeli`, `kdkashutang`, `nmHRd`, `useradd`, `dateadd`, `useredit`, `dateedit`, `saldopulsa`, `biayapulsa`, `rekselisihtimbangan`, `rekpotpabrik`, `rekbiayasopir`, `rekbongkar`, `ctnkasir`, `ctnruhee`, `ctnopi`, `ctnevent`, `ctnstore`, `akunkantinbiaya`, `akunkantinpendapatan`, `akunkantinhutang`, `akunkantinpiutang`, `akunkantinkas`, `akunbeli`, `akunjual`, `akunrbeli`, `akunrjual`, `akunpiutang`, `akunhutang`, `akunvoucher`, `akunpersediaan`, `akunhpp`, `akunstok_so`, `gudangfk`) VALUES
(1, 7, 0, 2000000, 2, 5000, 500000, '10.02', '10.01', '10.02', '10.03', '1-111', '1-111', '1-111', '1-111', '1-111', '1-111', '1-111', NULL, '1', NULL, '0', NULL, '10.08', '60.02', '61.18', '61.19', '61.20', '61.21', 'TERIMA KASIH ATAS KUNJUNGAN ANDA.\r\nSILAHKAN DATANG KEMBALI', 'NAntikan promo spesial bulan agustus di Ruhee', 'NAntikan promo spesial bulan agustus di OPI', 'NAntikan promo spesial bulan agustus di Event', 'NAntikan promo spesial bulan agustus di Store', '6-181', '4-261', '2-132', '1-143', '1-111', '1-171', '4-111', '1-171', '1-171', '1-141', '2-132', '1-145', '1-171', '5-101', '5-103', 1),
(2, 7, 0, 2000000, 2, 5000, 500000, '10.02', '10.01', '10.02', '10.03', '1-112', '1-112', '1-112', '1-112', '1-112', '1-112', '1-112', NULL, '1', NULL, '0', NULL, '10.08', '60.02', '61.18', '61.19', '61.20', '61.21', 'TERIMA KASIH ATAS KUNJUNGAN ANDA.\r\nSILAHKAN DATANG KEMBALI', 'NAntikan promo spesial bulan agustus di Ruhee', 'NAntikan promo spesial bulan agustus di OPI', 'NAntikan promo spesial bulan agustus di Event', 'NAntikan promo spesial bulan agustus di Store', '6-181', '4-261', '2-132', '1-143', '1-111', '1-171', '4-111', '1-171', '1-171', '1-141', '2-132', '1-145', '1-171', '5-101', '5-103', 3),
(3, 7, 0, 2000000, 2, 5000, 500000, '10.02', '10.01', '10.02', '10.03', '1-111', '1-111', '1-111', '1-111', '1-111', '1-111', '1-111', NULL, '1', NULL, '0', NULL, '10.08', '60.02', '61.18', '61.19', '61.20', '61.21', 'TERIMA KASIH ATAS KUNJUNGAN ANDA.\r\nSILAHKAN DATANG KEMBALI', 'NAntikan promo spesial bulan agustus di Ruhee', 'NAntikan promo spesial bulan agustus di OPI', 'NAntikan promo spesial bulan agustus di Event', 'NAntikan promo spesial bulan agustus di Store', '6-181', '4-261', '2-132', '1-143', '1-111', '1-171', '4-111', '1-171', '1-171', '1-141', '2-132', '1-145', '1-171', '5-101', '5-103', 4),
(4, 7, 0, 2000000, 2, 5000, 500000, '10.02', '10.01', '10.02', '10.03', '1-113', '1-111', '1-111', '1-111', '1-111', '1-111', '1-111', NULL, '1', NULL, '0', NULL, '10.08', '60.02', '61.18', '61.19', '61.20', '61.21', 'TERIMA KASIH ATAS KUNJUNGAN ANDA.\r\nSILAHKAN DATANG KEMBALI', 'NAntikan promo spesial bulan agustus di Ruhee', 'NAntikan promo spesial bulan agustus di OPI', 'NAntikan promo spesial bulan agustus di Event', 'NAntikan promo spesial bulan agustus di Store', '6-181', '4-261', '2-132', '1-143', '1-111', '1-171', '4-111', '1-171', '1-171', '1-141', '2-132', '1-145', '1-171', '5-101', '5-103', 5);

-- --------------------------------------------------------

--
-- Table structure for table `s_deposito`
--

CREATE TABLE `s_deposito` (
  `pk` int(11) NOT NULL,
  `kd` varchar(10) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `bulan` int(11) NOT NULL DEFAULT 0,
  `bunga` double NOT NULL DEFAULT 0,
  `pinalty` double NOT NULL DEFAULT 0,
  `tenor` double NOT NULL DEFAULT 0,
  `jmlminimal` double NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `s_deposito`
--

INSERT INTO `s_deposito` (`pk`, `kd`, `nm`, `bulan`, `bunga`, `pinalty`, `tenor`, `jmlminimal`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(1, 'DEP01', 'Deposito Tahunan', 12, 9.6, 0, 0, 0, '2022-10-14 23:11:59', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `s_gudang`
--

CREATE TABLE `s_gudang` (
  `pk` int(11) NOT NULL,
  `gudangfk_orderbeli` int(11) DEFAULT NULL,
  `gudangfk_beli` int(11) DEFAULT NULL,
  `gudangfk_returbeli` int(11) DEFAULT NULL,
  `gudangfk_orderjual` int(11) DEFAULT NULL,
  `gudangfk_jual` int(11) DEFAULT NULL,
  `gudangfk_returjual` int(11) DEFAULT NULL,
  `gudangfk_pos` int(11) DEFAULT NULL,
  `gudangfk_orderkonsinyasi` int(11) DEFAULT NULL,
  `gudangfk_konsinyasi` int(11) DEFAULT NULL,
  `gudangfk_returkonsinyasi` int(11) DEFAULT NULL,
  `gudangfk_itemmasuk` int(11) DEFAULT NULL,
  `gudangfk_itemkeluar` int(11) DEFAULT NULL,
  `gudangproduksi` int(11) NOT NULL,
  `gudangstok` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_gudang`
--

INSERT INTO `s_gudang` (`pk`, `gudangfk_orderbeli`, `gudangfk_beli`, `gudangfk_returbeli`, `gudangfk_orderjual`, `gudangfk_jual`, `gudangfk_returjual`, `gudangfk_pos`, `gudangfk_orderkonsinyasi`, `gudangfk_konsinyasi`, `gudangfk_returkonsinyasi`, `gudangfk_itemmasuk`, `gudangfk_itemkeluar`, `gudangproduksi`, `gudangstok`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `s_jabatan`
--

CREATE TABLE `s_jabatan` (
  `pk` int(11) NOT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `tJab` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_jabatan`
--

INSERT INTO `s_jabatan` (`pk`, `nm`, `tJab`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(1, '-', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_passbook`
--

CREATE TABLE `s_passbook` (
  `pk` int(11) NOT NULL,
  `jmlbaris` int(11) NOT NULL DEFAULT 0,
  `posisitengah` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_passbook`
--

INSERT INTO `s_passbook` (`pk`, `jmlbaris`, `posisitengah`) VALUES
(1, 30, 15);

-- --------------------------------------------------------

--
-- Table structure for table `s_pendidikan`
--

CREATE TABLE `s_pendidikan` (
  `pk` int(11) NOT NULL,
  `nm` varchar(100) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_pendidikan`
--

INSERT INTO `s_pendidikan` (`pk`, `nm`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`) VALUES
(1, '-', '-', NULL, NULL, NULL, NULL),
(2, 'SD', 'Sekolah Dasar', '2012-02-19 13:45:00', 11, NULL, NULL),
(3, 'SMP', 'Sekolah Menengah Pertama', '2012-02-19 13:45:24', 11, NULL, NULL),
(4, 'SMA', 'Sekolah Menengah Atas', '2012-02-19 13:45:33', 11, NULL, NULL),
(5, 'D1', 'Diploma !', '2012-02-19 13:45:40', 11, NULL, NULL),
(6, 'D2', 'Diploma 2', '2012-02-19 13:45:47', 11, NULL, NULL),
(7, 'D3', 'Diploma 3', '2012-02-19 13:45:53', 11, NULL, NULL),
(8, 'S1', 'Sarjana', '2012-02-19 13:46:00', 11, NULL, NULL),
(9, 'S2', NULL, '2012-02-19 13:46:03', 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_pinjam`
--

CREATE TABLE `s_pinjam` (
  `kode` varchar(2) NOT NULL,
  `batasBawah` smallint(6) DEFAULT NULL,
  `batasAtas` smallint(6) DEFAULT NULL,
  `maxPinjam` double DEFAULT NULL,
  `sukuBunga` double DEFAULT NULL,
  `jenisAngsuran` varchar(50) DEFAULT NULL,
  `minimAng` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_pinjam`
--

INSERT INTO `s_pinjam` (`kode`, `batasBawah`, `batasAtas`, `maxPinjam`, `sukuBunga`, `jenisAngsuran`, `minimAng`) VALUES
('01', 0, 999, 5000000, 1, 'Tetap', 1);

-- --------------------------------------------------------

--
-- Table structure for table `s_poin`
--

CREATE TABLE `s_poin` (
  `pk` int(11) NOT NULL,
  `sistempoin` int(2) NOT NULL DEFAULT 0,
  `kelipatan` double NOT NULL DEFAULT 0,
  `daritglkumpul` date NOT NULL,
  `sampaitglkumpul` date NOT NULL,
  `daritgltukar` date NOT NULL,
  `sampaitgltukar` date NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT 0,
  `ctnperiode` varchar(200) NOT NULL,
  `ctntambah` varchar(200) NOT NULL,
  `nilaipoin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_poin`
--

INSERT INTO `s_poin` (`pk`, `sistempoin`, `kelipatan`, `daritglkumpul`, `sampaitglkumpul`, `daritgltukar`, `sampaitgltukar`, `tampil`, `ctnperiode`, `ctntambah`, `nilaipoin`) VALUES
(1, 1, 200, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, '', '', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `s_pph21`
--

CREATE TABLE `s_pph21` (
  `pk` int(11) NOT NULL,
  `maxBiayaJabatan` double DEFAULT NULL,
  `MaxGajiHarian` double DEFAULT NULL,
  `statusPPH` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_pph21`
--

INSERT INTO `s_pph21` (`pk`, `maxBiayaJabatan`, `MaxGajiHarian`, `statusPPH`) VALUES
(1, 6000000, 150000, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `s_setting`
--

CREATE TABLE `s_setting` (
  `bungatetap` double DEFAULT NULL,
  `bungamenurun` double DEFAULT NULL,
  `dendatetap` double DEFAULT NULL,
  `dendamenurun` double DEFAULT NULL,
  `tenggangdenda` double DEFAULT NULL,
  `persenpinalty` double DEFAULT NULL,
  `metodebungatabungan` tinyint(4) DEFAULT NULL,
  `kategorilancar` double DEFAULT NULL,
  `kategorikuranglancar` double DEFAULT NULL,
  `kategoridiragukan` double DEFAULT NULL,
  `kategorimacet` double DEFAULT NULL,
  `persenlancar` double DEFAULT NULL COMMENT '% penyisihan untuk pinjaman',
  `persenkuranglancar` double DEFAULT NULL COMMENT '% penyisihan untuk pinjaman',
  `persendiragukan` double DEFAULT NULL COMMENT '% penyisihan untuk pinjaman',
  `persenmacet` double DEFAULT NULL COMMENT '% penyisihan untuk pinjaman',
  `akunkas` varchar(10) DEFAULT NULL,
  `akunrealisasi` varchar(10) DEFAULT NULL,
  `akunangsuran` varchar(10) DEFAULT NULL,
  `akunbunga` varchar(10) DEFAULT NULL,
  `akunadmin` varchar(10) DEFAULT NULL,
  `akundenda` varchar(10) DEFAULT NULL,
  `akunprovisi` varchar(10) DEFAULT NULL,
  `akunlain` varchar(10) DEFAULT NULL,
  `akunhapuskredit` varchar(10) DEFAULT NULL,
  `nopinjam` varchar(10) DEFAULT NULL,
  `DAkunBank` varchar(10) DEFAULT NULL,
  `DAkunSetoran` varchar(10) DEFAULT NULL,
  `DAkunPenarikan` varchar(10) DEFAULT NULL,
  `DAkunBiayaBunga` varchar(10) DEFAULT NULL,
  `DAkunAdmin` varchar(10) DEFAULT NULL,
  `DAkunPajak` varchar(10) DEFAULT NULL,
  `DAkunTitipBunga` varchar(10) DEFAULT NULL,
  `DMinPajak` double DEFAULT 0,
  `DJmlPajak` double DEFAULT 0,
  `DAkunPinalty` varchar(10) DEFAULT NULL,
  `akuncadangan` varchar(10) DEFAULT NULL,
  `akunasuransi` varchar(10) DEFAULT NULL,
  `potadmpinjaman` double DEFAULT NULL,
  `potprovisi` double DEFAULT NULL,
  `AKUNSHUMODAL` varchar(10) DEFAULT NULL,
  `PERSENSHUMODAL` double DEFAULT NULL,
  `SHUMODAL` varchar(10) DEFAULT NULL,
  `SHUJASA` double DEFAULT NULL,
  `AKUNSHUJASA` varchar(10) DEFAULT NULL,
  `PERSENSHUJASA` double DEFAULT NULL,
  `akunbagishu` varchar(10) DEFAULT NULL,
  `autoKdNasabah` varchar(10) DEFAULT NULL,
  `autokdSektor` varchar(10) DEFAULT NULL,
  `autokdpinjamHarian` varchar(10) DEFAULT NULL,
  `akunpinjamharian` varchar(10) DEFAULT NULL,
  `akunbungaharian` varchar(10) DEFAULT NULL,
  `akunkasharian` varchar(10) DEFAULT NULL,
  `akunmacetharian` varchar(10) DEFAULT NULL,
  `pk` int(11) NOT NULL,
  `akunmenurun` varchar(10) NOT NULL,
  `akuntetap` varchar(10) NOT NULL,
  `akuntanpabunga` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `s_setting`
--

INSERT INTO `s_setting` (`bungatetap`, `bungamenurun`, `dendatetap`, `dendamenurun`, `tenggangdenda`, `persenpinalty`, `metodebungatabungan`, `kategorilancar`, `kategorikuranglancar`, `kategoridiragukan`, `kategorimacet`, `persenlancar`, `persenkuranglancar`, `persendiragukan`, `persenmacet`, `akunkas`, `akunrealisasi`, `akunangsuran`, `akunbunga`, `akunadmin`, `akundenda`, `akunprovisi`, `akunlain`, `akunhapuskredit`, `nopinjam`, `DAkunBank`, `DAkunSetoran`, `DAkunPenarikan`, `DAkunBiayaBunga`, `DAkunAdmin`, `DAkunPajak`, `DAkunTitipBunga`, `DMinPajak`, `DJmlPajak`, `DAkunPinalty`, `akuncadangan`, `akunasuransi`, `potadmpinjaman`, `potprovisi`, `AKUNSHUMODAL`, `PERSENSHUMODAL`, `SHUMODAL`, `SHUJASA`, `AKUNSHUJASA`, `PERSENSHUJASA`, `akunbagishu`, `autoKdNasabah`, `autokdSektor`, `autokdpinjamHarian`, `akunpinjamharian`, `akunbungaharian`, `akunkasharian`, `akunmacetharian`, `pk`, `akunmenurun`, `akuntetap`, `akuntanpabunga`) VALUES
(24, 12, 10, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '1-112', '1-131', '1-131', '4-211', '4-221', '4-221', '4-211', '4-252', '1-133', '1', '1-112', '2-121', '2-121', '5-202', '4-222', '2-1511', '2-1511', 240000, 10, '2-1511', '3-116', '6-142', 0.75, 0.75, '0', 0, '0', 0, '0', 0, '0', 'N', 'B', 'P', '10.10', '42.09', '10.01', '10.07', 1, '2-152', '2-152', '2-152');

-- --------------------------------------------------------

--
-- Table structure for table `s_validasi`
--

CREATE TABLE `s_validasi` (
  `pk` int(11) NOT NULL,
  `ketua` varchar(150) NOT NULL,
  `bendahara` varchar(150) NOT NULL,
  `sekretaris` varchar(150) NOT NULL,
  `wakilketua` varchar(150) NOT NULL,
  `pengurus` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_validasi`
--

INSERT INTO `s_validasi` (`pk`, `ketua`, `bendahara`, `sekretaris`, `wakilketua`, `pengurus`) VALUES
(1, 'I Ketut Sarjana', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tambah_outlet`
--

CREATE TABLE `tambah_outlet` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `key` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tambah_outlet`
--

INSERT INTO `tambah_outlet` (`id`, `username`, `deskripsi`, `key`, `password`) VALUES
(2, 'Cabang Baru', 'yyyy', 'P001', 'Array'),
(3, 'Headsets', 'wwwa', 'P002', '123'),
(4, 'Headsetku', 'rgh', 'P003', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_bukubesar`
--

CREATE TABLE `tmp_bukubesar` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `noref` varchar(50) NOT NULL,
  `rekfk` varchar(20) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `debet` double NOT NULL DEFAULT 0,
  `kredit` double NOT NULL DEFAULT 0,
  `saldo` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tmp_bukubesar`
--

INSERT INTO `tmp_bukubesar` (`pk`, `notrs`, `tgl`, `noref`, `rekfk`, `nm`, `keterangan`, `debet`, `kredit`, `saldo`) VALUES
(1863, '-', '2023-12-26', '-', '1-111', 'Kas Kecil', 'Saldo Awal', 29600, 0, 29600);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_bungarata`
--

CREATE TABLE `tmp_bungarata` (
  `norekening` varchar(50) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `debet` double NOT NULL DEFAULT 0,
  `kredit` double NOT NULL DEFAULT 0,
  `saldo` double NOT NULL DEFAULT 0,
  `jmlhari` double NOT NULL DEFAULT 0,
  `bunga` double NOT NULL DEFAULT 0,
  `nourut` int(11) NOT NULL DEFAULT 0,
  `jmlbunga` double NOT NULL DEFAULT 0,
  `jmlsaldo` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_grafik`
--

CREATE TABLE `tmp_grafik` (
  `pk` int(11) NOT NULL,
  `bulan` int(5) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tmp_grafik`
--

INSERT INTO `tmp_grafik` (`pk`, `bulan`, `nilai`) VALUES
(12679, 1, 51387765),
(12680, 2, 52330936),
(12681, 3, 53956489),
(12682, 4, 51857450),
(12683, 5, 1589842),
(12684, 6, 0),
(12685, 7, 0),
(12686, 8, 0),
(12687, 9, 0),
(12688, 10, 0),
(12689, 11, 0),
(12690, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_kartustok`
--

CREATE TABLE `tmp_kartustok` (
  `pk` int(11) NOT NULL,
  `periode` varchar(20) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `saldoawal` double DEFAULT NULL,
  `masuk` double DEFAULT NULL,
  `keluar` double DEFAULT NULL,
  `sisa` double DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `jam` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tmp_kartustok`
--

INSERT INTO `tmp_kartustok` (`pk`, `periode`, `gudangfk`, `itemfk`, `keterangan`, `saldoawal`, `masuk`, `keluar`, `sisa`, `tgl`, `notrs`, `jam`) VALUES
(6869, '202311', 1, 1, 'Saldo Awal', 0, 0, 0, 0, '0000-00-00 00:00:00', '-', NULL),
(6870, '202311', 1, 1, 'Pembelian Item', 0, 1, 0, 1, '2023-11-04 00:00:00', 'B0-231104224647', NULL),
(6871, '202311', 1, 1, 'Penjualan Item', 1, 0, 1, 0, '2023-11-07 00:00:00', 'K-0-231107204826', NULL),
(6872, '202311', 1, 1, 'Penjualan Item', 0, 0, 1, -1, '2023-11-07 00:00:00', 'K-0-231107210037', NULL),
(6873, '202311', 1, 1, 'Penjualan Item', -1, 0, 24, -25, '2023-11-07 00:00:00', 'K-0-231107204826', NULL),
(6874, '202311', 1, 1, 'Item Masuk', -25, 110, 0, 85, '2023-11-08 00:00:00', 'SO231108175807', NULL),
(6875, '202311', 1, 1, 'Pembelian Item', 85, 2, 0, 87, '2023-11-09 00:00:00', 'B0-231109115911', NULL),
(6876, '202311', 1, 1, 'Pembelian Item', 87, 1, 0, 88, '2023-11-09 00:00:00', 'B0-231109115911', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_kartustok_hd`
--

CREATE TABLE `tmp_kartustok_hd` (
  `pk` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `ket` varchar(100) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `beli` double NOT NULL DEFAULT 0,
  `rbeli` double NOT NULL DEFAULT 0,
  `jual` double NOT NULL DEFAULT 0,
  `rjual` double NOT NULL DEFAULT 0,
  `opname` double NOT NULL DEFAULT 0,
  `sisa` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_laporankasir`
--

CREATE TABLE `tmp_laporankasir` (
  `pk` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nm` varchar(150) NOT NULL,
  `jml` double NOT NULL DEFAULT 0,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_pinjaman`
--

CREATE TABLE `tmp_pinjaman` (
  `notrs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_potperbulan`
--

CREATE TABLE `tmp_potperbulan` (
  `id` int(11) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `jml` double NOT NULL DEFAULT 0,
  `periode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tmp_potperbulan`
--

INSERT INTO `tmp_potperbulan` (`id`, `nm`, `jml`, `periode`) VALUES
(705, 'Nusa Dua', 0, '1 - 2023');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_simulasi`
--

CREATE TABLE `tmp_simulasi` (
  `nomor` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `saldo` double NOT NULL DEFAULT 0,
  `pokok` double NOT NULL DEFAULT 0,
  `bunga` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `nmnasabah` varchar(100) NOT NULL,
  `pinjaman` double DEFAULT 0,
  `biayaadmin` double NOT NULL DEFAULT 0,
  `bungapertahun` double NOT NULL DEFAULT 0,
  `jangkawaktu` int(11) NOT NULL DEFAULT 1,
  `angsuran` double NOT NULL DEFAULT 0,
  `sistembunga` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tmp_simulasi`
--

INSERT INTO `tmp_simulasi` (`nomor`, `tanggal`, `saldo`, `pokok`, `bunga`, `total`, `nmnasabah`, `pinjaman`, `biayaadmin`, `bungapertahun`, `jangkawaktu`, `angsuran`, `sistembunga`) VALUES
(1, '2023-05-05', 4445833.33333333, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(2, '2023-06-05', 4041666.66666667, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(3, '2023-07-05', 3637500, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(4, '2023-08-05', 3233333.33333333, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(5, '2023-09-05', 2829166.66666667, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(6, '2023-10-05', 2425000, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(7, '2023-11-05', 2020833.33333333, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(8, '2023-12-05', 1616666.66666667, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(9, '2024-01-05', 1212500, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(10, '2024-02-05', 808333.333333333, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(11, '2024-03-05', 404166.666666667, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap'),
(12, '2024-04-05', 0.000000000116415321826935, 404166.666666667, 63050, 467216.666666667, 'COS SPSI BALI', 4850000, 0, 15.6, 12, 467217, 'Bunga Tetap');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_stok`
--

CREATE TABLE `tmp_stok` (
  `pk` int(10) NOT NULL,
  `noref` varchar(50) NOT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `stok` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `status` bit(1) DEFAULT b'0',
  `saldoawal` double NOT NULL DEFAULT 0,
  `totalsaldoawal` double NOT NULL DEFAULT 0,
  `masuk` double NOT NULL DEFAULT 0,
  `totalmasuk` double NOT NULL DEFAULT 0,
  `keluar` double NOT NULL DEFAULT 0,
  `totalkeluar` double NOT NULL DEFAULT 0,
  `soin` double NOT NULL DEFAULT 0,
  `totalsoin` double NOT NULL DEFAULT 0,
  `soout` double NOT NULL DEFAULT 0,
  `totalsoout` float NOT NULL DEFAULT 0,
  `saldoakhir` double NOT NULL DEFAULT 0,
  `totalsaldoakhir` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tmp_stok`
--

INSERT INTO `tmp_stok` (`pk`, `noref`, `gudangfk`, `itemfk`, `stok`, `hargapokok`, `status`, `saldoawal`, `totalsaldoawal`, `masuk`, `totalmasuk`, `keluar`, `totalkeluar`, `soin`, `totalsoin`, `soout`, `totalsoout`, `saldoakhir`, `totalsaldoakhir`) VALUES
(1, '1-1B4-231213215728', 1, 1, -29, 9900, b'0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_stokperiode`
--

CREATE TABLE `tmp_stokperiode` (
  `pk` int(11) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `awal` double NOT NULL DEFAULT 0,
  `akhir` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tmp_stokperiode`
--

INSERT INTO `tmp_stokperiode` (`pk`, `periode`, `awal`, `akhir`) VALUES
(1, '202212', 0, 60064667),
(38, '202301', 60064667, 58396801),
(39, '202302', 58396801, 93496417);

-- --------------------------------------------------------

--
-- Table structure for table `t_aktiva`
--

CREATE TABLE `t_aktiva` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(50) DEFAULT NULL,
  `akunaktiva` varchar(50) DEFAULT NULL,
  `akunpenyusutan` varchar(50) DEFAULT NULL,
  `blnpenyusutan` int(11) DEFAULT NULL,
  `jmlpenyusutan` double DEFAULT NULL,
  `nojurnal` varchar(50) DEFAULT NULL,
  `akunbiaya` varchar(50) DEFAULT NULL,
  `nm` varchar(225) DEFAULT NULL,
  `nilaiakhir` double DEFAULT NULL,
  `notrsjual` varchar(50) DEFAULT NULL,
  `tgljual` datetime DEFAULT NULL,
  `hargajual` int(11) DEFAULT NULL,
  `ctnjual` varchar(100) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `jurnaljual` varchar(50) DEFAULT NULL,
  `akunlaba` varchar(50) DEFAULT NULL,
  `gudangfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_aktiva`
--

INSERT INTO `t_aktiva` (`pk`, `notrs`, `tgl`, `jam`, `jml`, `harga`, `total`, `ctn`, `posting`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `akunkas`, `akunaktiva`, `akunpenyusutan`, `blnpenyusutan`, `jmlpenyusutan`, `nojurnal`, `akunbiaya`, `nm`, `nilaiakhir`, `notrsjual`, `tgljual`, `hargajual`, `ctnjual`, `rek`, `jurnaljual`, `akunlaba`, `gudangfk`) VALUES
(1, 'A1-231205213506', '2023-12-05 00:00:00', NULL, 1, 7200000, 7200000, '', NULL, '2023-12-05 21:36:15', 4, NULL, NULL, NULL, '1-111', '1-191', '1-221', 54, 133333, '1-4231205213615', '6-151', 'Komputer', 7066667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_aktiva_dt`
--

CREATE TABLE `t_aktiva_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `noref` varchar(50) DEFAULT NULL,
  `akunbiaya` varchar(50) DEFAULT NULL,
  `akunpenyusutan` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_aktiva_dt`
--

INSERT INTO `t_aktiva_dt` (`pk`, `notrs`, `nobaris`, `tgl`, `jml`, `hargapokok`, `noref`, `akunbiaya`, `akunpenyusutan`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `gudangfk`) VALUES
(1, 'A1-231205213506', NULL, '2024-01-05', 1, 133333, '1-4231205213640', '6-151', '1-221', '2023-12-05 21:36:40', 4, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarhutang_dt`
--

CREATE TABLE `t_bayarhutang_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `noref` varchar(20) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `bayar` double DEFAULT 0,
  `norekfk_bayarhutang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_bayarhutang_dt`
--

INSERT INTO `t_bayarhutang_dt` (`pk`, `notrs`, `nobaris`, `noref`, `keterangan`, `bayar`, `norekfk_bayarhutang`) VALUES
(1, 'BH231109155632', 1, 'B0-231109115911', 'Sisa Hutang : 216000', 216000, NULL),
(2, 'BH231206093033', 1, 'B4-231206092520', 'Sisa Hutang : 75010', 5000, NULL),
(3, 'BH231206093045', 1, 'B4-231206092520', 'Sisa Hutang : 70010', 10000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarhutang_hd`
--

CREATE TABLE `t_bayarhutang_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `totalbayar` double DEFAULT 0,
  `ctn` varchar(200) DEFAULT NULL,
  `cabangfk` int(11) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `lock` bit(1) DEFAULT b'0',
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `deposit` double NOT NULL DEFAULT 0,
  `tunai` double NOT NULL DEFAULT 0,
  `diskon` int(11) NOT NULL DEFAULT 0,
  `nmcomp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_bayarhutang_hd`
--

INSERT INTO `t_bayarhutang_hd` (`notrs`, `tgl`, `jam`, `supplierfk`, `totalbayar`, `ctn`, `cabangfk`, `posting`, `lock`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `akunkas`, `rek`, `deposit`, `tunai`, `diskon`, `nmcomp`) VALUES
('BH231109155632', '2023-11-09', NULL, 2, 216000, '', 1, NULL, b'0', '2023-11-09 00:00:00', 4, NULL, NULL, NULL, '1-4231109155747', '1-111', 0, 216000, 0, 'BALISOLUTIONBIZ'),
('BH231206093033', '2023-12-06', NULL, 63, 5000, '', 1, NULL, b'0', '2023-12-06 00:00:00', 4, NULL, NULL, NULL, '1-4231206093043', '1-111', 0, 5000, 0, 'BALISOLUTIONBIZ'),
('BH231206093045', '2023-12-06', NULL, 63, 10000, '', 1, NULL, b'0', '2023-12-06 00:00:00', 4, NULL, NULL, NULL, '1-4231206093053', '1-111', 0, 10000, 0, 'BALISOLUTIONBIZ');

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarhutang_kantin_dt`
--

CREATE TABLE `t_bayarhutang_kantin_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `noref` varchar(20) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `bayar` double DEFAULT 0,
  `norekfk_bayarhutang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarhutang_kantin_hd`
--

CREATE TABLE `t_bayarhutang_kantin_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `totalbayar` double DEFAULT 0,
  `ctn` varchar(200) DEFAULT NULL,
  `cabangfk` int(11) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `lock` bit(1) DEFAULT b'0',
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `deposit` double NOT NULL DEFAULT 0,
  `tunai` double NOT NULL DEFAULT 0,
  `diskon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarpiutang_dt`
--

CREATE TABLE `t_bayarpiutang_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `noref` varchar(20) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `bayar` double DEFAULT 0,
  `norekfk_bayarpiutang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_bayarpiutang_dt`
--

INSERT INTO `t_bayarpiutang_dt` (`pk`, `notrs`, `nobaris`, `noref`, `keterangan`, `bayar`, `norekfk_bayarpiutang`) VALUES
(1, 'K-4-231220111027', 1, 'K-4-231220111027', 'tes', 150000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarpiutang_hd`
--

CREATE TABLE `t_bayarpiutang_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `totalbayar` double DEFAULT 0,
  `ctn` varchar(200) DEFAULT NULL,
  `cabangfk` int(11) DEFAULT 1,
  `posting` bit(1) DEFAULT b'1',
  `lock` bit(1) DEFAULT b'0',
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `diskon` float NOT NULL DEFAULT 0,
  `nmcomp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarpiutang_kantin_dt`
--

CREATE TABLE `t_bayarpiutang_kantin_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `noref` varchar(20) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `bayar` double DEFAULT 0,
  `norekfk_bayarpiutang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarpiutang_kantin_hd`
--

CREATE TABLE `t_bayarpiutang_kantin_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `totalbayar` double DEFAULT 0,
  `ctn` varchar(200) DEFAULT NULL,
  `cabangfk` int(11) DEFAULT 1,
  `posting` bit(1) DEFAULT b'1',
  `lock` bit(1) DEFAULT b'0',
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `diskon` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_bayarpiutang_kredit_toko`
--

CREATE TABLE `t_bayarpiutang_kredit_toko` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `nofk` int(11) NOT NULL,
  `saldoawal` double NOT NULL DEFAULT 0,
  `bayar` double NOT NULL DEFAULT 0,
  `sisa` double NOT NULL DEFAULT 0,
  `nmcomp` text NOT NULL,
  `addedbyfk` int(11) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `nojurnal` varchar(70) NOT NULL,
  `akunpiutang` text NOT NULL,
  `akunkas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_bayartoko_dt`
--

CREATE TABLE `t_bayartoko_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `konsumenfk` int(11) NOT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `noref` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `saldoawal` double NOT NULL DEFAULT 0,
  `bayar` double DEFAULT 0,
  `sisa` double NOT NULL DEFAULT 0,
  `norekfk_bayarhutang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_bayartoko_hd`
--

CREATE TABLE `t_bayartoko_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `totalbayar` double DEFAULT 0,
  `ctn` varchar(200) DEFAULT NULL,
  `cabangfk` int(11) DEFAULT 1,
  `posting` bit(1) DEFAULT b'1',
  `lock` bit(1) DEFAULT b'0',
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `diskon` float NOT NULL DEFAULT 0,
  `nmcomp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_beli_dt`
--

CREATE TABLE `t_beli_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `jmlorder` double DEFAULT 0,
  `jml` double DEFAULT 0,
  `hargabl` double DEFAULT 0,
  `disitem` double DEFAULT 0,
  `jmldisitem` double DEFAULT 0,
  `total` double DEFAULT 0,
  `jmlretur` double DEFAULT 0,
  `noref` varchar(50) DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `beratawal` double NOT NULL DEFAULT 0,
  `beratakhir` double NOT NULL DEFAULT 0,
  `potberat` double NOT NULL DEFAULT 0,
  `jmlkonversi` double NOT NULL DEFAULT 1,
  `satuanfk` int(11) NOT NULL,
  `kadar` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_beli_dt`
--

INSERT INTO `t_beli_dt` (`pk`, `notrs`, `nobaris`, `itemfk`, `jmlorder`, `jml`, `hargabl`, `disitem`, `jmldisitem`, `total`, `jmlretur`, `noref`, `hargapokok`, `beratawal`, `beratakhir`, `potberat`, `jmlkonversi`, `satuanfk`, `kadar`) VALUES
(1, 'B4-231213215728', 1, 1, 0, 10, 10000, 0, 0, 100000, 0, '1-1B4-231213215728', 9900, 0, 0, 0, 1, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_beli_hd`
--

CREATE TABLE `t_beli_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `noorder` varchar(20) DEFAULT NULL,
  `tglorder` datetime DEFAULT NULL,
  `nosupplier` varchar(50) NOT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT 0,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljmlorder` double DEFAULT 0,
  `totaljml` double DEFAULT 0,
  `subtotal` double DEFAULT 0,
  `disfaktur` double DEFAULT 0,
  `jmldisfaktur` double DEFAULT 0,
  `pajak` double DEFAULT 0,
  `jmlpajak` double DEFAULT 0,
  `biayalain` double DEFAULT 0,
  `grandtotal` double DEFAULT 0,
  `deposit` double NOT NULL DEFAULT 0,
  `bayar` double DEFAULT 0,
  `sisakurang` double DEFAULT 0,
  `cicil` double DEFAULT 0,
  `kurang` double DEFAULT 0,
  `tglterima` datetime DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `pilih` bit(1) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `pulsa` bit(1) DEFAULT NULL,
  `beratawal` double NOT NULL DEFAULT 0,
  `tunai` double NOT NULL DEFAULT 0,
  `kartu` double NOT NULL DEFAULT 0,
  `plat` varchar(30) DEFAULT NULL,
  `potberat` double NOT NULL DEFAULT 0,
  `petugas` varchar(40) NOT NULL,
  `salesmanfk` int(11) NOT NULL,
  `pending` tinyint(4) NOT NULL DEFAULT 0,
  `nmcomp` varchar(50) DEFAULT NULL,
  `jmlretur` double NOT NULL DEFAULT 0,
  `noretur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_beli_hd`
--

INSERT INTO `t_beli_hd` (`notrs`, `tgl`, `jam`, `noorder`, `tglorder`, `nosupplier`, `supplierfk`, `gudangfk`, `carabayar`, `syarat`, `tgljthtmp`, `totaljmlorder`, `totaljml`, `subtotal`, `disfaktur`, `jmldisfaktur`, `pajak`, `jmlpajak`, `biayalain`, `grandtotal`, `deposit`, `bayar`, `sisakurang`, `cicil`, `kurang`, `tglterima`, `ctn`, `posting`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `pilih`, `akunkas`, `akunbiaya`, `akunhutang`, `akunpajak`, `rek`, `statuspajak`, `pulsa`, `beratawal`, `tunai`, `kartu`, `plat`, `potberat`, `petugas`, `salesmanfk`, `pending`, `nmcomp`, `jmlretur`, `noretur`) VALUES
('B4-231213215728', '2023-12-13', NULL, NULL, NULL, 'asas', 16, 1, 2, 7, '2023-12-20 00:00:00', 10, 10, 100000, 10, 10000, 10, 9000, 0, 99000, 0, 0, 99000, 0, 99000, NULL, '', NULL, NULL, 4, NULL, NULL, NULL, NULL, '1-4231213215835', NULL, NULL, NULL, '1-111', NULL, NULL, 0, 0, 0, NULL, 0, '', 0, 0, 'BALISOLUTIONBIZ', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `t_deposito_dt`
--

CREATE TABLE `t_deposito_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `depositfk` int(11) NOT NULL,
  `nobaris` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `awal` double NOT NULL DEFAULT 0,
  `bunga` double NOT NULL DEFAULT 0,
  `pajak` double NOT NULL DEFAULT 0,
  `saldo` double NOT NULL DEFAULT 0,
  `akunkas` varchar(10) NOT NULL,
  `norekening` varchar(50) NOT NULL,
  `notrstabungan` varchar(50) NOT NULL,
  `nourut` int(11) NOT NULL,
  `rekDebet` varchar(10) NOT NULL,
  `rekKredit` varchar(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `cabangfk` int(11) NOT NULL,
  `posting` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_deposito_hd`
--

CREATE TABLE `t_deposito_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `nasabahfk` int(11) NOT NULL,
  `iddeposito` varchar(50) NOT NULL,
  `tglbukarek` date NOT NULL,
  `jangkawaktu` int(11) NOT NULL DEFAULT 0,
  `tgljtmp` date NOT NULL,
  `tenor` double NOT NULL,
  `aro` tinyint(4) NOT NULL DEFAULT 1,
  `statusbunga` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=titip;2 ke rekening tabungan',
  `norekening` varchar(50) NOT NULL,
  `setor` double NOT NULL DEFAULT 0,
  `admin` double NOT NULL DEFAULT 0,
  `totaldeposito` double NOT NULL DEFAULT 0,
  `bunga` double NOT NULL DEFAULT 0,
  `jmlbunga` double NOT NULL DEFAULT 0,
  `pinalti` double NOT NULL DEFAULT 0,
  `jmlpinalti` double DEFAULT 0,
  `pajak` double NOT NULL DEFAULT 0,
  `jmlpajak` double NOT NULL DEFAULT 0,
  `akunkas` varchar(50) NOT NULL,
  `akunbunga` varchar(10) NOT NULL,
  `rekkas` varchar(10) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL,
  `kolektorfk` int(11) NOT NULL,
  `validasiperson` varchar(50) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT 1,
  `totalbunga` double NOT NULL DEFAULT 0,
  `totalpajak` double NOT NULL DEFAULT 0,
  `totalakhirdeposito` double NOT NULL DEFAULT 0,
  `ctn` varchar(255) NOT NULL,
  `akunposting` varchar(10) NOT NULL,
  `posting` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_itemkeluar_dt`
--

CREATE TABLE `t_itemkeluar_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `jml` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `norefkeluar` varchar(50) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_itemkeluar_dt`
--

INSERT INTO `t_itemkeluar_dt` (`pk`, `notrs`, `nobaris`, `itemfk`, `jml`, `hargapokok`, `norefkeluar`, `satuanfk`, `jmlkonversi`) VALUES
(1, 'SO231109163207', 1, 2, 89, 9000, '1-02231107210331', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_itemkeluar_hd`
--

CREATE TABLE `t_itemkeluar_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_itemkeluar_hd`
--

INSERT INTO `t_itemkeluar_hd` (`notrs`, `tgl`, `jam`, `gudangfk`, `totaljml`, `ctn`, `posting`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `akunkas`) VALUES
('SO231109163207', '2023-11-09', NULL, 1, 89, 'Dari Stok Opname', NULL, '2023-11-09 00:00:00', 4, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `t_itemmasuk_dt`
--

CREATE TABLE `t_itemmasuk_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `jml` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `norefmasuk` varchar(50) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_itemmasuk_hd`
--

CREATE TABLE `t_itemmasuk_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_itemmasuk_hd`
--

INSERT INTO `t_itemmasuk_hd` (`notrs`, `tgl`, `jam`, `gudangfk`, `totaljml`, `ctn`, `posting`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `akunkas`) VALUES
('', '2023-10-02', NULL, 1, 100394.14, 'Import dari sistem lama', NULL, '2023-10-02 00:00:00', 1, NULL, NULL, NULL, ''),
('SO231108175807', '2023-11-08', NULL, 1, 213, 'Dari Stok Opname', NULL, '2023-11-08 00:00:00', 0, NULL, NULL, NULL, ''),
('SO231108183146', '2023-11-08', NULL, 1, 90, 'Dari Stok Opname', NULL, '2023-11-08 00:00:00', 0, NULL, NULL, NULL, ''),
('SO231109163207', '2023-11-09', NULL, 1, 145, 'Dari Stok Opname', NULL, '2023-11-09 00:00:00', 4, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `t_jual_detail_dt`
--

CREATE TABLE `t_jual_detail_dt` (
  `pk` int(11) NOT NULL,
  `jualfk` int(11) NOT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itembaku` int(11) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `jml` double DEFAULT 0,
  `hargajl` double DEFAULT 0,
  `total` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `noref` varchar(50) DEFAULT NULL,
  `notrskonsinyasi` varchar(20) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1,
  `kdpaket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_jual_detail_dt`
--

INSERT INTO `t_jual_detail_dt` (`pk`, `jualfk`, `notrs`, `nobaris`, `itembaku`, `itemfk`, `jml`, `hargajl`, `total`, `hargapokok`, `noref`, `notrskonsinyasi`, `satuanfk`, `jmlkonversi`, `kdpaket`) VALUES
(7, 16, 'K-0-231107210037', 1, 1, 2, 3, 3000, 9000, 3000, '1-1B0-231104224647', NULL, NULL, 1, NULL),
(8, 18, 'K-0-231107210037', 1, 1, 2, 3, 3000, 9000, 3000, '1-1B0-231104224647', NULL, NULL, 1, NULL),
(9, 18, 'K-0-231107210037', 1, 1, 2, 3, 3000, 9000, 3000, '1-1B0-231104224647', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_jual_dt`
--

CREATE TABLE `t_jual_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kdpaket` varchar(10) DEFAULT NULL,
  `qtypaket` double DEFAULT 0,
  `hargapaket` double DEFAULT 0,
  `jmlorder` double DEFAULT 0,
  `jml` double DEFAULT 0,
  `hargajl` double DEFAULT 0,
  `komisisales` double DEFAULT 0,
  `disitem` double DEFAULT 0,
  `displus` double DEFAULT 0,
  `jmldisitem` double DEFAULT 0,
  `total` double DEFAULT 0,
  `jmlretur` double DEFAULT 0,
  `jmlreturPaket` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `komisi` double DEFAULT 0,
  `noref` varchar(50) DEFAULT NULL,
  `notrskonsinyasi` varchar(20) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1,
  `pulsa` bit(1) DEFAULT b'0',
  `ctnpulsa` varchar(100) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `hargasales` double DEFAULT 0,
  `ststebusmurah` tinyint(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_jual_dt`
--

INSERT INTO `t_jual_dt` (`pk`, `notrs`, `nobaris`, `itemfk`, `kdpaket`, `qtypaket`, `hargapaket`, `jmlorder`, `jml`, `hargajl`, `komisisales`, `disitem`, `displus`, `jmldisitem`, `total`, `jmlretur`, `jmlreturPaket`, `hargapokok`, `komisi`, `noref`, `notrskonsinyasi`, `satuanfk`, `jmlkonversi`, `pulsa`, `ctnpulsa`, `salesmanfk`, `hargasales`, `ststebusmurah`) VALUES
(1, 'K-4-231220111027', 1, 1, NULL, 0, 0, 0, 1, 15000, 0, 4, 0, 200, 14800, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0),
(2, 'K-4-231220111051', 1, 1, NULL, 0, 0, 0, 1, 15000, 0, 4, 0, 200, 14800, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0),
(3, 'K-4-231227205659', 1, 1, NULL, 0, 0, 0, 3, 15000, 0, 4, 0, 200, 44400, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0),
(4, 'K-4-231227213126', 1, 1, NULL, 0, 0, 0, 10, 15000, 0, 4, 0, 200, 148000, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0),
(5, 'K-4-231227213532', 1, 1, NULL, 0, 0, 0, 10, 15000, 0, 4, 0, 200, 148000, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0),
(6, 'K-4-231227213832', 1, 1, NULL, 0, 0, 0, 5, 15000, 0, 4, 0, 200, 74000, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0),
(7, 'K-4-231227214214', 1, 1, NULL, 0, 0, 0, 6, 15000, 0, 4, 0, 200, 88800, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0),
(8, 'K-4-231227214436', 1, 1, NULL, 0, 0, 0, 3, 15000, 0, 10, 0, 1500, 40500, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0),
(9, 'K-4-231227231031', 1, 1, NULL, 0, 0, 0, 1, 15000, 0, 0, 0, 0, 15000, 0, 0, 9900, 0, '1-1B4-231213215728', NULL, 4, 1, b'0', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_jual_hd`
--

CREATE TABLE `t_jual_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT current_timestamp(),
  `noorder` varchar(20) DEFAULT NULL,
  `jenistransaksi` int(11) NOT NULL DEFAULT 3 COMMENT '5=event;1,2=tenant tergantung kode;0 Store',
  `namatransaksi` varchar(20) NOT NULL DEFAULT 'Store',
  `tglorder` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljmlorder` double DEFAULT 0,
  `totaljml` double DEFAULT 0,
  `subtotal` double DEFAULT 0,
  `disfaktur` double DEFAULT 0,
  `jmldisfaktur` double DEFAULT 0,
  `pajak` double DEFAULT 0,
  `jmlpajak` double DEFAULT 0,
  `biayalain` double DEFAULT 0,
  `grandtotal` double DEFAULT 0,
  `jmlchg` double DEFAULT 0,
  `carabayar1` int(11) DEFAULT NULL,
  `tunai` double DEFAULT 0,
  `kartu` double DEFAULT 0,
  `kembali` double DEFAULT 0,
  `bayar` double DEFAULT 0,
  `sisakurang` double DEFAULT 0,
  `cicil` double DEFAULT 0,
  `kartukreditfk` int(11) DEFAULT NULL,
  `nokartukredit` varchar(50) DEFAULT NULL,
  `chg` double DEFAULT 0,
  `kurang` double DEFAULT 0,
  `tglkirim` datetime DEFAULT NULL,
  `statuskirim` varchar(50) DEFAULT NULL,
  `biayakirim` double DEFAULT 0,
  `kdcargo` int(11) DEFAULT NULL,
  `noresi` varchar(50) DEFAULT NULL,
  `tipekirim` bit(1) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `pending` bit(1) NOT NULL DEFAULT b'0',
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT '1-113',
  `statuspajak` bit(3) DEFAULT NULL,
  `addedpoin` tinyint(3) DEFAULT 0,
  `statuspending` bit(3) DEFAULT NULL,
  `statuspenjualan` bit(3) DEFAULT NULL,
  `pulsa` bit(3) DEFAULT NULL,
  `jmlbayarpiutang` double DEFAULT 0,
  `spesial` bit(3) DEFAULT NULL,
  `dp` double DEFAULT 0,
  `totalkomisi` double DEFAULT 0,
  `plat` varchar(20) NOT NULL,
  `sopir` varchar(50) NOT NULL,
  `jeniskendaraan` varchar(100) NOT NULL,
  `diskonberat` double NOT NULL DEFAULT 0,
  `selisihtimbangan` double NOT NULL DEFAULT 0,
  `biayabongkar` double NOT NULL DEFAULT 0,
  `biayapabrik` double NOT NULL DEFAULT 0,
  `biayasopir` double NOT NULL DEFAULT 0,
  `rekselisihtimbangan` varchar(5) NOT NULL,
  `rekpotpabrik` varchar(5) NOT NULL,
  `rekbiayasopir` varchar(5) NOT NULL,
  `rekbongkar` varchar(5) NOT NULL,
  `pilih` int(1) NOT NULL DEFAULT 0,
  `voucher` double NOT NULL DEFAULT 0,
  `nmcomp` varchar(50) DEFAULT NULL,
  `jmlpoin` double NOT NULL DEFAULT 0,
  `nilaipoin` double NOT NULL DEFAULT 0,
  `totalpoin` double NOT NULL DEFAULT 0,
  `stsupload` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_jual_hd`
--

INSERT INTO `t_jual_hd` (`pk`, `notrs`, `tgl`, `jam`, `noorder`, `jenistransaksi`, `namatransaksi`, `tglorder`, `konsumenfk`, `gudangfk`, `salesmanfk`, `komisisales`, `carabayar`, `syarat`, `tgljthtmp`, `totaljmlorder`, `totaljml`, `subtotal`, `disfaktur`, `jmldisfaktur`, `pajak`, `jmlpajak`, `biayalain`, `grandtotal`, `jmlchg`, `carabayar1`, `tunai`, `kartu`, `kembali`, `bayar`, `sisakurang`, `cicil`, `kartukreditfk`, `nokartukredit`, `chg`, `kurang`, `tglkirim`, `statuskirim`, `biayakirim`, `kdcargo`, `noresi`, `tipekirim`, `ctn`, `pending`, `posting`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `akunkas`, `akunbiaya`, `akunhutang`, `akunpajak`, `rek`, `statuspajak`, `addedpoin`, `statuspending`, `statuspenjualan`, `pulsa`, `jmlbayarpiutang`, `spesial`, `dp`, `totalkomisi`, `plat`, `sopir`, `jeniskendaraan`, `diskonberat`, `selisihtimbangan`, `biayabongkar`, `biayapabrik`, `biayasopir`, `rekselisihtimbangan`, `rekpotpabrik`, `rekbiayasopir`, `rekbongkar`, `pilih`, `voucher`, `nmcomp`, `jmlpoin`, `nilaipoin`, `totalpoin`, `stsupload`) VALUES
(1, 'K-4-231220111027', '2023-12-20', '2023-12-20 11:10:46', NULL, 3, 'Store', NULL, 0, 1, NULL, NULL, 2, 0, '2023-12-20 00:00:00', 0, 1, 14800, 0, 0, 0, 0, 0, 14800, 0, 1, 0, 0, 135200, 0, 14800, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-20 11:10:46', 4, NULL, NULL, NULL, '1-4231220111046', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 0, 0, 0),
(2, 'K-4-231220111051', '2023-12-20', '2023-12-20 11:11:09', NULL, 3, 'Store', NULL, 0, 1, NULL, NULL, 2, 0, '2023-12-20 00:00:00', 0, 1, 14800, 0, 0, 0, 0, 0, 14800, 0, 1, 0, 0, 200, 0, 14800, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-20 11:11:09', 4, NULL, NULL, NULL, '1-4231220111109', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 0, 0, 0),
(3, 'K-4-231227205659', '2023-12-27', '2023-12-27 20:57:15', NULL, 3, 'Store', NULL, 314993, 1, NULL, NULL, 2, 0, '2023-12-27 00:00:00', 0, 3, 44400, 0, 0, 0, 0, 0, 44400, 0, 1, 0, 0, 5600, 0, 14800, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-27 20:57:14', 4, NULL, NULL, NULL, '1-4231227205714', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 200, 0, 0),
(4, 'K-4-231227213126', '2023-12-27', '2023-12-27 21:31:44', NULL, 3, 'Store', NULL, 314976, 1, NULL, NULL, 1, 0, '2023-12-27 00:00:00', 0, 10, 148000, 0, 0, 0, 0, 0, 148000, 0, 1, 200000, 0, 52000, 200000, 0, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-27 21:31:44', 4, NULL, NULL, NULL, '1-4231227213144', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 200, 0, 0),
(5, 'K-4-231227213532', '2023-12-27', '2023-12-27 21:35:46', NULL, 3, 'Store', NULL, 314991, 1, NULL, NULL, 1, 0, '2023-12-27 00:00:00', 0, 10, 148000, 0, 0, 0, 0, 0, 148000, 0, 1, 200000, 0, 52000, 200000, 0, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-27 21:35:45', 4, NULL, NULL, NULL, '1-4231227213545', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 200, 0, 0),
(6, 'K-4-231227213832', '2023-12-27', '2023-12-27 21:39:14', NULL, 3, 'Store', NULL, 314858, 1, NULL, NULL, 1, 0, '2023-12-27 00:00:00', 0, 5, 74000, 0, 0, 0, 0, 0, 74000, 0, 1, 100000, 0, 26000, 100000, 0, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-27 21:39:13', 4, NULL, NULL, NULL, '1-4231227213848', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 200, 0, 0),
(7, 'K-4-231227214214', '2023-12-27', '2023-12-27 21:42:31', NULL, 3, 'Store', NULL, 314855, 1, NULL, NULL, 1, 0, '2023-12-27 00:00:00', 0, 6, 88800, 0, 0, 0, 0, 0, 88800, 0, 1, 100000, 0, 11200, 100000, 0, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-27 21:42:31', 4, NULL, NULL, NULL, '1-4231227214228', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 200, 0, 0),
(8, 'K-4-231227214436', '2023-12-27', '2023-12-27 21:44:46', NULL, 3, 'Store', NULL, 314956, 1, NULL, NULL, 1, 0, '2023-12-27 00:00:00', 0, 3, 40500, 0, 0, 0, 0, 0, 40500, 0, 1, 500000, 0, 459500, 500000, 0, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-27 21:44:46', 4, NULL, NULL, NULL, '1-4231227214446', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 200, 0, 0),
(9, 'K-4-231227231031', '2023-12-27', '2023-12-27 23:11:02', NULL, 3, 'Store', NULL, 314993, 1, NULL, NULL, 1, 0, '2023-12-27 00:00:00', 0, 1, 15000, 0, 0, 0, 0, 0, 15000, 0, 1, 200000, 0, 185000, 200000, 0, 0, 0, '', 0, 0, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-12-27 23:11:02', 4, NULL, NULL, NULL, '1-4231227231102', NULL, NULL, NULL, '1-111', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 75, 200, 15000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_jurnal_dt`
--

CREATE TABLE `t_jurnal_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `nobaris` int(11) NOT NULL,
  `rekfk` varchar(10) NOT NULL,
  `debet` double NOT NULL DEFAULT 0,
  `kredit` double NOT NULL DEFAULT 0,
  `noref` varchar(50) NOT NULL COMMENT 'untuk jurnal khsuss (jurnal masuk dan jurnal keluar)',
  `terima` varchar(50) NOT NULL COMMENT 'untuk jurnal khsuss (jurnal masuk dan jurnal keluar)',
  `keterangan` varchar(250) NOT NULL COMMENT 'untuk jurnal khsuss (jurnal masuk dan jurnal keluar)',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'true : khusus ; false : tidak',
  `divisi` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `t_jurnal_dt`
--

INSERT INTO `t_jurnal_dt` (`pk`, `notrs`, `nobaris`, `rekfk`, `debet`, `kredit`, `noref`, `terima`, `keterangan`, `status`, `divisi`) VALUES
(1, '1-4231213215835', 1, '1-171', 99000, 0, '', '', '', 0, 1),
(2, '1-4231213215835', 3, '2-132', 0, 99000, '', '', '', 0, 2),
(3, '1-4231220111046', 1, '4-111', 0, 14800, '', '', '', 1, 1),
(4, '1-4231220111046', 1, '1-111', 14800, 0, '', '', '', 1, 1),
(5, '1-4231220111046', 7, '5-101', 9900, 0, '', '', '', 0, 2),
(6, '1-4231220111046', 8, '1-171', 0, 9900, '', '', '', 0, 2),
(7, '1-4231220111109', 1, '4-111', 0, 14800, '', '', '', 1, 1),
(8, '1-4231220111109', 1, '1-111', 14800, 0, '', '', '', 1, 1),
(9, '1-4231220111109', 7, '5-101', 9900, 0, '', '', '', 0, 2),
(10, '1-4231220111109', 8, '1-171', 0, 9900, '', '', '', 0, 2),
(11, '1-4231227205714', 1, '4-111', 0, 44400, '', '', '', 1, 1),
(12, '1-4231227205714', 1, '1-111', 44400, 0, '', '', '', 1, 1),
(13, '1-4231227205714', 7, '5-101', 29700, 0, '', '', '', 0, 2),
(14, '1-4231227205714', 8, '1-171', 0, 29700, '', '', '', 0, 2),
(15, '1-4231227205814', 1, '1-171', 14800, 0, '', '', '', 0, 1),
(16, '1-4231227205814', 3, '1-111', 0, 14800, '', '', '', 0, 1),
(17, '1-4231227213144', 1, '4-111', 0, 148000, '', '', '', 1, 1),
(18, '1-4231227213144', 1, '1-111', 148000, 0, '', '', '', 1, 1),
(19, '1-4231227213144', 7, '5-101', 99000, 0, '', '', '', 0, 2),
(20, '1-4231227213144', 8, '1-171', 0, 99000, '', '', '', 0, 2),
(21, '1-4231227213545', 1, '4-111', 0, 148000, '', '', '', 1, 1),
(22, '1-4231227213545', 1, '1-111', 148000, 0, '', '', '', 1, 1),
(23, '1-4231227213545', 7, '5-101', 99000, 0, '', '', '', 0, 2),
(24, '1-4231227213545', 8, '1-171', 0, 99000, '', '', '', 0, 2),
(25, '1-4231227213848', 1, '4-111', 0, 74000, '', '', '', 1, 1),
(26, '1-4231227213848', 1, '1-111', 74000, 0, '', '', '', 1, 1),
(27, '1-4231227213848', 7, '5-101', 49500, 0, '', '', '', 0, 2),
(28, '1-4231227213848', 8, '1-171', 0, 49500, '', '', '', 0, 2),
(29, '1-4231227214228', 1, '4-111', 0, 88800, '', '', '', 1, 1),
(30, '1-4231227214228', 1, '1-111', 88800, 0, '', '', '', 1, 1),
(31, '1-4231227214228', 7, '5-101', 59400, 0, '', '', '', 0, 2),
(32, '1-4231227214228', 8, '1-171', 0, 59400, '', '', '', 0, 2),
(33, '1-4231227214446', 1, '4-111', 0, 40500, '', '', '', 1, 1),
(34, '1-4231227214446', 1, '1-111', 40500, 0, '', '', '', 1, 1),
(35, '1-4231227214446', 7, '5-101', 29700, 0, '', '', '', 0, 2),
(36, '1-4231227214446', 8, '1-171', 0, 29700, '', '', '', 0, 2),
(37, '1-4231227231102', 1, '4-111', 0, 15000, '', '', '', 1, 1),
(38, '1-4231227231102', 1, '1-111', 15000, 0, '', '', '', 1, 1),
(39, '1-4231227231102', 7, '5-101', 9900, 0, '', '', '', 0, 2),
(40, '1-4231227231102', 8, '1-171', 0, 9900, '', '', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_jurnal_hd`
--

CREATE TABLE `t_jurnal_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `noref` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `totaldebet` double NOT NULL DEFAULT 0,
  `totalkredit` double NOT NULL DEFAULT 0,
  `ctn` varchar(220) NOT NULL,
  `jnspst` varchar(2) NOT NULL COMMENT 'Field Size = 2 => AL = Saldo Awal; PP = Posting Periode Bersangkutan',
  `stspst` tinyint(4) NOT NULL COMMENT 'Field Size = Byte => 1 = Saldo awal memulai program , 2 = Posting setelah aplikasi digunakan',
  `stsref` tinyint(4) NOT NULL COMMENT 'Format = Yes/No => Yes = Input jurnal diambil dari transaksi , No = Input jurnal dilakukan manual',
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL,
  `cabangfk` int(11) NOT NULL,
  `jurnalkhusus` varchar(100) NOT NULL COMMENT 'nama form untuk jurnal khusus',
  `dari` varchar(100) NOT NULL COMMENT 'referensi nama untuk jurnal khusus',
  `hpp` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'posting untuk hpp; Yes = HPP ; No=bukan hpp',
  `divisi` int(11) NOT NULL DEFAULT 1,
  `unitdari` varchar(10) NOT NULL,
  `unitke` varchar(10) NOT NULL,
  `nmcomp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `t_jurnal_hd`
--

INSERT INTO `t_jurnal_hd` (`pk`, `notrs`, `tgl`, `noref`, `keterangan`, `totaldebet`, `totalkredit`, `ctn`, `jnspst`, `stspst`, `stsref`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `cabangfk`, `jurnalkhusus`, `dari`, `hpp`, `divisi`, `unitdari`, `unitke`, `nmcomp`) VALUES
(1, '1-4231117204203', '2023-11-17', 'K-4-231117204120', 'Penjualan : K-4-231117204120', 26700, 26700, '', 'PP', 2, 1, '2023-11-17 20:42:03', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(2, '1-4231129082037', '2023-11-29', 'K-4-231129082029', 'Penjualan : K-4-231129082029', 13000, 13000, '', 'PP', 2, 1, '2023-11-29 08:20:37', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(3, '1-4231129082052', '2023-11-29', 'K-4-231129082041', 'Penjualan : K-4-231129082041', 22700, 22700, '', 'PP', 2, 1, '2023-11-29 08:20:52', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(4, '1-4231129154115', '2023-11-29', 'K-4-231129154104', 'Penjualan : K-4-231129154104', 26000, 26000, '', 'PP', 2, 1, '2023-11-29 15:41:15', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(5, '1-4231129154331', '2023-11-29', 'K-4-231129154325', 'Penjualan : K-4-231129154325', 13000, 13000, '', 'PP', 2, 1, '2023-11-29 15:43:31', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(6, '1-4231129154912', '2023-11-29', 'K-4-231129154848', 'Penjualan : K-4-231129154848', 46300, 46300, '', 'PP', 2, 1, '2023-11-29 15:49:12', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(7, '1-4231129154957', '2023-11-29', 'K-4-231129154948', 'Penjualan : K-4-231129154948', 13000, 13000, '', 'PP', 2, 1, '2023-11-29 15:49:57', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(8, '1-4231205210553', '2023-12-05', 'K-4-231205210531', 'Penjualan : K-4-231205210531', 13000, 13000, '', 'PP', 2, 1, '2023-12-05 21:05:53', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(10, '1-4231205211110', '2023-12-05', 'B4-231205211041', 'Pembelian : B4-231205211041-BINTANG BALI INDAH PT', 17149, 17149, '', 'PP', 2, 1, '2023-12-05 21:11:11', 0, '0000-00-00 00:00:00', 0, 1, 'Pembelian', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(11, '1-4231205211213', '2023-12-05', 'B4-231205211146', 'Pembelian : B4-231205211146-BINTANG BALI INDAH PT', 57613, 57613, '', 'PP', 2, 1, '2023-12-05 21:12:13', 0, '0000-00-00 00:00:00', 0, 1, 'Pembelian', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(12, '1-4231205211527', '2023-12-05', 'B4-231205211508', 'Pembelian : B4-231205211508-BINTANG BALI INDAH PT', 50897, 50897, '', 'PP', 2, 1, '2023-12-05 21:15:27', 0, '0000-00-00 00:00:00', 0, 1, 'Pembelian', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(14, '1-4231205211938', '2023-12-05', 'B4-231205211908', 'Pembelian : B4-231205211908-BINTANG BALI INDAH PT', 80464, 80464, '', 'PP', 2, 1, '2023-12-05 21:20:19', 0, '0000-00-00 00:00:00', 0, 1, 'Pembelian', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(15, '1-4231205213615', '2023-12-05', 'A1-231205213506', 'Aktiva : A1-231205213506-Komputer', 7200000, 7200000, '', 'PP', 2, 1, '2023-12-05 21:36:16', 0, '0000-00-00 00:00:00', 0, 1, 'Aktiva', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(16, '1-4231205213640', '2024-01-05', 'A1-231205213506', 'Aktiva : A1-231205213506-Komputer', 133333, 133333, '', 'PP', 2, 1, '2023-12-05 21:36:40', 0, '0000-00-00 00:00:00', 0, 1, 'Aktiva', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(17, '1-4231205213706', '2023-12-01', '', 'Saldo Awal', 0, 0, '', 'AL', 2, 0, '2023-12-05 21:37:06', 0, '0000-00-00 00:00:00', 0, 1, '1', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(18, '1-4231205213719', '2024-01-01', '', 'Saldo Awal', 0, 0, '', 'AL', 2, 0, '2023-12-05 21:37:19', 0, '0000-00-00 00:00:00', 0, 1, '1', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(20, '1-4231205213807', '2023-10-01', '', 'Saldo Awal', 0, 0, '', 'AL', 2, 0, '2023-12-05 21:38:07', 0, '0000-00-00 00:00:00', 0, 1, '1', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(21, '1-4231205213814', '2023-11-01', '', 'Saldo Awal', 0, 0, '', 'AL', 2, 0, '2023-12-05 21:38:14', 0, '0000-00-00 00:00:00', 0, 1, '1', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(22, '1-4231205214810', '2023-12-05', 'K-4-231205214750', 'Penjualan : K-4-231205214750', 14500, 14500, '', 'PP', 2, 1, '2023-12-05 21:48:10', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(23, '1-4231205214832', '2023-12-05', 'K-4-231205214824', 'Penjualan : K-4-231205214824', 57000, 57000, '', 'PP', 2, 1, '2023-12-05 21:48:32', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(24, '1-4231206092453', '2023-12-06', 'B4-231206092427', 'Pembelian : B4-231206092427-ANDRE', 22503, 22503, '', 'PP', 2, 1, '2023-12-06 09:24:54', 0, '0000-00-00 00:00:00', 0, 1, 'Pembelian', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(25, '1-4231206092540', '2023-12-06', 'B4-231206092520', 'Pembelian : B4-231206092520-ARIZONA KARYA MITRA PT', 75010, 75010, '', 'PP', 2, 1, '2023-12-06 09:25:40', 0, '0000-00-00 00:00:00', 0, 1, 'Pembelian', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(26, '1-4231206093043', '2023-12-06', 'BH231206093033', 'Bayar Hutang BH231206093033 - ', 5000, 5000, '', 'PP', 2, 1, '2023-12-06 09:30:43', 0, '0000-00-00 00:00:00', 0, 1, 'Hutang', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(27, '1-4231206093053', '2023-12-06', 'BH231206093045', 'Bayar Hutang BH231206093045 - ', 10000, 10000, '', 'PP', 2, 1, '2023-12-06 09:30:53', 0, '0000-00-00 00:00:00', 0, 1, 'Hutang', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(28, '1-4231213215835', '2023-12-13', 'B4-231213215728', 'Pembelian : B4-231213215728-ANDRE', 99000, 99000, '', 'PP', 2, 1, '2023-12-13 21:58:36', 0, '0000-00-00 00:00:00', 0, 1, 'Pembelian', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(29, '1-4231220111046', '2023-12-20', 'K-4-231220111027', 'Penjualan : K-4-231220111027', 14800, 14800, '', 'PP', 2, 1, '2023-12-20 11:10:46', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(30, '1-4231220111109', '2023-12-20', 'K-4-231220111051', 'Penjualan : K-4-231220111051', 14800, 14800, '', 'PP', 2, 1, '2023-12-20 11:11:09', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(31, '1-4231227205714', '2023-12-27', 'K-4-231227205659', 'Penjualan : K-4-231227205659', 44400, 44400, '', 'PP', 2, 1, '2023-12-27 20:57:14', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(32, '1-4231227205814', '2023-12-27', 'RJ4-231227205752', 'Retur Penjualan : RJ4-231227205752-SILVI', 14800, 14800, '', 'PP', 2, 1, '2023-12-27 20:58:15', 0, '0000-00-00 00:00:00', 0, 1, 'Retur Jual', '', 1, 1, '', '', 'BALISOLUTIONBIZ'),
(33, '1-4231227213144', '2023-12-27', 'K-4-231227213126', 'Penjualan : K-4-231227213126', 148000, 148000, '', 'PP', 2, 1, '2023-12-27 21:31:44', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(34, '1-4231227213545', '2023-12-27', 'K-4-231227213532', 'Penjualan : K-4-231227213532', 148000, 148000, '', 'PP', 2, 1, '2023-12-27 21:35:45', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(35, '1-4231227213848', '2023-12-27', 'K-4-231227213832', 'Penjualan : K-4-231227213832', 74000, 74000, '', 'PP', 2, 1, '2023-12-27 21:39:13', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(36, '1-4231227214228', '2023-12-27', 'K-4-231227214214', 'Penjualan : K-4-231227214214', 88800, 88800, '', 'PP', 2, 1, '2023-12-27 21:42:31', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(37, '1-4231227214446', '2023-12-27', 'K-4-231227214436', 'Penjualan : K-4-231227214436', 40500, 40500, '', 'PP', 2, 1, '2023-12-27 21:44:46', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL),
(38, '1-4231227231102', '2023-12-27', 'K-4-231227231031', 'Penjualan : K-4-231227231031', 15000, 15000, '', 'PP', 2, 1, '2023-12-27 23:11:02', 0, '0000-00-00 00:00:00', 0, 1, '', '', 1, 1, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_kantin_dt`
--

CREATE TABLE `t_kantin_dt` (
  `pk` int(11) NOT NULL,
  `kantinfk` int(11) NOT NULL,
  `konsumenfk` int(11) NOT NULL,
  `qty` double NOT NULL DEFAULT 0,
  `hargabl` double NOT NULL DEFAULT 0,
  `hargajl` double NOT NULL DEFAULT 0,
  `totalhargabl` double NOT NULL DEFAULT 0,
  `totalhargajl` double NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_kantin_hd`
--

CREATE TABLE `t_kantin_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `periode` varchar(50) NOT NULL,
  `supplierfk` int(11) NOT NULL,
  `jmlvoucher` double NOT NULL DEFAULT 0,
  `jmldetail` double NOT NULL DEFAULT 0,
  `totaljml` double NOT NULL DEFAULT 0,
  `itemfk` int(11) NOT NULL,
  `hargabl` double NOT NULL DEFAULT 0,
  `hargajl` double NOT NULL DEFAULT 0,
  `totalhargabl` double NOT NULL DEFAULT 0,
  `totalhargajl` double NOT NULL DEFAULT 0,
  `totalprofit` double NOT NULL DEFAULT 0,
  `akunkas` varchar(50) NOT NULL,
  `akunhutang` varchar(100) NOT NULL,
  `akunpiutang` varchar(100) NOT NULL,
  `rekbiaya` varchar(10) NOT NULL,
  `rekhutang` varchar(10) NOT NULL,
  `rekpiutang` varchar(10) NOT NULL,
  `rekpendapatan` varchar(10) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL,
  `bayarhutang` double NOT NULL DEFAULT 0,
  `bayarpiutang` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_kirim_konsinyasi_dt`
--

CREATE TABLE `t_kirim_konsinyasi_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kdpaket` varchar(10) DEFAULT NULL,
  `qtypaket` double DEFAULT 0,
  `hargapaket` double DEFAULT 0,
  `jml` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `hargajl` double DEFAULT 0,
  `disitem` double DEFAULT 0,
  `disitemplus` double DEFAULT 0,
  `jmldisitem` double DEFAULT 0,
  `total` double DEFAULT 0,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1,
  `jmljual` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_kirim_konsinyasi_hd`
--

CREATE TABLE `t_kirim_konsinyasi_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `jenistransaksi` tinyint(4) NOT NULL DEFAULT 5,
  `namatransaksi` varchar(40) NOT NULL DEFAULT 'Event',
  `salesmanfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT 0,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljml` double DEFAULT 0,
  `subtotal` double DEFAULT 0,
  `disfaktur` double DEFAULT 0,
  `jmldisfaktur` double DEFAULT 0,
  `pajak` double DEFAULT 0,
  `jmlpajak` double DEFAULT 0,
  `biayalain` double DEFAULT 0,
  `grandtotal` double DEFAULT 0,
  `tunai` double NOT NULL DEFAULT 0,
  `kartu` double NOT NULL DEFAULT 0,
  `bayar` double DEFAULT 0,
  `nokartukredit` varchar(50) NOT NULL,
  `chg` double NOT NULL DEFAULT 0,
  `jmlchg` double NOT NULL DEFAULT 0,
  `kartukreditfk` tinyint(4) NOT NULL,
  `sisa` double DEFAULT 0,
  `tglpakai` datetime DEFAULT NULL,
  `stskirim` varchar(20) DEFAULT 'Belum Selesai',
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `akunkas` varchar(50) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `dp` double DEFAULT 0,
  `totalambil` double DEFAULT 0,
  `ORDERPESANAN` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_laku_konsinyasi_dt`
--

CREATE TABLE `t_laku_konsinyasi_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kdpaket` varchar(10) DEFAULT NULL,
  `qtypaket` double DEFAULT 0,
  `hargapaket` double DEFAULT 0,
  `jmlorder` double DEFAULT 0,
  `jml` double DEFAULT 0,
  `hargajl` double DEFAULT 0,
  `komisisales` double DEFAULT 0,
  `disitem` double DEFAULT 0,
  `displus` double DEFAULT 0,
  `jmldisitem` double DEFAULT 0,
  `total` double DEFAULT 0,
  `jmlretur` double DEFAULT 0,
  `jmlreturPaket` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `komisi` double DEFAULT 0,
  `noref` varchar(50) DEFAULT NULL,
  `notrskonsinyasi` varchar(20) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1,
  `pulsa` bit(1) DEFAULT b'0',
  `ctnpulsa` varchar(100) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `hargasales` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_laku_konsinyasi_hd`
--

CREATE TABLE `t_laku_konsinyasi_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT current_timestamp(),
  `noorder` varchar(20) DEFAULT NULL,
  `jenistransaksi` int(11) NOT NULL DEFAULT 3 COMMENT '5=event;1,2=tenant tergantung kode;0 Store',
  `namatransaksi` varchar(20) NOT NULL DEFAULT 'Store',
  `tglorder` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljmlorder` double DEFAULT 0,
  `totaljml` double DEFAULT 0,
  `subtotal` double DEFAULT 0,
  `disfaktur` double DEFAULT 0,
  `jmldisfaktur` double DEFAULT 0,
  `pajak` double DEFAULT 0,
  `jmlpajak` double DEFAULT 0,
  `biayalain` double DEFAULT 0,
  `grandtotal` double DEFAULT 0,
  `jmlchg` double DEFAULT 0,
  `carabayar1` int(11) DEFAULT NULL,
  `tunai` double DEFAULT 0,
  `kartu` double DEFAULT 0,
  `kembali` double DEFAULT 0,
  `bayar` double DEFAULT 0,
  `sisakurang` double DEFAULT 0,
  `cicil` double DEFAULT 0,
  `kartukreditfk` int(11) DEFAULT NULL,
  `nokartukredit` varchar(50) DEFAULT NULL,
  `chg` double DEFAULT 0,
  `kurang` double DEFAULT 0,
  `tglkirim` datetime DEFAULT NULL,
  `statuskirim` varchar(50) DEFAULT NULL,
  `biayakirim` double DEFAULT 0,
  `kdcargo` int(11) DEFAULT NULL,
  `noresi` varchar(50) DEFAULT NULL,
  `tipekirim` bit(1) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `pending` bit(1) NOT NULL DEFAULT b'0',
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT '1-113',
  `statuspajak` bit(1) DEFAULT NULL,
  `addedpoin` bit(1) DEFAULT NULL,
  `statuspending` bit(1) DEFAULT NULL,
  `statuspenjualan` bit(1) DEFAULT NULL,
  `pulsa` bit(1) DEFAULT NULL,
  `jmlbayarpiutang` double DEFAULT 0,
  `spesial` bit(1) DEFAULT NULL,
  `dp` double DEFAULT 0,
  `totalkomisi` double DEFAULT 0,
  `plat` varchar(20) NOT NULL,
  `sopir` varchar(50) NOT NULL,
  `jeniskendaraan` varchar(100) NOT NULL,
  `diskonberat` double NOT NULL DEFAULT 0,
  `selisihtimbangan` double NOT NULL DEFAULT 0,
  `biayabongkar` double NOT NULL DEFAULT 0,
  `biayapabrik` double NOT NULL DEFAULT 0,
  `biayasopir` double NOT NULL DEFAULT 0,
  `rekselisihtimbangan` varchar(5) NOT NULL,
  `rekpotpabrik` varchar(5) NOT NULL,
  `rekbiayasopir` varchar(5) NOT NULL,
  `rekbongkar` varchar(5) NOT NULL,
  `pilih` int(1) NOT NULL DEFAULT 0,
  `voucher` double NOT NULL DEFAULT 0,
  `nmcomp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_neracasaldo`
--

CREATE TABLE `t_neracasaldo` (
  `notrs` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `rekfk` varchar(10) DEFAULT NULL,
  `debet` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `grupfk` varchar(11) DEFAULT NULL,
  `divisi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_news`
--

CREATE TABLE `t_news` (
  `pk` int(11) NOT NULL,
  `judul` text NOT NULL,
  `detail1` longtext NOT NULL,
  `detail2` longtext DEFAULT NULL,
  `detail3` longtext DEFAULT NULL,
  `gambar1` text DEFAULT NULL,
  `gambar2` text DEFAULT NULL,
  `gambar3` text DEFAULT NULL,
  `gambar4` text DEFAULT NULL,
  `tgl` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_orderbeli_dt`
--

CREATE TABLE `t_orderbeli_dt` (
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `hargabl` double DEFAULT NULL,
  `disitem` double DEFAULT NULL,
  `jmldisitem` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `jmlawal` int(11) NOT NULL DEFAULT 0,
  `potberat` int(11) NOT NULL DEFAULT 0,
  `satuanfk` int(11) DEFAULT 0,
  `jmlkonversi` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_orderbeli_dt`
--

INSERT INTO `t_orderbeli_dt` (`notrs`, `nobaris`, `itemfk`, `jml`, `hargabl`, `disitem`, `jmldisitem`, `total`, `jmlawal`, `potberat`, `satuanfk`, `jmlkonversi`) VALUES
('PO0-231108214223', 1, 7, 50, 80000, 0, 0, 4000000, 0, 0, 0, 0),
('PO0-231108214223', 2, 9, 1, 12000, 0, 0, 12000, 0, 0, 0, 0),
('PO4-231109154023', 1, 9, 100, 12500, 0, 0, 1250000, 0, 0, 0, 0),
('PO4-231109154023', 2, 7, 100, 80000, 0, 0, 8000000, 0, 0, 0, 0),
('PO4-231213211852', 1, 1, 10, 9000, 0, 0, 90000, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_orderbeli_hd`
--

CREATE TABLE `t_orderbeli_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT 1,
  `syarat` int(11) DEFAULT 0,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljml` double DEFAULT 0,
  `subtotal` double DEFAULT 0,
  `disfaktur` double DEFAULT 0,
  `jmldisfaktur` double DEFAULT 0,
  `pajak` double DEFAULT 0,
  `jmlpajak` double DEFAULT 0,
  `biayalain` double DEFAULT 0,
  `deposit` double NOT NULL DEFAULT 0,
  `grandtotal` double DEFAULT 0,
  `tglpakai` datetime DEFAULT NULL,
  `ststerima` varchar(20) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `pilih` bit(1) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `beratawal` double NOT NULL DEFAULT 0,
  `plat` varchar(15) NOT NULL,
  `potberat` double NOT NULL DEFAULT 0,
  `petugas` varchar(50) NOT NULL,
  `nmcomp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_orderbeli_hd`
--

INSERT INTO `t_orderbeli_hd` (`pk`, `notrs`, `tgl`, `jam`, `supplierfk`, `gudangfk`, `carabayar`, `syarat`, `tgljthtmp`, `totaljml`, `subtotal`, `disfaktur`, `jmldisfaktur`, `pajak`, `jmlpajak`, `biayalain`, `deposit`, `grandtotal`, `tglpakai`, `ststerima`, `ctn`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `pilih`, `statuspajak`, `beratawal`, `plat`, `potberat`, `petugas`, `nmcomp`) VALUES
(4, 'PO0-231108214223', '2023-11-08', NULL, 1, 1, 1, 0, '2023-11-08 00:00:00', 51, 4012000, 0, 0, 0, 0, 0, 0, 4012000, NULL, 'Belum Diterima', '', NULL, 0, NULL, 0, NULL, NULL, NULL, 0, '', 0, '', 'BALISOLUTIONBIZ'),
(5, 'PO4-231109154023', '2023-11-09', NULL, 1, 1, 1, 0, '2023-11-09 00:00:00', 200, 9250000, 0, 0, 0, 0, 0, 0, 9250000, NULL, 'Belum Diterima', '', NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', 'BALISOLUTIONBIZ'),
(6, 'PO4-231213211852', '2023-12-13', NULL, 21, 1, 1, 0, '2023-12-13 00:00:00', 10, 90000, 0, 0, 0, 0, 0, 0, 90000, NULL, 'Belum Diterima', '', NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '', 'BALISOLUTIONBIZ');

-- --------------------------------------------------------

--
-- Table structure for table `t_orderjual_dt`
--

CREATE TABLE `t_orderjual_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kdpaket` varchar(10) DEFAULT NULL,
  `qtypaket` double DEFAULT 0,
  `hargapaket` double DEFAULT 0,
  `jml` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `hargajl` double DEFAULT 0,
  `disitem` double DEFAULT 0,
  `disitemplus` double DEFAULT 0,
  `jmldisitem` double DEFAULT 0,
  `total` double DEFAULT 0,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1,
  `jmljual` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_orderjual_hd`
--

CREATE TABLE `t_orderjual_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `jenistransaksi` tinyint(4) NOT NULL DEFAULT 5,
  `namatransaksi` varchar(40) NOT NULL DEFAULT 'Event',
  `salesmanfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT 0,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljml` double DEFAULT 0,
  `subtotal` double DEFAULT 0,
  `disfaktur` double DEFAULT 0,
  `jmldisfaktur` double DEFAULT 0,
  `pajak` double DEFAULT 0,
  `jmlpajak` double DEFAULT 0,
  `biayalain` double DEFAULT 0,
  `grandtotal` double DEFAULT 0,
  `tunai` double NOT NULL DEFAULT 0,
  `kartu` double NOT NULL DEFAULT 0,
  `bayar` double DEFAULT 0,
  `nokartukredit` varchar(50) NOT NULL,
  `chg` double NOT NULL DEFAULT 0,
  `jmlchg` double NOT NULL DEFAULT 0,
  `kartukreditfk` tinyint(4) NOT NULL,
  `sisa` double DEFAULT 0,
  `tglpakai` datetime DEFAULT NULL,
  `stskirim` varchar(20) DEFAULT 'Belum Selesai',
  `ctn` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `akunkas` varchar(50) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `dp` double DEFAULT 0,
  `totalambil` double DEFAULT 0,
  `ORDERPESANAN` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_pembayaran`
--

CREATE TABLE `t_pembayaran` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `nopinjaman` varchar(50) DEFAULT NULL,
  `nasabahfk` int(11) NOT NULL,
  `AngsuranKe` int(11) DEFAULT NULL,
  `tanggaljatuhtempo` date DEFAULT NULL,
  `tanggalbayar` date DEFAULT NULL,
  `pokok` double NOT NULL DEFAULT 0,
  `bunga` double NOT NULL DEFAULT 0,
  `penyisihanbunga` double NOT NULL DEFAULT 0,
  `notabungan` varchar(50) DEFAULT NULL,
  `notrstabungan` varchar(50) DEFAULT NULL,
  `denda` double NOT NULL DEFAULT 0,
  `totalbayar` double NOT NULL DEFAULT 0,
  `saldoakhir` double NOT NULL DEFAULT 0,
  `pinalty` double NOT NULL DEFAULT 0,
  `jmlpinalty` double NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL,
  `statuspelunasan` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'yes : dilunasi sebelum jatuh tempo Tambahan field 2013',
  `ctn` varchar(200) NOT NULL,
  `akunkas` varchar(50) NOT NULL,
  `autobayar` tinyint(4) NOT NULL DEFAULT 0,
  `lat` varchar(100) NOT NULL,
  `lon` varchar(100) NOT NULL,
  `marketingfk` int(11) DEFAULT NULL,
  `ststambah` tinyint(4) NOT NULL DEFAULT 0,
  `dateadd` timestamp NOT NULL DEFAULT current_timestamp(),
  `posting` tinyint(4) NOT NULL DEFAULT 1,
  `rek` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_peminjaman`
--

CREATE TABLE `t_peminjaman` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `pinjamanfk` int(11) NOT NULL,
  `nasabahfk` int(11) NOT NULL,
  `jaminan_1` varchar(200) NOT NULL,
  `jaminan_2` varchar(200) NOT NULL,
  `sistempinjam` tinyint(4) NOT NULL COMMENT '0 = Kredit Bunga Tetap; 1 = Kredit Bunga Menurun Efektif; 2 = Kredit Bunga Anuitas\r\n4 = harian',
  `periodepinjam` varchar(10) NOT NULL DEFAULT 'Bulanan' COMMENT 'Bulanan atau harian',
  `totalpeminjaman` double NOT NULL DEFAULT 0,
  `bungapinjam` double NOT NULL DEFAULT 0,
  `lamapinjam` int(11) NOT NULL DEFAULT 0,
  `biayaadmin` double NOT NULL DEFAULT 0,
  `biayaprovisi` double DEFAULT 0,
  `biayalain` double NOT NULL DEFAULT 0,
  `pokokpinjaman` double NOT NULL DEFAULT 0,
  `pokokangsuran` double NOT NULL DEFAULT 0,
  `bungaangsuran` double NOT NULL DEFAULT 0,
  `jumlahangsuran` double NOT NULL DEFAULT 0,
  `notabungan` varchar(50) NOT NULL,
  `akuntabungan` varchar(10) NOT NULL,
  `penyisihanbunga` double NOT NULL DEFAULT 0,
  `ctn` varchar(200) NOT NULL,
  `statusproses` varchar(1) NOT NULL COMMENT '1 = Pengajuan;2 = Persetujuan;3=Disetujui;4 = Pembayaran Kredit;5 = Macet;6= Lunas',
  `tanggalpersetujuan` date DEFAULT NULL,
  `tanggaljatuhtempo` date DEFAULT NULL,
  `tanggalbayarpertama` date DEFAULT NULL,
  `nmjaminan1` varchar(250) NOT NULL,
  `nmjaminan2` varchar(250) NOT NULL,
  `alamatjaminan1` varchar(250) NOT NULL,
  `alamatjaminan2` varchar(250) NOT NULL,
  `jenisjaminan1` varchar(100) NOT NULL,
  `jenisjaminan2` varchar(100) NOT NULL,
  `nilaijaminan1` double NOT NULL DEFAULT 0,
  `nilaijaminan2` double NOT NULL DEFAULT 0,
  `nojurnal` varchar(50) NOT NULL,
  `akunkas` varchar(50) NOT NULL,
  `akunmacet` varchar(10) NOT NULL,
  `akunprovisi` varchar(10) NOT NULL,
  `akunlain` varchar(10) NOT NULL,
  `akunadmin` varchar(10) NOT NULL,
  `nmpenjamin` varchar(150) NOT NULL,
  `pekerjaanpenjamin` varchar(50) NOT NULL,
  `alamatpenjamin` varchar(250) NOT NULL,
  `Tlppenjamin` varchar(50) NOT NULL,
  `ktppenjamin` varchar(50) NOT NULL,
  `kolektibilitas` varchar(50) NOT NULL,
  `sisapinjaman` double NOT NULL DEFAULT 0,
  `jmlsaldomacet` tinyint(1) NOT NULL DEFAULT 0,
  `tglmacet` date DEFAULT NULL,
  `autobayar` tinyint(4) NOT NULL DEFAULT 0,
  `jenispinjaman` tinyint(4) NOT NULL,
  `tutup` tinyint(4) NOT NULL DEFAULT 0,
  `akunpinjam` varchar(20) NOT NULL,
  `akunbunga` varchar(20) NOT NULL,
  `biayaasuransi` double NOT NULL DEFAULT 0,
  `biayacadangan` double NOT NULL DEFAULT 0,
  `akuncadangan` varchar(10) NOT NULL,
  `akunasuransi` varchar(10) NOT NULL,
  `noangsuran` int(11) NOT NULL DEFAULT 0,
  `tglbayarterakhir` date DEFAULT NULL,
  `nonpinjaman` tinyint(4) NOT NULL DEFAULT 0,
  `saldotambahan` double NOT NULL DEFAULT 0,
  `tipejaminan` tinyint(4) NOT NULL COMMENT '1=harta tetap;2 harta berger;3 lainlian',
  `hakmilik` varchar(50) NOT NULL,
  `hartatetap` varchar(50) NOT NULL,
  `nosertifikat` varchar(50) NOT NULL,
  `nilaihartatetap` double NOT NULL DEFAULT 0,
  `atasnama` varchar(100) NOT NULL,
  `suratukur` varchar(50) NOT NULL,
  `tglsuratukur` varchar(50) DEFAULT NULL,
  `luas` varchar(10) NOT NULL,
  `nib` varchar(50) NOT NULL,
  `alamatjaminan` varchar(225) NOT NULL,
  `hartabergerak` varchar(50) NOT NULL,
  `bpkb` text NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `warna` varchar(30) NOT NULL,
  `isisilinder` varchar(10) NOT NULL,
  `tahunpembuatan` varchar(10) NOT NULL,
  `samsat` text NOT NULL,
  `norangka` varchar(50) NOT NULL,
  `ankendaraan` varchar(220) NOT NULL,
  `alamatkendaraan` varchar(225) NOT NULL,
  `nilaikendaraan` double NOT NULL DEFAULT 0,
  `ftjaminan1` longblob NOT NULL,
  `ftjaminan2` longblob NOT NULL,
  `statuspasangan` varchar(50) NOT NULL,
  `posting` tinyint(4) NOT NULL DEFAULT 1,
  `pgkepada` int(11) NOT NULL,
  `potongantetap` double NOT NULL DEFAULT 0,
  `awalperiode` double NOT NULL DEFAULT 0,
  `pokokperiode` double DEFAULT 0,
  `bungaperiode` double NOT NULL DEFAULT 0,
  `tabunganperiode` double NOT NULL DEFAULT 0,
  `dendaperiode` double NOT NULL DEFAULT 0,
  `bayarperiode` float NOT NULL DEFAULT 0,
  `sisaperiode` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_piutang_kredit_toko`
--

CREATE TABLE `t_piutang_kredit_toko` (
  `pk` int(11) NOT NULL,
  `nasabahfk` int(11) NOT NULL,
  `saldo` double NOT NULL DEFAULT 0,
  `akunpiutang` varchar(10) NOT NULL,
  `sisa` double NOT NULL DEFAULT 0,
  `terbayar` float NOT NULL DEFAULT 0,
  `saldoperiode` double NOT NULL DEFAULT 0,
  `bayarperiode` double NOT NULL DEFAULT 0,
  `sisaperiode` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_pos_dt`
--

CREATE TABLE `t_pos_dt` (
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kdpaket` varchar(10) DEFAULT NULL,
  `qtypaket` double DEFAULT NULL,
  `hargapaket` double DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `hargajl` double DEFAULT NULL,
  `disitem` double DEFAULT NULL,
  `displus` double DEFAULT NULL,
  `jmldisitem` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `komisi` double DEFAULT NULL,
  `noref` varchar(50) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_pos_hd`
--

CREATE TABLE `t_pos_hd` (
  `notrs` varchar(20) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `jmldisfaktur` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `jmlpajak` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `jmlchg` double DEFAULT NULL,
  `tunai` double DEFAULT NULL,
  `kartu` double DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `kembali` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `kartukreditfk` int(11) DEFAULT NULL,
  `nokartukredit` varchar(50) DEFAULT NULL,
  `chg` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `pilih` bit(1) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `statuspending` bit(1) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `addedpoin` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_returbeli_dt`
--

CREATE TABLE `t_returbeli_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `hargabl` double DEFAULT NULL,
  `disitem` double DEFAULT NULL,
  `jmldisitem` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `noref` varchar(50) DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `jmlkonversi` double NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_returbeli_hd`
--

CREATE TABLE `t_returbeli_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(20) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `noref` varchar(20) DEFAULT NULL,
  `tglref` datetime DEFAULT NULL,
  `supplierfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `jmldisfaktur` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `jmlpajak` double DEFAULT NULL,
  `biayalain` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `sisakurang` double DEFAULT NULL,
  `cicil` double DEFAULT NULL,
  `kurang` double DEFAULT NULL,
  `tglkirim` datetime DEFAULT NULL,
  `statuskirim` varchar(50) DEFAULT NULL,
  `biayakirim` double DEFAULT NULL,
  `kdcargo` int(11) DEFAULT NULL,
  `noresi` varchar(50) DEFAULT NULL,
  `tipekirim` bit(1) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `nmcomp` varchar(50) DEFAULT NULL,
  `stspothutang` tinyint(2) NOT NULL DEFAULT 0,
  `nobeli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_returjual_dt`
--

CREATE TABLE `t_returjual_dt` (
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kdpaket` varchar(10) DEFAULT NULL,
  `qtypaket` double DEFAULT NULL,
  `hargapaket` double DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `hargajl` double DEFAULT NULL,
  `disitem` double DEFAULT NULL,
  `displus` double DEFAULT NULL,
  `jmldisitem` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `noref` varchar(50) DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_returjual_dt`
--

INSERT INTO `t_returjual_dt` (`notrs`, `nobaris`, `itemfk`, `kdpaket`, `qtypaket`, `hargapaket`, `jml`, `hargajl`, `disitem`, `displus`, `jmldisitem`, `total`, `noref`, `hargapokok`, `satuanfk`, `jmlkonversi`) VALUES
('RJ4-231227205752', 1, 1, NULL, NULL, NULL, 1, 15000, 4, NULL, 200, 14800, '1-1B4-231213215728', 9900, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_returjual_hd`
--

CREATE TABLE `t_returjual_hd` (
  `notrs` varchar(20) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `noref` varchar(20) DEFAULT NULL,
  `tglref` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disfaktur` double DEFAULT NULL,
  `jmldisfaktur` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `jmlpajak` double DEFAULT NULL,
  `biayalain` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `sisakurang` double DEFAULT NULL,
  `cicil` double DEFAULT NULL,
  `kurang` double DEFAULT NULL,
  `tglterima` datetime DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT NULL,
  `statuspajak` bit(1) DEFAULT NULL,
  `nmcomp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_returjual_hd`
--

INSERT INTO `t_returjual_hd` (`notrs`, `tgl`, `jam`, `noref`, `tglref`, `konsumenfk`, `gudangfk`, `salesmanfk`, `komisisales`, `carabayar`, `syarat`, `tgljthtmp`, `totaljml`, `subtotal`, `disfaktur`, `jmldisfaktur`, `pajak`, `jmlpajak`, `biayalain`, `grandtotal`, `bayar`, `sisakurang`, `cicil`, `kurang`, `tglterima`, `ctn`, `posting`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `akunkas`, `akunbiaya`, `akunhutang`, `akunpajak`, `rek`, `statuspajak`, `nmcomp`) VALUES
('RJ4-231227205752', '2023-12-27 00:00:00', NULL, 'K-4-231227205659', NULL, 314993, 1, NULL, NULL, 1, NULL, NULL, 1, 14800, 0, 0, 0, 0, NULL, 14800, 14800, 0, NULL, 0, NULL, '', NULL, NULL, 4, NULL, NULL, NULL, '1-4231227205814', NULL, NULL, NULL, '1-111', NULL, 'BALISOLUTIONBIZ');

-- --------------------------------------------------------

--
-- Table structure for table `t_stok_konsinyasi`
--

CREATE TABLE `t_stok_konsinyasi` (
  `pk` int(10) NOT NULL,
  `noref` varchar(50) NOT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `stok` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `status` bit(1) DEFAULT b'0',
  `saldoawal` double NOT NULL DEFAULT 0,
  `totalsaldoawal` double NOT NULL DEFAULT 0,
  `masuk` double NOT NULL DEFAULT 0,
  `totalmasuk` double NOT NULL DEFAULT 0,
  `keluar` double NOT NULL DEFAULT 0,
  `totalkeluar` double NOT NULL DEFAULT 0,
  `soin` double NOT NULL DEFAULT 0,
  `totalsoin` double NOT NULL DEFAULT 0,
  `soout` double NOT NULL DEFAULT 0,
  `totalsoout` float NOT NULL DEFAULT 0,
  `saldoakhir` double NOT NULL DEFAULT 0,
  `totalsaldoakhir` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_tabungan_dt`
--

CREATE TABLE `t_tabungan_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tabunganfk` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `notabungan` varchar(50) DEFAULT NULL,
  `cabangfk` int(11) DEFAULT 1,
  `nobaris` int(11) DEFAULT 1,
  `sandi` varchar(10) NOT NULL,
  `debet` double NOT NULL DEFAULT 0,
  `kredit` double NOT NULL DEFAULT 0,
  `saldo` double NOT NULL DEFAULT 0,
  `tutuptransaksi` tinyint(4) NOT NULL,
  `rek` varchar(50) NOT NULL,
  `rekkas` varchar(50) NOT NULL,
  `akunkas` varchar(50) NOT NULL,
  `pindahbuku` tinyint(4) DEFAULT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT 1,
  `statusjurnal` tinyint(4) NOT NULL DEFAULT 0,
  `ctn` varchar(260) NOT NULL,
  `autosetor` tinyint(4) NOT NULL DEFAULT 0,
  `autotarik` tinyint(4) NOT NULL DEFAULT 0,
  `statuscetak` tinyint(4) DEFAULT 0,
  `lat` varchar(100) NOT NULL,
  `lo` varchar(100) NOT NULL,
  `marketingfk` int(11) NOT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `lastuserfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `posting` tinyint(4) NOT NULL DEFAULT 1,
  `nobaris_all` int(11) NOT NULL,
  `statuscetak_all` tinyint(2) NOT NULL,
  `saldo_all` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_tabungan_hd`
--

CREATE TABLE `t_tabungan_hd` (
  `pk` int(11) NOT NULL,
  `notabungan` varchar(50) NOT NULL,
  `tabunganfk` int(11) NOT NULL,
  `jenistabungan` tinyint(4) NOT NULL,
  `tgl` date DEFAULT NULL,
  `nasabahfk` int(11) NOT NULL,
  `saldoawal` double NOT NULL DEFAULT 0,
  `saldoakhir` double NOT NULL DEFAULT 0,
  `statusproses` tinyint(4) DEFAULT NULL,
  `ctn` varchar(250) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT 1,
  `tutupbuku` tinyint(4) NOT NULL DEFAULT 0,
  `marketingfk` int(11) DEFAULT NULL,
  `wilayahfk` int(11) DEFAULT NULL,
  `rekkas` varchar(10) NOT NULL DEFAULT '0',
  `sukubunga` double NOT NULL DEFAULT 0,
  `reksetoranawal` varchar(50) NOT NULL,
  `akunkas` varchar(50) NOT NULL,
  `autosetor` tinyint(4) NOT NULL DEFAULT 0,
  `penarikankolektif` double NOT NULL DEFAULT 0,
  `setorankolektif` double NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `tglselesai` date DEFAULT NULL,
  `jangkawaktu` int(11) DEFAULT 0,
  `bungamajemuk` tinyint(1) NOT NULL DEFAULT 0,
  `saldoakhirbungamajemuk` double NOT NULL DEFAULT 0,
  `saldotambahan` double NOT NULL DEFAULT 0,
  `posting` tinyint(4) NOT NULL DEFAULT 1,
  `awalperiode` double NOT NULL DEFAULT 0,
  `masuk` double NOT NULL DEFAULT 0,
  `keluar` double NOT NULL DEFAULT 0,
  `akhirperiode` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_tarik_deposito`
--

CREATE TABLE `t_tarik_deposito` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `depositofk` int(11) NOT NULL,
  `nodeposito` varchar(50) NOT NULL,
  `nasabahfk` int(11) NOT NULL,
  `tenor` double NOT NULL DEFAULT 0,
  `tgljtmp` date NOT NULL,
  `norekening` varchar(50) NOT NULL,
  `admin` double NOT NULL DEFAULT 0,
  `deposito` double NOT NULL DEFAULT 0,
  `bunga` double NOT NULL DEFAULT 0,
  `jmlbunga` double NOT NULL DEFAULT 0,
  `pajak` double NOT NULL,
  `jmlpajak` double NOT NULL DEFAULT 0,
  `pinalti` double NOT NULL DEFAULT 0,
  `jmlpinalti` double NOT NULL,
  `totaldeposito` double NOT NULL DEFAULT 0,
  `akunkas` varchar(50) NOT NULL,
  `akunbunga` varchar(10) NOT NULL,
  `kolektorfk` int(11) NOT NULL,
  `validasiperson` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ctn` varchar(250) NOT NULL,
  `kdkas` varchar(50) NOT NULL,
  `notrstabungan` varchar(50) NOT NULL,
  `statusbunga` tinyint(4) NOT NULL DEFAULT 1,
  `addedbyfk` int(11) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp(),
  `lastuserfk` int(11) NOT NULL,
  `datemodified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_transferitem_dt`
--

CREATE TABLE `t_transferitem_dt` (
  `notrs` varchar(20) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `jml` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `norefmasuk` varchar(50) DEFAULT NULL,
  `norefkeluar` varchar(50) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_transferitem_dt`
--

INSERT INTO `t_transferitem_dt` (`notrs`, `nobaris`, `itemfk`, `jml`, `hargapokok`, `norefmasuk`, `norefkeluar`, `satuanfk`, `jmlkonversi`) VALUES
('TG231109160228', 1, 9, 2, 12500, '4-9-20231109160246', '1-9B0-231108221055', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_transferitem_hd`
--

CREATE TABLE `t_transferitem_hd` (
  `notrs` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL,
  `darigudangfk` int(11) DEFAULT NULL,
  `kegudangfk` int(11) DEFAULT NULL,
  `totaljml` double DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `cabangfk` int(11) DEFAULT NULL,
  `posting` bit(1) DEFAULT NULL,
  `lock` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `rekeningfk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_transferitem_hd`
--

INSERT INTO `t_transferitem_hd` (`notrs`, `tgl`, `jam`, `darigudangfk`, `kegudangfk`, `totaljml`, `ctn`, `cabangfk`, `posting`, `lock`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `rekeningfk`) VALUES
('TG231109160228', '2023-11-09', NULL, 1, 4, 2, '', NULL, NULL, NULL, '2023-11-09 16:02:44', 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_tutupbuku`
--

CREATE TABLE `t_tutupbuku` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date DEFAULT NULL,
  `rp50` double DEFAULT 0,
  `rp100` double DEFAULT 0,
  `rp200` double NOT NULL DEFAULT 0,
  `rp500` double DEFAULT 0,
  `rp1000` double DEFAULT 0,
  `rp2000` double DEFAULT 0,
  `rp5000` double DEFAULT 0,
  `rp20000` double DEFAULT 0,
  `rp10000` double DEFAULT 0,
  `rp50000` double DEFAULT 0,
  `rp75000` float NOT NULL DEFAULT 0,
  `rp100000` double DEFAULT 0,
  `totalrp` double DEFAULT 0,
  `totalkas` double DEFAULT 0,
  `selisih` double DEFAULT 0,
  `dateadded` varchar(40) DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` varchar(40) DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `ctn` mediumtext DEFAULT NULL,
  `divisi` tinyint(4) NOT NULL DEFAULT 1,
  `status` varchar(15) DEFAULT NULL COMMENT '1=masuk;2=out;3;tambah;4 keluar\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_tutupkasir`
--

CREATE TABLE `t_tutupkasir` (
  `pk` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `userfk` int(11) NOT NULL,
  `nmuser` varchar(50) NOT NULL,
  `tunaisistem` double NOT NULL DEFAULT 0,
  `tunaikasir` double NOT NULL DEFAULT 0,
  `kartukasir` double NOT NULL DEFAULT 0,
  `kartusistem` float NOT NULL DEFAULT 0,
  `selisihtunai` double NOT NULL DEFAULT 0,
  `selisihkartu` double NOT NULL DEFAULT 0,
  `piutangsistem` double NOT NULL DEFAULT 0,
  `grandtotal` double NOT NULL DEFAULT 0,
  `addedbyfk` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `lastuserfk` int(11) NOT NULL,
  `datemodified` datetime NOT NULL,
  `voucher` double NOT NULL DEFAULT 0,
  `retursistem` double NOT NULL DEFAULT 0,
  `vouchersistem` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_tutupkasir`
--

INSERT INTO `t_tutupkasir` (`pk`, `tgl`, `userfk`, `nmuser`, `tunaisistem`, `tunaikasir`, `kartukasir`, `kartusistem`, `selisihtunai`, `selisihkartu`, `piutangsistem`, `grandtotal`, `addedbyfk`, `dateadded`, `lastuserfk`, `datemodified`, `voucher`, `retursistem`, `vouchersistem`) VALUES
(1, '2023-11-29', 4, 'dewa santika', 13000, 12000, 0, 22700, 0, 0, 0, 35700, 4, '2023-11-29 08:27:13', 4, '2023-11-29 12:03:33', 0, 0, 0),
(2, '2023-12-05', 4, 'dewa santika', 13000, 12000, 0, 0, 0, 0, 0, 13000, 4, '2023-12-05 21:34:21', 0, '0000-00-00 00:00:00', 0, 0, 0),
(3, '2023-12-06', 4, 'dewa santika', 0, 0, 0, 0, 0, 0, 0, 0, 4, '2023-12-06 22:40:44', 0, '0000-00-00 00:00:00', 0, 0, 0),
(4, '2023-12-27', 4, 'dewa santika', 44400, 1000, 0, 0, 0, 0, 0, 44400, 4, '2023-12-27 21:02:43', 0, '0000-00-00 00:00:00', 0, 14800, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_update`
--

CREATE TABLE `t_update` (
  `pk` int(11) NOT NULL,
  `waktunasabah` datetime NOT NULL,
  `waktusetting` datetime DEFAULT NULL,
  `waktupromo` datetime DEFAULT NULL,
  `waktuuser` datetime DEFAULT NULL,
  `waktuitem` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_update`
--

INSERT INTO `t_update` (`pk`, `waktunasabah`, `waktusetting`, `waktupromo`, `waktuuser`, `waktuitem`) VALUES
(1, '2023-10-24 19:47:12', '2023-03-11 07:04:02', '2023-10-24 14:38:12', '2023-08-09 17:53:05', '2023-10-24 14:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `t_voucher_dt`
--

CREATE TABLE `t_voucher_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `konsumenfk` int(11) NOT NULL,
  `jml` double NOT NULL DEFAULT 0,
  `tgl` date NOT NULL,
  `noanggota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_voucher_hd`
--

CREATE TABLE `t_voucher_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `periode` varchar(20) NOT NULL,
  `jmlvoucher` double NOT NULL DEFAULT 0,
  `akunkas` varchar(50) NOT NULL,
  `rek` varchar(10) NOT NULL,
  `rekvoucher` varchar(10) NOT NULL,
  `totalvocher` double NOT NULL DEFAULT 0,
  `posting` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_wait_dt`
--

CREATE TABLE `t_wait_dt` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) DEFAULT NULL,
  `nobaris` smallint(6) DEFAULT NULL,
  `itemfk` int(11) DEFAULT NULL,
  `kdpaket` varchar(10) DEFAULT NULL,
  `qtypaket` double DEFAULT 0,
  `hargapaket` double DEFAULT 0,
  `jmlorder` double DEFAULT 0,
  `jml` double DEFAULT 0,
  `hargajl` double DEFAULT 0,
  `komisisales` double DEFAULT 0,
  `disitem` double DEFAULT 0,
  `displus` double DEFAULT 0,
  `jmldisitem` double DEFAULT 0,
  `total` double DEFAULT 0,
  `jmlretur` double DEFAULT 0,
  `jmlreturPaket` double DEFAULT 0,
  `hargapokok` double DEFAULT 0,
  `komisi` double DEFAULT 0,
  `noref` varchar(50) DEFAULT NULL,
  `notrskonsinyasi` varchar(20) DEFAULT NULL,
  `satuanfk` int(11) DEFAULT NULL,
  `jmlkonversi` double DEFAULT 1,
  `pulsa` bit(1) DEFAULT b'0',
  `ctnpulsa` varchar(100) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `hargasales` double DEFAULT 0,
  `ststebusmurah` tinyint(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_wait_hd`
--

CREATE TABLE `t_wait_hd` (
  `pk` int(11) NOT NULL,
  `notrs` varchar(50) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` datetime DEFAULT current_timestamp(),
  `noorder` varchar(20) DEFAULT NULL,
  `jenistransaksi` int(11) NOT NULL DEFAULT 3 COMMENT '5=event;1,2=tenant tergantung kode;0 Store',
  `namatransaksi` varchar(20) NOT NULL DEFAULT 'Store',
  `tglorder` datetime DEFAULT NULL,
  `konsumenfk` int(11) DEFAULT NULL,
  `gudangfk` int(11) DEFAULT NULL,
  `salesmanfk` int(11) DEFAULT NULL,
  `komisisales` double DEFAULT NULL,
  `carabayar` tinyint(4) DEFAULT NULL,
  `syarat` int(11) DEFAULT NULL,
  `tgljthtmp` datetime DEFAULT NULL,
  `totaljmlorder` double DEFAULT 0,
  `totaljml` double DEFAULT 0,
  `subtotal` double DEFAULT 0,
  `disfaktur` double DEFAULT 0,
  `jmldisfaktur` double DEFAULT 0,
  `pajak` double DEFAULT 0,
  `jmlpajak` double DEFAULT 0,
  `biayalain` double DEFAULT 0,
  `grandtotal` double DEFAULT 0,
  `jmlchg` double DEFAULT 0,
  `carabayar1` int(11) DEFAULT NULL,
  `tunai` double DEFAULT 0,
  `kartu` double DEFAULT 0,
  `kembali` double DEFAULT 0,
  `bayar` double DEFAULT 0,
  `sisakurang` double DEFAULT 0,
  `cicil` double DEFAULT 0,
  `kartukreditfk` int(11) DEFAULT NULL,
  `nokartukredit` varchar(50) DEFAULT NULL,
  `chg` double DEFAULT 0,
  `kurang` double DEFAULT 0,
  `tglkirim` datetime DEFAULT NULL,
  `statuskirim` varchar(50) DEFAULT NULL,
  `biayakirim` double DEFAULT 0,
  `kdcargo` int(11) DEFAULT NULL,
  `noresi` varchar(50) DEFAULT NULL,
  `tipekirim` bit(1) DEFAULT NULL,
  `ctn` varchar(200) DEFAULT NULL,
  `pending` bit(1) NOT NULL DEFAULT b'1',
  `posting` bit(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedbyfk` int(11) DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `lastuserfk` int(11) DEFAULT NULL,
  `validasi` varchar(50) DEFAULT NULL,
  `akunkas` varchar(20) DEFAULT NULL,
  `akunbiaya` varchar(20) DEFAULT NULL,
  `akunhutang` varchar(20) DEFAULT NULL,
  `akunpajak` varchar(20) DEFAULT NULL,
  `rek` varchar(50) DEFAULT '1-113',
  `statuspajak` bit(3) DEFAULT NULL,
  `addedpoin` bit(3) DEFAULT b'0',
  `statuspending` bit(3) DEFAULT NULL,
  `statuspenjualan` bit(3) DEFAULT NULL,
  `pulsa` bit(3) DEFAULT NULL,
  `jmlbayarpiutang` double DEFAULT 0,
  `spesial` bit(3) DEFAULT NULL,
  `dp` double DEFAULT 0,
  `totalkomisi` double DEFAULT 0,
  `plat` varchar(20) NOT NULL,
  `sopir` varchar(50) NOT NULL,
  `jeniskendaraan` varchar(100) NOT NULL,
  `diskonberat` double NOT NULL DEFAULT 0,
  `selisihtimbangan` double NOT NULL DEFAULT 0,
  `biayabongkar` double NOT NULL DEFAULT 0,
  `biayapabrik` double NOT NULL DEFAULT 0,
  `biayasopir` double NOT NULL DEFAULT 0,
  `rekselisihtimbangan` varchar(5) NOT NULL,
  `rekpotpabrik` varchar(5) NOT NULL,
  `rekbiayasopir` varchar(5) NOT NULL,
  `rekbongkar` varchar(5) NOT NULL,
  `pilih` int(1) NOT NULL DEFAULT 0,
  `voucher` double NOT NULL DEFAULT 0,
  `nmcomp` varchar(50) DEFAULT NULL,
  `jmlpoin` double NOT NULL DEFAULT 0,
  `nilaipoin` double NOT NULL DEFAULT 0,
  `totalpoin` double NOT NULL DEFAULT 0,
  `stsupload` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_wait_hd`
--

INSERT INTO `t_wait_hd` (`pk`, `notrs`, `tgl`, `jam`, `noorder`, `jenistransaksi`, `namatransaksi`, `tglorder`, `konsumenfk`, `gudangfk`, `salesmanfk`, `komisisales`, `carabayar`, `syarat`, `tgljthtmp`, `totaljmlorder`, `totaljml`, `subtotal`, `disfaktur`, `jmldisfaktur`, `pajak`, `jmlpajak`, `biayalain`, `grandtotal`, `jmlchg`, `carabayar1`, `tunai`, `kartu`, `kembali`, `bayar`, `sisakurang`, `cicil`, `kartukreditfk`, `nokartukredit`, `chg`, `kurang`, `tglkirim`, `statuskirim`, `biayakirim`, `kdcargo`, `noresi`, `tipekirim`, `ctn`, `pending`, `posting`, `dateadded`, `addedbyfk`, `datemodified`, `lastuserfk`, `validasi`, `akunkas`, `akunbiaya`, `akunhutang`, `akunpajak`, `rek`, `statuspajak`, `addedpoin`, `statuspending`, `statuspenjualan`, `pulsa`, `jmlbayarpiutang`, `spesial`, `dp`, `totalkomisi`, `plat`, `sopir`, `jeniskendaraan`, `diskonberat`, `selisihtimbangan`, `biayabongkar`, `biayapabrik`, `biayasopir`, `rekselisihtimbangan`, `rekpotpabrik`, `rekbiayasopir`, `rekbongkar`, `pilih`, `voucher`, `nmcomp`, `jmlpoin`, `nilaipoin`, `totalpoin`, `stsupload`) VALUES
(4, 'K-0-231107202913', '2023-11-07', '2023-11-07 20:32:12', NULL, 3, 'Store', NULL, 0, 1, NULL, NULL, 2, 0, '2023-11-07 00:00:00', 0, 3, 123000, 0, 0, 0, 0, 0, 123000, 0, 1, 0, 0, -123000, 0, 123000, 0, 0, '', 0, 123000, NULL, '-', 0, NULL, NULL, NULL, '', b'0', NULL, '2023-11-07 20:32:12', 0, NULL, NULL, NULL, '', NULL, NULL, NULL, '1-111', NULL, b'111', NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 'BALISOLUTIONBIZ', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(12) DEFAULT NULL,
  `pk` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `roles` varchar(7) DEFAULT NULL,
  `stat` int(1) DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `cek_jurnal`
--
DROP TABLE IF EXISTS `cek_jurnal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cek_jurnal`  AS SELECT `t_jurnal_hd`.`pk` AS `pk`, `t_jurnal_hd`.`notrs` AS `notrs`, `t_jurnal_hd`.`tgl` AS `tgl`, `t_jurnal_hd`.`noref` AS `noref`, `t_jurnal_hd`.`keterangan` AS `keterangan`, `t_jurnal_hd`.`totaldebet` AS `totaldebet`, `t_jurnal_hd`.`totalkredit` AS `totalkredit`, `t_jurnal_hd`.`ctn` AS `ctn`, `t_jurnal_hd`.`jnspst` AS `jnspst`, `t_jurnal_hd`.`stspst` AS `stspst`, `t_jurnal_hd`.`stsref` AS `stsref`, `t_jurnal_hd`.`jurnalkhusus` AS `jurnalkhusus`, `t_jurnal_hd`.`dari` AS `dari`, `t_jurnal_dt`.`nobaris` AS `nobaris`, `t_jurnal_dt`.`rekfk` AS `rekfk`, `m_rek`.`nm` AS `nmrek`, `t_jurnal_dt`.`debet` AS `debet`, `t_jurnal_dt`.`kredit` AS `kredit`, `t_jurnal_dt`.`divisi` AS `divisi` FROM ((`t_jurnal_hd` join `t_jurnal_dt` on(`t_jurnal_hd`.`notrs` = `t_jurnal_dt`.`notrs`)) join `m_rek` on(`t_jurnal_dt`.`rekfk` = `m_rek`.`pk`)) ;

-- --------------------------------------------------------

--
-- Structure for view `cek_jurnal_tidakbalance`
--
DROP TABLE IF EXISTS `cek_jurnal_tidakbalance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cek_jurnal_tidakbalance`  AS SELECT `t_jurnal_hd`.`pk` AS `pk`, `t_jurnal_hd`.`notrs` AS `notrs`, `t_jurnal_hd`.`tgl` AS `tgl`, `t_jurnal_hd`.`noref` AS `noref`, `t_jurnal_hd`.`keterangan` AS `keterangan`, `t_jurnal_hd`.`totaldebet` AS `totaldebet`, `t_jurnal_hd`.`totalkredit` AS `totalkredit`, `t_jurnal_hd`.`ctn` AS `ctn`, `t_jurnal_hd`.`jnspst` AS `jnspst`, `t_jurnal_hd`.`stspst` AS `stspst`, `t_jurnal_hd`.`stsref` AS `stsref`, `t_jurnal_hd`.`dateadded` AS `dateadded`, `t_jurnal_hd`.`addedbyfk` AS `addedbyfk`, `t_jurnal_hd`.`datemodified` AS `datemodified`, `t_jurnal_hd`.`lastuserfk` AS `lastuserfk`, `t_jurnal_hd`.`cabangfk` AS `cabangfk`, `t_jurnal_hd`.`jurnalkhusus` AS `jurnalkhusus`, `t_jurnal_hd`.`dari` AS `dari`, `t_jurnal_hd`.`hpp` AS `hpp`, `t_jurnal_hd`.`divisi` AS `divisi`, `t_jurnal_hd`.`unitdari` AS `unitdari`, `t_jurnal_hd`.`unitke` AS `unitke`, `t_jurnal_hd`.`nmcomp` AS `nmcomp`, `qry_detailjurnal`.`SumOfdebet` AS `SumOfdebet`, `qry_detailjurnal`.`SumOfkredit` AS `SumOfkredit`, `qry_detailjurnal`.`statu` AS `statu`, `qry_detailjurnal`.`SumOfdebet`- `qry_detailjurnal`.`SumOfkredit` AS `sisa` FROM (`t_jurnal_hd` join `qry_detailjurnal` on(`t_jurnal_hd`.`notrs` = `qry_detailjurnal`.`notrs`)) WHERE `qry_detailjurnal`.`statu` <> 0 ;

-- --------------------------------------------------------

--
-- Structure for view `cek_jurnal_tidakbalance2`
--
DROP TABLE IF EXISTS `cek_jurnal_tidakbalance2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cek_jurnal_tidakbalance2`  AS SELECT `cek_jurnal`.`notrs` AS `notrs`, `cek_jurnal`.`noref` AS `noref`, sum(`cek_jurnal`.`debet`) AS `debet`, sum(`cek_jurnal`.`kredit`) AS `kredit`, sum(`cek_jurnal`.`debet`) - sum(`cek_jurnal`.`kredit`) AS `hasil` FROM `cek_jurnal` GROUP BY `cek_jurnal`.`notrs`, `cek_jurnal`.`noref` ;

-- --------------------------------------------------------

--
-- Structure for view `jurnaldetail_cek`
--
DROP TABLE IF EXISTS `jurnaldetail_cek`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jurnaldetail_cek`  AS SELECT `t_jurnal_dt`.`notrs` AS `notrs`, sum(`t_jurnal_dt`.`debet`) AS `SumOfdebet`, sum(`t_jurnal_dt`.`kredit`) AS `SumOfkredit` FROM `t_jurnal_dt` GROUP BY `t_jurnal_dt`.`notrs` ;

-- --------------------------------------------------------

--
-- Structure for view `m_konsumen`
--
DROP TABLE IF EXISTS `m_konsumen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `m_konsumen`  AS SELECT `m_nasabah`.`pk` AS `pk`, `m_nasabah`.`kd` AS `kd`, `m_nasabah`.`ktp` AS `ktp`, `m_nasabah`.`nm` AS `nm`, `m_nasabah`.`alamat` AS `alamat`, `m_nasabah`.`kota` AS `kota`, `m_nasabah`.`propinsi` AS `Propinsi`, `m_nasabah`.`kodepos` AS `kodepos`, `m_nasabah`.`negara` AS `negara`, `m_nasabah`.`tlp` AS `tlp`, `m_nasabah`.`sex` AS `sex`, `m_nasabah`.`tempatlahir` AS `tempatlahir`, `m_nasabah`.`tgllahir` AS `tgllahir`, `m_nasabah`.`agama` AS `agama`, `m_nasabah`.`email` AS `email`, `m_nasabah`.`username` AS `username`, `m_nasabah`.`password` AS `password`, `m_nasabah`.`status` AS `status`, `m_nasabah`.`aktif` AS `aktif`, `m_nasabah`.`pekerjaan` AS `pekerjaan`, `m_nasabah`.`nmperusahaan` AS `nmperusahaan`, `m_nasabah`.`alamatpekerjaan` AS `alamatpekerjaan`, `m_nasabah`.`tlppekerjaan` AS `tlppekerjaan`, `m_nasabah`.`jabatan` AS `jabatan`, `m_nasabah`.`ctn` AS `ctn`, `m_nasabah`.`foto` AS `foto`, `m_nasabah`.`dateadded` AS `dateadded`, `m_nasabah`.`addedbyfk` AS `addedbyfk`, `m_nasabah`.`datemodified` AS `datemodified`, `m_nasabah`.`lastuserfk` AS `lastuserfk`, `m_nasabah`.`marketingfk` AS `marketingfk`, `m_nasabah`.`wilayahfk` AS `wilayahfk`, `m_nasabah`.`departemenfk` AS `departemenfk`, `m_nasabah`.`anggota` AS `anggota`, `m_nasabah`.`tglregistrasi` AS `tglregistrasi`, `m_nasabah`.`norek` AS `norek`, `m_nasabah`.`an` AS `an`, `m_nasabah`.`bank` AS `bank`, `m_nasabah`.`plafon` AS `plafon`, `m_nasabah`.`simpananpokok` AS `simpananpokok`, `m_nasabah`.`simpananwajib` AS `simpananwajib`, `m_nasabah`.`simpanansukarela` AS `simpanansukarela`, `m_nasabah`.`tabungan` AS `tabungan`, `m_nasabah`.`pinjaman` AS `pinjaman`, `m_nasabah`.`pottabungan` AS `pottabungan`, `m_nasabah`.`potpinjaman` AS `potpinjaman`, `m_nasabah`.`potwajib` AS `potwajib`, `m_nasabah`.`potprogram` AS `potprogram`, `m_nasabah`.`potlain` AS `potlain`, `m_nasabah`.`potpokok` AS `potpokok`, `m_nasabah`.`pengelola` AS `pengelola`, `m_nasabah`.`sisakredit` AS `sisakredit`, `m_nasabah`.`admin` AS `admin`, `m_nasabah`.`piutangtoko` AS `piutangtoko`, `m_nasabah`.`jmlvoucher` AS `jmlvoucher`, `m_nasabah`.`noanggota` AS `noanggota` FROM `m_nasabah` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_alurkas`
--
DROP TABLE IF EXISTS `qry_alurkas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_alurkas`  AS SELECT `t_jurnal_hd`.`notrs` AS `notrs`, `t_jurnal_hd`.`tgl` AS `tgl`, `t_jurnal_hd`.`noref` AS `noref`, `t_jurnal_hd`.`keterangan` AS `keterangan`, `t_jurnal_dt`.`rekfk` AS `rekfk`, `m_rek`.`grupfk` AS `grupfk`, `m_rek`.`nm` AS `nm`, `m_rek`.`kas` AS `kas`, `t_jurnal_dt`.`debet` AS `debet`, `t_jurnal_dt`.`kredit` AS `kredit`, `t_jurnal_dt`.`divisi` AS `divisi` FROM (`t_jurnal_hd` join (`m_rek` join `t_jurnal_dt` on(`m_rek`.`pk` = `t_jurnal_dt`.`rekfk`)) on(`t_jurnal_hd`.`notrs` = `t_jurnal_dt`.`notrs`)) WHERE `t_jurnal_hd`.`keterangan` <> 'Saldo Awal' ;

-- --------------------------------------------------------

--
-- Structure for view `qry_bayarhutang`
--
DROP TABLE IF EXISTS `qry_bayarhutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_bayarhutang`  AS SELECT `t_bayarhutang_hd`.`notrs` AS `notrs`, `t_bayarhutang_hd`.`tgl` AS `tgl`, `t_bayarhutang_hd`.`jam` AS `jam`, `t_bayarhutang_hd`.`supplierfk` AS `supplierfk`, `t_bayarhutang_hd`.`totalbayar` AS `totalbayar`, `t_bayarhutang_hd`.`ctn` AS `ctn`, `t_bayarhutang_hd`.`cabangfk` AS `cabangfk`, `t_bayarhutang_hd`.`posting` AS `posting`, `t_bayarhutang_hd`.`lock` AS `lock`, `t_bayarhutang_hd`.`dateadded` AS `dateadded`, `t_bayarhutang_hd`.`addedbyfk` AS `addedbyfk`, `t_bayarhutang_hd`.`datemodified` AS `datemodified`, `t_bayarhutang_hd`.`lastuserfk` AS `lastuserfk`, `t_bayarhutang_hd`.`validasi` AS `validasi`, `t_bayarhutang_hd`.`akunkas` AS `akunkas`, `t_bayarhutang_hd`.`rek` AS `rek`, `t_bayarhutang_hd`.`deposit` AS `deposit`, `t_bayarhutang_hd`.`tunai` AS `tunai`, `t_bayarhutang_dt`.`nobaris` AS `nobaris`, `t_bayarhutang_dt`.`noref` AS `noref`, `t_bayarhutang_dt`.`keterangan` AS `keterangan`, `t_bayarhutang_dt`.`bayar` AS `bayar` FROM (`t_bayarhutang_hd` join `t_bayarhutang_dt` on(`t_bayarhutang_hd`.`notrs` = `t_bayarhutang_dt`.`notrs`)) ;

-- --------------------------------------------------------

--
-- Structure for view `qry_bayarpiutang`
--
DROP TABLE IF EXISTS `qry_bayarpiutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_bayarpiutang`  AS SELECT `t_bayarpiutang_hd`.`notrs` AS `notrs`, `t_bayarpiutang_hd`.`tgl` AS `tgl`, `t_bayarpiutang_hd`.`jam` AS `jam`, `t_bayarpiutang_hd`.`konsumenfk` AS `konsumenfk`, `t_bayarpiutang_hd`.`totalbayar` AS `totalbayar`, `t_bayarpiutang_hd`.`ctn` AS `ctn`, `t_bayarpiutang_hd`.`cabangfk` AS `cabangfk`, `t_bayarpiutang_hd`.`posting` AS `posting`, `t_bayarpiutang_hd`.`lock` AS `lock`, `t_bayarpiutang_hd`.`dateadded` AS `dateadded`, `t_bayarpiutang_hd`.`addedbyfk` AS `addedbyfk`, `t_bayarpiutang_hd`.`datemodified` AS `datemodified`, `t_bayarpiutang_hd`.`lastuserfk` AS `lastuserfk`, `t_bayarpiutang_hd`.`validasi` AS `validasi`, `t_bayarpiutang_hd`.`akunkas` AS `akunkas`, `t_bayarpiutang_hd`.`rek` AS `rek`, `t_bayarpiutang_dt`.`nobaris` AS `nobaris`, `t_bayarpiutang_dt`.`noref` AS `noref`, `t_bayarpiutang_dt`.`keterangan` AS `keterangan`, `t_bayarpiutang_dt`.`bayar` AS `bayar` FROM (`t_bayarpiutang_hd` join `t_bayarpiutang_dt` on(`t_bayarpiutang_hd`.`notrs` = `t_bayarpiutang_dt`.`notrs`)) ;

-- --------------------------------------------------------

--
-- Structure for view `qry_beli`
--
DROP TABLE IF EXISTS `qry_beli`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_beli`  AS SELECT `t_beli_hd`.`notrs` AS `notrs`, `t_beli_hd`.`tgl` AS `tgl`, `t_beli_hd`.`jam` AS `jam`, `t_beli_hd`.`noorder` AS `noorder`, `t_beli_hd`.`tglorder` AS `tglorder`, `t_beli_hd`.`supplierfk` AS `supplierfk`, `t_beli_hd`.`gudangfk` AS `gudangfk`, `t_beli_hd`.`carabayar` AS `carabayar`, `t_beli_hd`.`syarat` AS `syarat`, `t_beli_hd`.`tgljthtmp` AS `tgljthtmp`, `t_beli_hd`.`totaljmlorder` AS `totaljmlorder`, `t_beli_hd`.`totaljml` AS `totaljml`, `t_beli_hd`.`subtotal` AS `subtotal`, `t_beli_hd`.`disfaktur` AS `disfaktur`, `t_beli_hd`.`jmldisfaktur` AS `jmldisfaktur`, `t_beli_hd`.`pajak` AS `pajak`, `t_beli_hd`.`jmlpajak` AS `jmlpajak`, `t_beli_hd`.`biayalain` AS `biayalain`, `t_beli_hd`.`grandtotal` AS `grandtotal`, `t_beli_hd`.`deposit` AS `deposit`, `t_beli_hd`.`bayar` AS `bayar`, `t_beli_hd`.`sisakurang` AS `sisakurang`, `t_beli_hd`.`cicil` AS `cicil`, `t_beli_hd`.`kurang` AS `kurang`, `t_beli_hd`.`tglterima` AS `tglterima`, `t_beli_hd`.`ctn` AS `ctn`, `t_beli_hd`.`posting` AS `posting`, `t_beli_hd`.`dateadded` AS `dateadded`, `t_beli_hd`.`addedbyfk` AS `addedbyfk`, `t_beli_hd`.`datemodified` AS `datemodified`, `t_beli_hd`.`lastuserfk` AS `lastuserfk`, `t_beli_hd`.`validasi` AS `validasi`, `t_beli_hd`.`pilih` AS `pilih`, `t_beli_hd`.`akunkas` AS `akunkas`, `t_beli_hd`.`akunbiaya` AS `akunbiaya`, `t_beli_hd`.`akunhutang` AS `akunhutang`, `t_beli_hd`.`akunpajak` AS `akunpajak`, `t_beli_hd`.`rek` AS `rek`, `t_beli_hd`.`statuspajak` AS `statuspajak`, `t_beli_hd`.`pulsa` AS `pulsa`, `t_beli_hd`.`beratawal` AS `beratawal`, `t_beli_hd`.`tunai` AS `tunai`, `t_beli_hd`.`kartu` AS `kartu`, `t_beli_hd`.`plat` AS `plat`, `t_beli_hd`.`potberat` AS `potberat`, `t_beli_hd`.`petugas` AS `petugas`, `m_supplier`.`nm` AS `nmsupplier`, `m_gudang`.`nm` AS `nmgudang`, if(`t_beli_hd`.`carabayar` = 1,'Tunai','Kredit') AS `nmcarabayar`, `t_beli_hd`.`pending` AS `pending` FROM (`m_supplier` join (`m_gudang` join `t_beli_hd` on(`m_gudang`.`pk` = `t_beli_hd`.`gudangfk`)) on(`m_supplier`.`pk` = `t_beli_hd`.`supplierfk`)) ;

-- --------------------------------------------------------

--
-- Structure for view `qry_belidt_tidakada`
--
DROP TABLE IF EXISTS `qry_belidt_tidakada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_belidt_tidakada`  AS SELECT `t_beli_dt`.`notrs` AS `notrs`, `t_beli_dt`.`nobaris` AS `nobaris`, `t_beli_dt`.`itemfk` AS `itemfk`, `t_beli_dt`.`jmlorder` AS `jmlorder`, `t_beli_dt`.`jml` AS `jml`, `t_beli_dt`.`hargabl` AS `hargabl` FROM (`t_beli_dt` left join `t_beli_hd` on(`t_beli_dt`.`notrs` = `t_beli_hd`.`notrs`)) WHERE `t_beli_hd`.`notrs` is null ;

-- --------------------------------------------------------

--
-- Structure for view `qry_beli_peritem`
--
DROP TABLE IF EXISTS `qry_beli_peritem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_beli_peritem`  AS SELECT `t_beli_hd`.`notrs` AS `notrs`, `t_beli_hd`.`gudangfk` AS `gudangfk`, `t_beli_hd`.`tgl` AS `tgl`, `t_beli_dt`.`itemfk` AS `itemfk`, `m_item`.`kd` AS `kditem`, `m_item`.`kategorifk` AS `kategorifk`, `m_item`.`nm` AS `nmitem`, `m_kategori`.`nm` AS `nmkategori`, `t_beli_dt`.`jml` AS `jml`, `m_satuan`.`nm` AS `nmsatuan`, `t_beli_dt`.`hargabl` AS `hargabl`, `t_beli_dt`.`disitem` AS `disitem`, `t_beli_dt`.`jmldisitem` AS `jmldisitem`, `t_beli_dt`.`total` AS `total`, `t_beli_hd`.`disfaktur` AS `disfaktur`, `m_gudang`.`nm` AS `nmgudang`, `t_beli_dt`.`total`* (`t_beli_hd`.`disfaktur` / 100) AS `totaldisfaktur`, `t_beli_dt`.`total`- `t_beli_dt`.`total` * (`t_beli_hd`.`disfaktur` / 100) AS `totalbeli`, `m_item`.`pkp` AS `pkp`, if(`m_item`.`pkp` = 0,0,11) AS `ppn`, `m_item`.`jenis` AS `jenis`, if(`m_item`.`jenis` = 1,'Persediaan',if(`m_item`.`jenis` = 2,'Konsinyasi','Jasa')) AS `nmjenis` FROM ((`m_kategori` join (`m_item` join (`m_gudang` join (`t_beli_hd` join `t_beli_dt` on(`t_beli_hd`.`notrs` = `t_beli_dt`.`notrs`)) on(`m_gudang`.`pk` = `t_beli_hd`.`gudangfk`)) on(`m_item`.`pk` = `t_beli_dt`.`itemfk`)) on(`m_kategori`.`pk` = `m_item`.`kategorifk`)) left join `m_satuan` on(`m_item`.`satuanfk` = `m_satuan`.`pk`)) ;

-- --------------------------------------------------------

--
-- Structure for view `qry_bukubesar_hutang`
--
DROP TABLE IF EXISTS `qry_bukubesar_hutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_bukubesar_hutang`  AS SELECT `t_beli_hd`.`notrs` AS `notrs`, `t_beli_hd`.`tgl` AS `tgl`, `t_beli_hd`.`supplierfk` AS `supplierfk`, `m_supplier`.`nm` AS `nmsupplier`, `t_beli_hd`.`sisakurang` AS `hutang`, 0 AS `bayar`, 'Beli' AS `ket` FROM (`t_beli_hd` join `m_supplier` on(`t_beli_hd`.`supplierfk` = `m_supplier`.`pk`)) WHERE `t_beli_hd`.`carabayar` = 2 ;

-- --------------------------------------------------------

--
-- Structure for view `qry_bukubesar_piutang`
--
DROP TABLE IF EXISTS `qry_bukubesar_piutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_bukubesar_piutang`  AS SELECT `t_jual_hd`.`notrs` AS `notrs`, `t_jual_hd`.`tgl` AS `tgl`, `t_jual_hd`.`konsumenfk` AS `konsumenfk`, `m_nasabah`.`noanggota` AS `noanggota`, `m_nasabah`.`nm` AS `nmkonsumen`, `t_jual_hd`.`sisakurang` AS `piutang`, 0 AS `bayar` FROM (`t_jual_hd` join `m_nasabah` on(`t_jual_hd`.`konsumenfk` = `m_nasabah`.`pk`)) WHERE `t_jual_hd`.`carabayar` = 2 ;

-- --------------------------------------------------------

--
-- Structure for view `qry_daftarhutang`
--
DROP TABLE IF EXISTS `qry_daftarhutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_daftarhutang`  AS SELECT `t_beli_hd`.`notrs` AS `notrs`, `t_beli_hd`.`tgl` AS `tgl`, `t_beli_hd`.`supplierfk` AS `supplierfk`, `m_supplier`.`nm` AS `nmsupplier`, `t_beli_hd`.`sisakurang` AS `sisakurang`, `t_beli_hd`.`cicil` AS `cicil`, `t_beli_hd`.`kurang` AS `kurang`, `t_beli_hd`.`tgljthtmp` AS `tgljthtmp`, `t_beli_hd`.`carabayar` AS `carabayar`, `t_beli_hd`.`deposit` AS `deposit`, `t_beli_hd`.`grandtotal` AS `grandtotal`, `t_beli_hd`.`bayar` AS `bayar`, `m_supplier`.`saldo` AS `saldo`, `t_beli_hd`.`noretur` AS `noretur` FROM (`t_beli_hd` join `m_supplier` on(`t_beli_hd`.`supplierfk` = `m_supplier`.`pk` and `t_beli_hd`.`supplierfk` = `m_supplier`.`pk`)) WHERE `t_beli_hd`.`sisakurang` <> 100 ;

-- --------------------------------------------------------

--
-- Structure for view `qry_daftarpiutang`
--
DROP TABLE IF EXISTS `qry_daftarpiutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_daftarpiutang`  AS SELECT `t_jual_hd`.`notrs` AS `notrs`, `t_jual_hd`.`tgl` AS `tgl`, `t_jual_hd`.`jam` AS `jam`, `t_jual_hd`.`tgljthtmp` AS `tgljthtmp`, `t_jual_hd`.`konsumenfk` AS `konsumenfk`, `m_konsumen`.`kd` AS `kdkonsumen`, `m_konsumen`.`nm` AS `nmkonsumen`, `t_jual_hd`.`grandtotal` AS `grandtotal`, `t_jual_hd`.`bayar` AS `bayar`, `t_jual_hd`.`grandtotal`- `t_jual_hd`.`bayar` AS `piutang`, if(sum(`t_bayarpiutang_dt`.`bayar`) is null,0,sum(`t_bayarpiutang_dt`.`bayar`)) AS `terbayar`, `t_jual_hd`.`grandtotal`- `t_jual_hd`.`bayar` - if(sum(`t_bayarpiutang_dt`.`bayar`) is null,0,sum(`t_bayarpiutang_dt`.`bayar`)) AS `sisapiutang`, `t_jual_hd`.`carabayar` AS `carabayar` FROM ((`m_konsumen` join `t_jual_hd` on(`m_konsumen`.`pk` = `t_jual_hd`.`konsumenfk`)) left join `t_bayarpiutang_dt` on(`t_jual_hd`.`notrs` = `t_bayarpiutang_dt`.`noref`)) GROUP BY `t_jual_hd`.`notrs`, `t_jual_hd`.`tgl`, `t_jual_hd`.`jam`, `t_jual_hd`.`tgljthtmp`, `t_jual_hd`.`konsumenfk`, `m_konsumen`.`kd`, `m_konsumen`.`nm`, `t_jual_hd`.`grandtotal`, `t_jual_hd`.`bayar`, `t_jual_hd`.`grandtotal`- `t_jual_hd`.`bayar`, `t_jual_hd`.`carabayar` HAVING `t_jual_hd`.`carabayar` = 2 AND `t_jual_hd`.`grandtotal` - `t_jual_hd`.`bayar` - if(sum(`t_bayarpiutang_dt`.`bayar`) is null,0,sum(`t_bayarpiutang_dt`.`bayar`)) > 0 ORDER BY `t_jual_hd`.`notrs` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `qry_deposito`
--
DROP TABLE IF EXISTS `qry_deposito`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_deposito`  AS SELECT `t_deposito_hd`.`pk` AS `pk`, `t_deposito_hd`.`notrs` AS `notrs`, `t_deposito_hd`.`tgl` AS `tgl`, `t_deposito_hd`.`iddeposito` AS `iddeposito`, `t_deposito_hd`.`norekening` AS `norekening`, `t_deposito_hd`.`statusbunga` AS `statusbunga`, `t_deposito_hd`.`aro` AS `aro`, `t_deposito_hd`.`tglbukarek` AS `tglbukarek`, `t_deposito_hd`.`jangkawaktu` AS `jangkawaktu`, `t_deposito_hd`.`tgljtmp` AS `tgljtmp`, `t_deposito_hd`.`tenor` AS `tenor`, `m_nasabah`.`kd` AS `kd`, `m_nasabah`.`ktp` AS `ktp`, `m_nasabah`.`nm` AS `nm`, `m_nasabah`.`alamat` AS `alamat`, `m_nasabah`.`tlp` AS `tlp`, `m_departemen`.`nm` AS `departemen`, `t_deposito_hd`.`setor` AS `setor`, `t_deposito_hd`.`admin` AS `admin`, `t_deposito_hd`.`totaldeposito` AS `totaldeposito`, `t_deposito_hd`.`bunga` AS `bunga`, `t_deposito_hd`.`jmlbunga` AS `jmlbunga`, `t_deposito_hd`.`pinalti` AS `pinalti`, `t_deposito_hd`.`pajak` AS `pajak`, `t_deposito_hd`.`jmlpajak` AS `jmlpajak`, `t_deposito_hd`.`akunkas` AS `akunkas`, `t_deposito_hd`.`akunbunga` AS `akunbunga`, `t_deposito_hd`.`aktif` AS `aktif`, `t_deposito_hd`.`ctn` AS `ctn`, `t_deposito_hd`.`akunposting` AS `akunposting` FROM ((`m_nasabah` left join `m_departemen` on(`m_nasabah`.`departemenfk` = `m_departemen`.`pk`)) join `t_deposito_hd` on(`m_nasabah`.`pk` = `t_deposito_hd`.`nasabahfk`)) ;

-- --------------------------------------------------------

--
-- Structure for view `qry_detailjurnal`
--
DROP TABLE IF EXISTS `qry_detailjurnal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_detailjurnal`  AS SELECT `jurnaldetail_cek`.`notrs` AS `notrs`, `jurnaldetail_cek`.`SumOfdebet` AS `SumOfdebet`, `jurnaldetail_cek`.`SumOfkredit` AS `SumOfkredit`, `jurnaldetail_cek`.`SumOfdebet`<> `jurnaldetail_cek`.`SumOfkredit` AS `statu` FROM `jurnaldetail_cek` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_gudang1`
--
DROP TABLE IF EXISTS `qry_gudang1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_gudang1`  AS SELECT `tmp_stok`.`itemfk` AS `itemfk`, sum(`tmp_stok`.`stok`) AS `QIQI MART`, 0 AS `Gudang I`, 0 AS `Gudang II`, 0 AS `QIQI MART KLUNGKUNG`, `tmp_stok`.`hargapokok` AS `hargapokok` FROM `tmp_stok` WHERE `tmp_stok`.`gudangfk` = 1 GROUP BY `tmp_stok`.`itemfk`, `tmp_stok`.`hargapokok` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_gudang2`
--
DROP TABLE IF EXISTS `qry_gudang2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_gudang2`  AS SELECT `tmp_stok`.`itemfk` AS `itemfk`, 0 AS `QIQI MART`, sum(`tmp_stok`.`stok`) AS `Gudang I`, 0 AS `Gudang II`, 0 AS `QIQI MART KLUNGKUNG`, `tmp_stok`.`hargapokok` AS `hargapokok` FROM `tmp_stok` WHERE `tmp_stok`.`gudangfk` = 4 GROUP BY `tmp_stok`.`itemfk`, `tmp_stok`.`hargapokok` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_gudang3`
--
DROP TABLE IF EXISTS `qry_gudang3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_gudang3`  AS SELECT `tmp_stok`.`itemfk` AS `itemfk`, 0 AS `QIQI MART`, 0 AS `Gudang I`, sum(`tmp_stok`.`stok`) AS `Gudang II`, 0 AS `QIQI MART KLUNGKUNG`, `tmp_stok`.`hargapokok` AS `hargapokok` FROM `tmp_stok` WHERE `tmp_stok`.`gudangfk` = 5 GROUP BY `tmp_stok`.`itemfk`, `tmp_stok`.`hargapokok` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_gudang4`
--
DROP TABLE IF EXISTS `qry_gudang4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_gudang4`  AS SELECT `tmp_stok`.`itemfk` AS `itemfk`, 0 AS `QIQI MART`, 0 AS `Gudang I`, 0 AS `Gudang II`, sum(`tmp_stok`.`stok`) AS `QIQI MART KLUNGKUNG`, `tmp_stok`.`hargapokok` AS `hargapokok` FROM `tmp_stok` WHERE `tmp_stok`.`gudangfk` = 3 GROUP BY `tmp_stok`.`itemfk`, `tmp_stok`.`hargapokok` ;

-- --------------------------------------------------------

--
-- Structure for view `qry_gudang_all`
--
DROP TABLE IF EXISTS `qry_gudang_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_gudang_all`  AS SELECT `tmp_stok`.`itemfk` AS `itemfk`, sum(`tmp_stok`.`stok`) AS `QIQI MART`, 0 AS `Gudang I`, 0 AS `Gudang II`, 0 AS `QIQI MART KLUNGKUNG`, `tmp_stok`.`hargapokok` AS `hargapokok` FROM `tmp_stok` WHERE `tmp_stok`.`gudangfk` = 1 GROUP BY `tmp_stok`.`itemfk`, `tmp_stok`.`hargapokok`union all select `tmp_stok`.`itemfk` AS `itemfk`,0 AS `QIQI MART`,0 AS `Gudang I`,0 AS `Gudang II`,sum(`tmp_stok`.`stok`) AS `QIQI MART KLUNGKUNG`,`tmp_stok`.`hargapokok` AS `hargapokok` from `tmp_stok` where `tmp_stok`.`gudangfk` = 3 group by `tmp_stok`.`itemfk`,`tmp_stok`.`hargapokok` union all select `tmp_stok`.`itemfk` AS `itemfk`,0 AS `QIQI MART`,sum(`tmp_stok`.`stok`) AS `Gudang I`,0 AS `Gudang II`,0 AS `QIQI MART KLUNGKUNG`,`tmp_stok`.`hargapokok` AS `hargapokok` from `tmp_stok` where `tmp_stok`.`gudangfk` = 4 group by `tmp_stok`.`itemfk`,`tmp_stok`.`hargapokok` union all select `tmp_stok`.`itemfk` AS `itemfk`,0 AS `QIQI MART`,0 AS `Gudang I`,sum(`tmp_stok`.`stok`) AS `Gudang II`,0 AS `QIQI MART KLUNGKUNG`,`tmp_stok`.`hargapokok` AS `hargapokok` from `tmp_stok` where `tmp_stok`.`gudangfk` = 5 group by `tmp_stok`.`itemfk`,`tmp_stok`.`hargapokok`  ;

-- --------------------------------------------------------

--
-- Structure for view `qry_hitungstok`
--
DROP TABLE IF EXISTS `qry_hitungstok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_hitungstok`  AS SELECT `t_jual_hd`.`gudangfk` AS `gudangfk`, 'Jual' AS `ket`, `t_jual_dt`.`itemfk` AS `itemfk`, sum(0) AS `masuk`, sum(`t_jual_dt`.`jml`) AS `keluar` FROM (`t_jual_dt` join `t_jual_hd` on(`t_jual_dt`.`notrs` = `t_jual_hd`.`notrs`)) GROUP BY `t_jual_dt`.`itemfk`, `t_jual_hd`.`gudangfk`union all select `t_returbeli_hd`.`gudangfk` AS `gudangfk`,'Retur Beli' AS `ket`,`t_returbeli_dt`.`itemfk` AS `itemfk`,sum(0) AS `masuk`,sum(`t_returbeli_dt`.`jml`) AS `keluar` from (`t_returbeli_dt` join `t_returbeli_hd` on(`t_returbeli_dt`.`notrs` = `t_returbeli_hd`.`notrs`)) group by `t_returbeli_dt`.`itemfk`,`t_returbeli_hd`.`gudangfk` union all select `t_itemkeluar_hd`.`gudangfk` AS `gudangfk`,'Item Keluar' AS `ket`,`t_itemkeluar_dt`.`itemfk` AS `itemfk`,sum(0) AS `masuk`,sum(`t_itemkeluar_dt`.`jml`) AS `keluar` from (`t_itemkeluar_dt` join `t_itemkeluar_hd` on(`t_itemkeluar_dt`.`notrs` = `t_itemkeluar_hd`.`notrs`)) group by `t_itemkeluar_dt`.`itemfk`,`t_itemkeluar_hd`.`gudangfk` union all select `t_beli_hd`.`gudangfk` AS `gudangfk`,'Beli' AS `ket`,`t_beli_dt`.`itemfk` AS `itemfk`,sum(`t_beli_dt`.`jml`) AS `masuk`,sum(0) AS `keluar` from (`t_beli_dt` join `t_beli_hd` on(`t_beli_dt`.`notrs` = `t_beli_hd`.`notrs`)) group by `t_beli_dt`.`itemfk`,`t_beli_hd`.`gudangfk` union all select `t_returjual_hd`.`gudangfk` AS `gudangfk`,'Retur Jual' AS `ket`,`t_returjual_dt`.`itemfk` AS `itemfk`,sum(`t_returjual_dt`.`jml`) AS `masuk`,sum(0) AS `keluar` from (`t_returjual_dt` join `t_returjual_hd` on(`t_returjual_dt`.`notrs` = `t_returjual_hd`.`notrs`)) group by `t_returjual_dt`.`itemfk`,`t_returjual_hd`.`gudangfk` union all select `t_itemmasuk_hd`.`gudangfk` AS `gudangfk`,'Item Masuk' AS `ket`,`t_itemmasuk_dt`.`itemfk` AS `itemfk`,sum(`t_itemmasuk_dt`.`jml`) AS `masuk`,sum(0) AS `keluar` from (`t_itemmasuk_dt` join `t_itemmasuk_hd` on(`t_itemmasuk_dt`.`notrs` = `t_itemmasuk_hd`.`notrs`)) group by `t_itemmasuk_dt`.`itemfk`,`t_itemmasuk_hd`.`gudangfk` union all select `t_transferitem_hd`.`darigudangfk` AS `gudangfk`,'Transfer Item' AS `ket`,`t_transferitem_dt`.`itemfk` AS `itemfk`,0 AS `masuk`,sum(`t_transferitem_dt`.`jml`) AS `keluar` from (`t_transferitem_hd` join `t_transferitem_dt` on(`t_transferitem_hd`.`notrs` = `t_transferitem_dt`.`notrs`)) group by `t_transferitem_hd`.`darigudangfk`,`t_transferitem_dt`.`itemfk` union all select `t_transferitem_hd`.`kegudangfk` AS `gudangfk`,'Transfer Item' AS `ket`,`t_transferitem_dt`.`itemfk` AS `itemfk`,sum(`t_transferitem_dt`.`jml`) AS `masuk`,0 AS `keluar` from (`t_transferitem_hd` join `t_transferitem_dt` on(`t_transferitem_hd`.`notrs` = `t_transferitem_dt`.`notrs`)) group by `t_transferitem_hd`.`kegudangfk`,`t_transferitem_dt`.`itemfk`  ;

-- --------------------------------------------------------

--
-- Structure for view `qry_hutang_dt`
--
DROP TABLE IF EXISTS `qry_hutang_dt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_hutang_dt`  AS SELECT `t_beli_hd`.`notrs` AS `notrs`, `t_beli_hd`.`gudangfk` AS `gudangfk`, `t_beli_hd`.`tgl` AS `tgl`, `t_beli_hd`.`tgljthtmp` AS `tgljthtmp`, `t_beli_hd`.`grandtotal` AS `grandtotal`, `t_beli_hd`.`deposit` AS `deposit`, `t_beli_hd`.`bayar` AS `bayar`, `t_beli_hd`.`sisakurang` AS `sisakurang`, `t_beli_hd`.`cicil` AS `cicil`, `t_beli_hd`.`kurang` AS `kurang`, `t_beli_hd`.`supplierfk` AS `supplierfk` FROM (`t_beli_hd` join `m_supplier` on(`t_beli_hd`.`supplierfk` = `m_supplier`.`pk` and `t_beli_hd`.`supplierfk` = `m_supplier`.`pk`)) ;

-- --------------------------------------------------------

--
-- Structure for view `qry_item`
--
DROP TABLE IF EXISTS `qry_item`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_item`  AS SELECT `m_item`.`pk` AS `pk`, `m_item`.`tipe` AS `tipe`, `m_item`.`kode` AS `kode`, `m_item`.`kd` AS `kd`, `m_item`.`bd` AS `bd`, `m_item`.`nm` AS `nm`, `m_item`.`jenis` AS `jenis`, `m_item`.`divisifk` AS `divisifk`, `m_item`.`jenisfk` AS `jenisfk`, `m_item`.`kategorifk` AS `kategorifk`, `m_item`.`ukuranfk` AS `ukuranfk`, `m_item`.`merekfk` AS `merekfk`, `m_item`.`satuanfk` AS `satuanfk`, `m_item`.`profit` AS `profit`, `m_item`.`jmlprofit` AS `jmlprofit`, `m_item`.`hargabl` AS `hargabl`, `m_item`.`hargajl` AS `hargajl`, `m_item`.`grosira` AS `grosira`, `m_item`.`grosirb` AS `grosirb`, `m_item`.`grosirc` AS `grosirc`, `m_item`.`persengrosirb` AS `persengrosirb`, `m_item`.`persengrosirc` AS `persengrosirc`, `m_item`.`diskon` AS `diskon`, `m_item`.`belimin` AS `belimin`, `m_item`.`pembulatan` AS `pembulatan`, `m_item`.`hargapokok` AS `hargapokok`, `m_item`.`metodehpp` AS `metodehpp`, `m_item`.`stockmin` AS `stockmin`, `m_item`.`stock` AS `stock`, `m_item`.`gudangfk` AS `gudangfk`, `m_item`.`supplierfk` AS `supplierfk`, `m_item`.`rekhpp` AS `rekhpp`, `m_item`.`rekjual` AS `rekjual`, `m_item`.`rekpersediaan` AS `rekpersediaan`, `m_item`.`rekreturjual` AS `rekreturjual`, `m_item`.`pjkbeli` AS `pjkbeli`, `m_item`.`pjkjual` AS `pjkjual`, `m_item`.`nmgambar` AS `nmgambar`, `m_item`.`ctn` AS `ctn`, `m_item`.`status` AS `status`, `m_item`.`dateadded` AS `dateadded`, `m_item`.`addedbyfk` AS `addedbyfk`, `m_item`.`datemodified` AS `datemodified`, `m_item`.`lastuserfk` AS `lastuserfk`, `m_item`.`komisisales` AS `komisisales`, `m_item`.`pilih` AS `pilih`, `m_item`.`aktif` AS `aktif`, `m_item`.`chkmargin` AS `chkmargin`, `m_item`.`satuanfk1` AS `satuanfk1`, `m_item`.`konversi1` AS `konversi1`, `m_item`.`hargapokok1` AS `hargapokok1`, `m_item`.`retail1` AS `retail1`, `m_item`.`grosir1A` AS `grosir1A`, `m_item`.`grosir1b` AS `grosir1b`, `m_item`.`grosir1c` AS `grosir1c`, `m_item`.`persenretail1` AS `persenretail1`, `m_item`.`persengrosir1a` AS `persengrosir1a`, `m_item`.`persengrosir1b` AS `persengrosir1b`, `m_item`.`persengrosir1c` AS `persengrosir1c`, `m_item`.`satuanfk2` AS `satuanfk2`, `m_item`.`konversi2` AS `konversi2`, `m_item`.`hargapokok2` AS `hargapokok2`, `m_item`.`retail2` AS `retail2`, `m_item`.`grosir2a` AS `grosir2a`, `m_item`.`grosir2b` AS `grosir2b`, `m_item`.`grosir2c` AS `grosir2c`, `m_item`.`persenretail2` AS `persenretail2`, `m_item`.`persengrosir2a` AS `persengrosir2a`, `m_item`.`persengrosir2b` AS `persengrosir2b`, `m_item`.`persengrosir2c` AS `persengrosir2c`, `m_item`.`grosird` AS `grosird`, `m_item`.`grosir1d` AS `grosir1d`, `m_item`.`grosir2d` AS `grosir2d`, `m_item`.`grosir3d` AS `grosir3d`, `m_item`.`persengrosird` AS `persengrosird`, `m_item`.`persengrosir2d` AS `persengrosir2d`, `m_item`.`persengrosir1d` AS `persengrosir1d`, `m_item`.`persengrosir3d` AS `persengrosir3d`, if(`m_item`.`jenis` = 1,'Persediaan',if(`m_item`.`jenis` = 2,'Jasa',if(`m_item`.`jenis` = 3,'Konsinyasi',if(`m_item`.`jenis` = 4,'Tenant','Event')))) AS `nmjenis`, `m_kategori`.`nm` AS `nmkategori`, `m_satuan`.`nm` AS `nmsatuan` FROM (`m_satuan` join (`m_kategori` join `m_item` on(`m_kategori`.`pk` = `m_item`.`kategorifk`)) on(`m_satuan`.`pk` = `m_item`.`satuanfk`)) ORDER BY if(`m_item`.`jenis` = 1,'Persediaan',if(`m_item`.`jenis` = 2,'Jasa',if(`m_item`.`jenis` = 3,'Konsinyasi',if(`m_item`.`jenis` = 4,'Tenant','Event')))) ASC ;

-- --------------------------------------------------------

--
-- Structure for view `qry_jual`
--
DROP TABLE IF EXISTS `qry_jual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_jual`  AS SELECT `t_jual_hd`.`notrs` AS `notrs`, `t_jual_hd`.`pk` AS `pk`, `t_jual_hd`.`jenistransaksi` AS `jenistransaksi`, `t_jual_hd`.`namatransaksi` AS `namatransaksi`, `t_jual_hd`.`tgl` AS `tgl`, `t_jual_hd`.`jam` AS `jam`, `t_jual_hd`.`noorder` AS `noorder`, `t_jual_hd`.`tglorder` AS `tglorder`, `t_jual_hd`.`konsumenfk` AS `konsumenfk`, `t_jual_hd`.`gudangfk` AS `gudangfk`, `t_jual_hd`.`salesmanfk` AS `salesmanfk`, `t_jual_hd`.`komisisales` AS `komisisales`, `t_jual_hd`.`carabayar` AS `carabayar`, `t_jual_hd`.`syarat` AS `syarat`, `t_jual_hd`.`tgljthtmp` AS `tgljthtmp`, `t_jual_hd`.`totaljmlorder` AS `totaljmlorder`, `t_jual_hd`.`totaljml` AS `totaljml`, `t_jual_hd`.`subtotal` AS `subtotal`, `t_jual_hd`.`disfaktur` AS `disfaktur`, `t_jual_hd`.`jmldisfaktur` AS `jmldisfaktur`, `t_jual_hd`.`pajak` AS `pajak`, `t_jual_hd`.`jmlpajak` AS `jmlpajak`, `t_jual_hd`.`biayalain` AS `biayalain`, `t_jual_hd`.`grandtotal` AS `grandtotal`, `t_jual_hd`.`jmlchg` AS `jmlchg`, `t_jual_hd`.`carabayar1` AS `carabayar1`, `t_jual_hd`.`tunai` AS `tunai`, `t_jual_hd`.`kartu` AS `kartu`, `t_jual_hd`.`kembali` AS `kembali`, `t_jual_hd`.`bayar` AS `bayar`, `t_jual_hd`.`sisakurang` AS `sisakurang`, `t_jual_hd`.`cicil` AS `cicil`, `t_jual_hd`.`kartukreditfk` AS `kartukreditfk`, `t_jual_hd`.`nokartukredit` AS `nokartukredit`, `t_jual_hd`.`chg` AS `chg`, `t_jual_hd`.`kurang` AS `kurang`, `t_jual_hd`.`tglkirim` AS `tglkirim`, `t_jual_hd`.`statuskirim` AS `statuskirim`, `t_jual_hd`.`biayakirim` AS `biayakirim`, `t_jual_hd`.`kdcargo` AS `kdcargo`, `t_jual_hd`.`noresi` AS `noresi`, `t_jual_hd`.`tipekirim` AS `tipekirim`, `t_jual_hd`.`ctn` AS `ctn`, `t_jual_hd`.`posting` AS `posting`, `t_jual_hd`.`dateadded` AS `dateadded`, `t_jual_hd`.`addedbyfk` AS `addedbyfk`, `t_jual_hd`.`pending` AS `pending`, `t_jual_hd`.`datemodified` AS `datemodified`, `t_jual_hd`.`lastuserfk` AS `lastuserfk`, `t_jual_hd`.`validasi` AS `validasi`, `t_jual_hd`.`akunkas` AS `akunkas`, `t_jual_hd`.`akunbiaya` AS `akunbiaya`, `t_jual_hd`.`akunhutang` AS `akunhutang`, `t_jual_hd`.`akunpajak` AS `akunpajak`, `t_jual_hd`.`rek` AS `rek`, `t_jual_hd`.`statuspajak` AS `statuspajak`, `t_jual_hd`.`addedpoin` AS `addedpoin`, `t_jual_hd`.`statuspending` AS `statuspending`, `t_jual_hd`.`statuspenjualan` AS `statuspenjualan`, `t_jual_hd`.`pulsa` AS `pulsa`, `t_jual_hd`.`jmlbayarpiutang` AS `jmlbayarpiutang`, `t_jual_hd`.`spesial` AS `spesial`, `t_jual_hd`.`dp` AS `dp`, `t_jual_hd`.`totalkomisi` AS `totalkomisi`, `t_jual_hd`.`plat` AS `plat`, `t_jual_hd`.`sopir` AS `sopir`, `t_jual_hd`.`jeniskendaraan` AS `jeniskendaraan`, `t_jual_hd`.`diskonberat` AS `diskonberat`, `t_jual_hd`.`jmlpoin` AS `jmlpoin`, `t_jual_hd`.`nilaipoin` AS `nilaipoin`, `t_jual_hd`.`totalpoin` AS `totalpoin`, `t_jual_hd`.`biayasopir` AS `biayasopir`, `t_jual_hd`.`rekselisihtimbangan` AS `rekselisihtimbangan`, `t_jual_hd`.`rekpotpabrik` AS `rekpotpabrik`, `t_jual_hd`.`rekbiayasopir` AS `rekbiayasopir`, `t_jual_hd`.`rekbongkar` AS `rekbongkar`, `m_konsumen`.`nm` AS `nmkonsumen`, `m_gudang`.`nm` AS `nmgudang`, `m_salesman`.`nm` AS `nmsalesman`, `t_jual_hd`.`pilih` AS `pilih`, `t_jual_hd`.`voucher` AS `voucher` FROM (`m_konsumen` join (`m_gudang` join (`t_jual_hd` left join `m_salesman` on(`t_jual_hd`.`salesmanfk` = `m_salesman`.`pk`)) on(`m_gudang`.`pk` = `t_jual_hd`.`gudangfk`)) on(`m_konsumen`.`pk` = `t_jual_hd`.`konsumenfk`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_item`
--
ALTER TABLE `m_item`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `t_bayarpiutang_dt`
--
ALTER TABLE `t_bayarpiutang_dt`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `t_jual_dt`
--
ALTER TABLE `t_jual_dt`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `t_jual_hd`
--
ALTER TABLE `t_jual_hd`
  ADD PRIMARY KEY (`pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_item`
--
ALTER TABLE `m_item`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

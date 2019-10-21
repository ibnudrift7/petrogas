-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2019 pada 14.04
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petrogas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_image`
--

CREATE TABLE `about_image` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `address`
--

CREATE TABLE `address` (
  `id` int(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `address_1` varchar(100) NOT NULL,
  `address_2` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sort` int(10) DEFAULT NULL,
  `lat` text,
  `lng` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `address`
--

INSERT INTO `address` (`id`, `category_id`, `nama`, `address_1`, `address_2`, `telp`, `fax`, `image`, `kota`, `prov`, `email`, `sort`, `lat`, `lng`) VALUES
(1, 0, 'Graha Corpus Surabaya', 'Headquarter', 'Jl. Embong Kenongo No.7-9  Surabaya 60271 - East Java ', 'Phone. (031) 99015353', '', 'cc705-con1 (1).jpg', 'Surabaya', '', '', NULL, '', ''),
(2, 0, 'Corpus Kapital Manajemen', 'Branch Office', 'Sahid Sudirman Center Lantai 49 Unit B Jl. Jendral Sudirman No. 86  Jakarta Pusat, 10220', '', '', '56e83-con2.jpg', 'Jakarta Pusat', '', '', NULL, '', ''),
(3, 0, 'Corpus Bali ', 'Branch Office', 'Jl. Raya Padang Luwih No. 8 (Kav. 2)  Kerobokan Kaja - Kuta Utara,  Denpasar, 80361', '', '', 'ded81-con3.jpg', 'Bali ', '', '', NULL, '', ''),
(4, 0, 'Corpus Malang ', 'Branch Office', 'Jl. Buring No. 1 (Kav. 6)  Oro-Oro Dowo, Klojen  Kota Malang, 65119', '', '', '14fed-con4.jpg', 'Malang', '', '', NULL, '', ''),
(5, 0, 'Corpus Jakarta ', 'Branch Office', 'Equity Tower 15H  Jl. Jendral Sudirman 52-53 Jakarta Pusat, 12190', '', '', 'd7e9f-con5.jpg', 'Jakarta Pusat', '', '', NULL, '', ''),
(6, 0, 'Corpus Medan ', 'Branch Office', 'Komplek Ruko Royal Residence  Jl. Palang Merah No. 15-16  20151', '', '', 'd3cb2-con6.jpg', 'Medan ', '', '', NULL, '', ''),
(7, 0, 'Corpus Bandung ', 'Branch Office', 'Wisma Monex 9C  Jl. Asia Afrika No. 133 40112', '', '', '41398-con7.jpg', 'Bandung', '', '', NULL, '', ''),
(8, 0, 'Corpus Semarang ', 'Branch Office', 'Jl. Seroja Dalam A2  Karang Kidul, 50241', '', '', '6dd90-con8.jpg', 'Semarang ', '', '', NULL, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_big` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `province` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `city`
--

INSERT INTO `city` (`id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(1, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat', '23600'),
(2, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat Daya', '23700'),
(3, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Besar', '23000'),
(4, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Jaya', '23600'),
(5, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Selatan', '23700'),
(6, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Singkil', '24700'),
(7, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tamiang', '24400'),
(8, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tengah', '24500'),
(9, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tenggara', '24600'),
(10, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Timur', '24400'),
(11, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Utara', '24300'),
(12, 32, 'Sumatera Barat', 'Kabupaten', 'Agam', '26000'),
(13, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Alor', '85800'),
(14, 19, 'Maluku', 'Kota', 'Ambon', '97000'),
(15, 34, 'Sumatera Utara', 'Kabupaten', 'Asahan', '21000'),
(16, 24, 'Papua', 'Kabupaten', 'Asmat', '99700'),
(17, 1, 'Bali', 'Kabupaten', 'Badung', '80361'),
(18, 13, 'Kalimantan Selatan', 'Kabupaten', 'Balangan', '71400'),
(19, 15, 'Kalimantan Timur', 'Kota', 'Balikpapan', '76100'),
(20, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Banda Aceh', '23000'),
(21, 18, 'Lampung', 'Kota', 'Bandar Lampung', '35000'),
(22, 9, 'Jawa Barat', 'Kabupaten', 'Bandung', '40000'),
(23, 9, 'Jawa Barat', 'Kota', 'Bandung', '40000'),
(24, 9, 'Jawa Barat', 'Kabupaten', 'Bandung Barat', '40000'),
(25, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai', '94791'),
(26, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai Kepulauan', '94791'),
(27, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka', '33200'),
(28, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Barat', '33300'),
(29, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Selatan', '33700'),
(30, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Tengah', '33600'),
(31, 11, 'Jawa Timur', 'Kabupaten', 'Bangkalan', '69100'),
(32, 1, 'Bali', 'Kabupaten', 'Bangli', '80600'),
(33, 13, 'Kalimantan Selatan', 'Kabupaten', 'Banjar', '70600'),
(34, 9, 'Jawa Barat', 'Kota', 'Banjar', '46300'),
(35, 13, 'Kalimantan Selatan', 'Kota', 'Banjarbaru', '70700'),
(36, 13, 'Kalimantan Selatan', 'Kota', 'Banjarmasin', '70000'),
(37, 10, 'Jawa Tengah', 'Kabupaten', 'Banjarnegara', '53400'),
(38, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bantaeng', '92400'),
(39, 5, 'DI Yogyakarta', 'Kabupaten', 'Bantul', '55700'),
(40, 33, 'Sumatera Selatan', 'Kabupaten', 'Banyuasin', '30758'),
(41, 10, 'Jawa Tengah', 'Kabupaten', 'Banyumas', '53100'),
(42, 11, 'Jawa Timur', 'Kabupaten', 'Banyuwangi', '68400'),
(43, 13, 'Kalimantan Selatan', 'Kabupaten', 'Barito Kuala', '70500'),
(44, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Selatan', '73700'),
(45, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Timur', '73600'),
(46, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Utara', '73800'),
(47, 28, 'Sulawesi Selatan', 'Kabupaten', 'Barru', '90700'),
(48, 17, 'Kepulauan Riau', 'Kota', 'Batam', '29400'),
(49, 10, 'Jawa Tengah', 'Kabupaten', 'Batang', '51200'),
(50, 8, 'Jambi', 'Kabupaten', 'Batang Hari', '36600'),
(51, 11, 'Jawa Timur', 'Kota', 'Batu', '65311'),
(52, 34, 'Sumatera Utara', 'Kabupaten', 'Batu Bara', '21200'),
(53, 30, 'Sulawesi Tenggara', 'Kota', 'Bau-Bau', '93700'),
(54, 9, 'Jawa Barat', 'Kabupaten', 'Bekasi', '17000'),
(55, 9, 'Jawa Barat', 'Kota', 'Bekasi', '17000'),
(56, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung', '33400'),
(57, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung Timur', '33400'),
(58, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Belu', '85700'),
(59, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bener Meriah', '24500'),
(60, 26, 'Riau', 'Kabupaten', 'Bengkalis', '28700'),
(61, 12, 'Kalimantan Barat', 'Kabupaten', 'Bengkayang', '79200'),
(62, 4, 'Bengkulu', 'Kota', 'Bengkulu', '38000'),
(63, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Selatan', '38500'),
(64, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Tengah', '38000'),
(65, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Utara', '38600'),
(66, 15, 'Kalimantan Timur', 'Kabupaten', 'Berau', '77300'),
(67, 24, 'Papua', 'Kabupaten', 'Biak Numfor', '98100'),
(68, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Bima', '84100'),
(69, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Bima', '84100'),
(70, 34, 'Sumatera Utara', 'Kota', 'Binjai', '20700'),
(71, 17, 'Kepulauan Riau', 'Kabupaten', 'Bintan', '29100'),
(72, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bireuen', '24200'),
(73, 31, 'Sulawesi Utara', 'Kota', 'Bitung', '95500'),
(74, 11, 'Jawa Timur', 'Kabupaten', 'Blitar', '66100'),
(75, 11, 'Jawa Timur', 'Kota', 'Blitar', '66100'),
(76, 10, 'Jawa Tengah', 'Kabupaten', 'Blora', '58200'),
(77, 7, 'Gorontalo', 'Kabupaten', 'Boalemo', '96200'),
(78, 9, 'Jawa Barat', 'Kabupaten', 'Bogor', '16000'),
(79, 9, 'Jawa Barat', 'Kota', 'Bogor', '16000'),
(80, 11, 'Jawa Timur', 'Kabupaten', 'Bojonegoro', '62100'),
(81, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95700'),
(82, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Selatan', '95700'),
(83, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Timur', '95700'),
(84, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Utara', '95700'),
(85, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Bombana', '93700'),
(86, 11, 'Jawa Timur', 'Kabupaten', 'Bondowoso', '68200'),
(87, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bone', '92552'),
(88, 7, 'Gorontalo', 'Kabupaten', 'Bone Bolango', '96184'),
(89, 15, 'Kalimantan Timur', 'Kota', 'Bontang', '75300'),
(90, 24, 'Papua', 'Kabupaten', 'Boven Digoel', '99600'),
(91, 10, 'Jawa Tengah', 'Kabupaten', 'Boyolali', '57300'),
(92, 10, 'Jawa Tengah', 'Kabupaten', 'Brebes', '52200'),
(93, 32, 'Sumatera Barat', 'Kota', 'Bukittinggi', '26100'),
(94, 1, 'Bali', 'Kabupaten', 'Buleleng', '81100'),
(95, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bulukumba', '92500'),
(96, 16, 'Kalimantan Utara', 'Kabupaten', 'Bulungan (Bulongan)', '77200'),
(97, 8, 'Jambi', 'Kabupaten', 'Bungo', '37200'),
(98, 29, 'Sulawesi Tengah', 'Kabupaten', 'Buol', '94500'),
(99, 19, 'Maluku', 'Kabupaten', 'Buru', '97500'),
(100, 19, 'Maluku', 'Kabupaten', 'Buru Selatan', '97500'),
(101, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton', '93700'),
(102, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton Utara', '93600'),
(103, 9, 'Jawa Barat', 'Kabupaten', 'Ciamis', '46200'),
(104, 9, 'Jawa Barat', 'Kabupaten', 'Cianjur', '43200'),
(105, 10, 'Jawa Tengah', 'Kabupaten', 'Cilacap', '53200'),
(106, 3, 'Banten', 'Kota', 'Cilegon', '42400'),
(107, 9, 'Jawa Barat', 'Kota', 'Cimahi', '40500'),
(108, 9, 'Jawa Barat', 'Kabupaten', 'Cirebon', '45100'),
(109, 9, 'Jawa Barat', 'Kota', 'Cirebon', '45100'),
(110, 34, 'Sumatera Utara', 'Kabupaten', 'Dairi', '22200'),
(111, 24, 'Papua', 'Kabupaten', 'Deiyai (Deliyai)', '98700'),
(112, 34, 'Sumatera Utara', 'Kabupaten', 'Deli Serdang', '20500'),
(113, 10, 'Jawa Tengah', 'Kabupaten', 'Demak', '59500'),
(114, 1, 'Bali', 'Kota', 'Denpasar', '80000'),
(115, 9, 'Jawa Barat', 'Kota', 'Depok', '16400'),
(116, 32, 'Sumatera Barat', 'Kabupaten', 'Dharmasraya', '27600'),
(117, 24, 'Papua', 'Kabupaten', 'Dogiyai', '98800'),
(118, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Dompu', '84200'),
(119, 29, 'Sulawesi Tengah', 'Kabupaten', 'Donggala', '94351'),
(120, 26, 'Riau', 'Kota', 'Dumai', '28800'),
(121, 33, 'Sumatera Selatan', 'Kabupaten', 'Empat Lawang', '31500'),
(122, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ende', '86300'),
(123, 28, 'Sulawesi Selatan', 'Kabupaten', 'Enrekang', '91700'),
(124, 25, 'Papua Barat', 'Kabupaten', 'Fakfak', '98600'),
(125, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Flores Timur', '86200'),
(126, 9, 'Jawa Barat', 'Kabupaten', 'Garut', '44100'),
(127, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Gayo Lues', '24600'),
(128, 1, 'Bali', 'Kabupaten', 'Gianyar', '80500'),
(129, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo', '96100'),
(130, 7, 'Gorontalo', 'Kota', 'Gorontalo', '96100'),
(131, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo Utara', '96100'),
(132, 28, 'Sulawesi Selatan', 'Kabupaten', 'Gowa', '92100'),
(133, 11, 'Jawa Timur', 'Kabupaten', 'Gresik', '61100'),
(134, 10, 'Jawa Tengah', 'Kabupaten', 'Grobogan', '58152'),
(135, 5, 'DI Yogyakarta', 'Kabupaten', 'Gunung Kidul', '55800'),
(136, 14, 'Kalimantan Tengah', 'Kabupaten', 'Gunung Mas', '74500'),
(137, 34, 'Sumatera Utara', 'Kota', 'Gunungsitoli', '22800'),
(138, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Barat', '97700'),
(139, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Selatan', '97700'),
(140, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Tengah', '97800'),
(141, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Timur', '97800'),
(142, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Utara', '97700'),
(143, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Selatan', '71200'),
(144, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Tengah', '71300'),
(145, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Utara', '71400'),
(146, 34, 'Sumatera Utara', 'Kabupaten', 'Humbang Hasundutan', '22400'),
(147, 26, 'Riau', 'Kabupaten', 'Indragiri Hilir', '29200'),
(148, 26, 'Riau', 'Kabupaten', 'Indragiri Hulu', '29300'),
(149, 9, 'Jawa Barat', 'Kabupaten', 'Indramayu', '45200'),
(150, 24, 'Papua', 'Kabupaten', 'Intan Jaya', '98700'),
(151, 6, 'DKI Jakarta', 'Kota', 'Jakarta Barat', '11000'),
(152, 6, 'DKI Jakarta', 'Kota', 'Jakarta Pusat', '10000'),
(153, 6, 'DKI Jakarta', 'Kota', 'Jakarta Selatan', '12000'),
(154, 6, 'DKI Jakarta', 'Kota', 'Jakarta Timur', '13000'),
(155, 6, 'DKI Jakarta', 'Kota', 'Jakarta Utara', '14000'),
(156, 8, 'Jambi', 'Kota', 'Jambi', '36000'),
(157, 24, 'Papua', 'Kabupaten', 'Jayapura', '99000'),
(158, 24, 'Papua', 'Kota', 'Jayapura', '99000'),
(159, 24, 'Papua', 'Kabupaten', 'Jayawijaya', '99500'),
(160, 11, 'Jawa Timur', 'Kabupaten', 'Jember', '68100'),
(161, 1, 'Bali', 'Kabupaten', 'Jembrana', '82200'),
(162, 28, 'Sulawesi Selatan', 'Kabupaten', 'Jeneponto', '92300'),
(163, 10, 'Jawa Tengah', 'Kabupaten', 'Jepara', '59400'),
(164, 11, 'Jawa Timur', 'Kabupaten', 'Jombang', '61400'),
(165, 25, 'Papua Barat', 'Kabupaten', 'Kaimana', '98654'),
(166, 26, 'Riau', 'Kabupaten', 'Kampar', '28400'),
(167, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kapuas', '73500'),
(168, 12, 'Kalimantan Barat', 'Kabupaten', 'Kapuas Hulu', '78700'),
(169, 10, 'Jawa Tengah', 'Kabupaten', 'Karanganyar', '57700'),
(170, 1, 'Bali', 'Kabupaten', 'Karangasem', '80800'),
(171, 9, 'Jawa Barat', 'Kabupaten', 'Karawang', '41300'),
(172, 17, 'Kepulauan Riau', 'Kabupaten', 'Karimun', '29600'),
(173, 34, 'Sumatera Utara', 'Kabupaten', 'Karo', '22100'),
(174, 14, 'Kalimantan Tengah', 'Kabupaten', 'Katingan', '74400'),
(175, 4, 'Bengkulu', 'Kabupaten', 'Kaur', '38000'),
(176, 12, 'Kalimantan Barat', 'Kabupaten', 'Kayong Utara', '78800'),
(177, 10, 'Jawa Tengah', 'Kabupaten', 'Kebumen', '54300'),
(178, 11, 'Jawa Timur', 'Kabupaten', 'Kediri', '64100'),
(179, 11, 'Jawa Timur', 'Kota', 'Kediri', '64100'),
(180, 24, 'Papua', 'Kabupaten', 'Keerom', '99000'),
(181, 10, 'Jawa Tengah', 'Kabupaten', 'Kendal', '51300'),
(182, 30, 'Sulawesi Tenggara', 'Kota', 'Kendari', '93000'),
(183, 4, 'Bengkulu', 'Kabupaten', 'Kepahiang', '39172'),
(184, 17, 'Kepulauan Riau', 'Kabupaten', 'Kepulauan Anambas', '29700'),
(185, 19, 'Maluku', 'Kabupaten', 'Kepulauan Aru', '97600'),
(186, 32, 'Sumatera Barat', 'Kabupaten', 'Kepulauan Mentawai', '25391'),
(187, 26, 'Riau', 'Kabupaten', 'Kepulauan Meranti', '28700'),
(188, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Sangihe', '95800'),
(189, 6, 'DKI Jakarta', 'Kabupaten', 'Kepulauan Seribu', '14530'),
(190, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95800'),
(191, 20, 'Maluku Utara', 'Kabupaten', 'Kepulauan Sula', '97700'),
(192, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Talaud', '95800'),
(193, 24, 'Papua', 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98200'),
(194, 8, 'Jambi', 'Kabupaten', 'Kerinci', '37100'),
(195, 12, 'Kalimantan Barat', 'Kabupaten', 'Ketapang', '78800'),
(196, 10, 'Jawa Tengah', 'Kabupaten', 'Klaten', '57400'),
(197, 1, 'Bali', 'Kabupaten', 'Klungkung', '80700'),
(198, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka', '93500'),
(199, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka Utara', '93500'),
(200, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe', '93400'),
(201, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Selatan', '93000'),
(202, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Utara', '93000'),
(203, 13, 'Kalimantan Selatan', 'Kabupaten', 'Kotabaru', '72100'),
(204, 31, 'Sulawesi Utara', 'Kota', 'Kotamobagu', '95700'),
(205, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Barat', '74100'),
(206, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Timur', '74300'),
(207, 26, 'Riau', 'Kabupaten', 'Kuantan Singingi', '29500'),
(208, 12, 'Kalimantan Barat', 'Kabupaten', 'Kubu Raya', '78000'),
(209, 10, 'Jawa Tengah', 'Kabupaten', 'Kudus', '59300'),
(210, 5, 'DI Yogyakarta', 'Kabupaten', 'Kulon Progo', '55600'),
(211, 9, 'Jawa Barat', 'Kabupaten', 'Kuningan', '45500'),
(212, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Kupang', '85000'),
(213, 23, 'Nusa Tenggara Timur (NTT)', 'Kota', 'Kupang', '85000'),
(214, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Barat', '75000'),
(215, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Kartanegara', '75500'),
(216, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Timur', '75556'),
(217, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu', '21400'),
(218, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Selatan', '21400'),
(219, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Utara', '21400'),
(220, 33, 'Sumatera Selatan', 'Kabupaten', 'Lahat', '31400'),
(221, 14, 'Kalimantan Tengah', 'Kabupaten', 'Lamandau', '74100'),
(222, 11, 'Jawa Timur', 'Kabupaten', 'Lamongan', '62200'),
(223, 18, 'Lampung', 'Kabupaten', 'Lampung Barat', '35000'),
(224, 18, 'Lampung', 'Kabupaten', 'Lampung Selatan', '35000'),
(225, 18, 'Lampung', 'Kabupaten', 'Lampung Tengah', '34100'),
(226, 18, 'Lampung', 'Kabupaten', 'Lampung Timur', '34100'),
(227, 18, 'Lampung', 'Kabupaten', 'Lampung Utara', '34500'),
(228, 12, 'Kalimantan Barat', 'Kabupaten', 'Landak', '79357'),
(229, 34, 'Sumatera Utara', 'Kabupaten', 'Langkat', '20800'),
(230, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Langsa', '24400'),
(231, 24, 'Papua', 'Kabupaten', 'Lanny Jaya', '99500'),
(232, 3, 'Banten', 'Kabupaten', 'Lebak', '42300'),
(233, 4, 'Bengkulu', 'Kabupaten', 'Lebong', '39200'),
(234, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Lembata', '86600'),
(235, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Lhokseumawe', '24300'),
(236, 32, 'Sumatera Barat', 'Kabupaten', 'Lima Puluh Koto/Kota', '26200'),
(237, 17, 'Kepulauan Riau', 'Kabupaten', 'Lingga', '29800'),
(238, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Barat', '83363'),
(239, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Tengah', '83500'),
(240, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Timur', '83600'),
(241, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Utara', '83300'),
(242, 33, 'Sumatera Selatan', 'Kota', 'Lubuk Linggau', '31600'),
(243, 11, 'Jawa Timur', 'Kabupaten', 'Lumajang', '67300'),
(244, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu', '91900'),
(245, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Timur', '91900'),
(246, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Utara', '91900'),
(247, 11, 'Jawa Timur', 'Kabupaten', 'Madiun', '63100'),
(248, 11, 'Jawa Timur', 'Kota', 'Madiun', '63100'),
(249, 10, 'Jawa Tengah', 'Kabupaten', 'Magelang', '56100'),
(250, 10, 'Jawa Tengah', 'Kota', 'Magelang', '56100'),
(251, 11, 'Jawa Timur', 'Kabupaten', 'Magetan', '63300'),
(252, 9, 'Jawa Barat', 'Kabupaten', 'Majalengka', '45400'),
(253, 27, 'Sulawesi Barat', 'Kabupaten', 'Majene', '91400'),
(254, 28, 'Sulawesi Selatan', 'Kota', 'Makassar', '90000'),
(255, 11, 'Jawa Timur', 'Kabupaten', 'Malang', '65100'),
(256, 11, 'Jawa Timur', 'Kota', 'Malang', '65100'),
(257, 16, 'Kalimantan Utara', 'Kabupaten', 'Malinau', '77154'),
(258, 19, 'Maluku', 'Kabupaten', 'Maluku Barat Daya', '97000'),
(259, 19, 'Maluku', 'Kabupaten', 'Maluku Tengah', '97500'),
(260, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara', '97600'),
(261, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara Barat', '97600'),
(262, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamasa', '91363'),
(263, 24, 'Papua', 'Kabupaten', 'Mamberamo Raya', '99500'),
(264, 24, 'Papua', 'Kabupaten', 'Mamberamo Tengah', '99500'),
(265, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju', '91500'),
(266, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju Utara', '91500'),
(267, 31, 'Sulawesi Utara', 'Kota', 'Manado', '95000'),
(268, 34, 'Sumatera Utara', 'Kabupaten', 'Mandailing Natal', '22919'),
(269, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai', '86500'),
(270, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Barat', '86753'),
(271, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Timur', '86500'),
(272, 25, 'Papua Barat', 'Kabupaten', 'Manokwari', '98300'),
(273, 25, 'Papua Barat', 'Kabupaten', 'Manokwari Selatan', '98300'),
(274, 24, 'Papua', 'Kabupaten', 'Mappi', '99000'),
(275, 28, 'Sulawesi Selatan', 'Kabupaten', 'Maros', '90500'),
(276, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Mataram', '83000'),
(277, 25, 'Papua Barat', 'Kabupaten', 'Maybrat', '99000'),
(278, 34, 'Sumatera Utara', 'Kota', 'Medan', '20000'),
(279, 12, 'Kalimantan Barat', 'Kabupaten', 'Melawi', '78672'),
(280, 8, 'Jambi', 'Kabupaten', 'Merangin', '37300'),
(281, 24, 'Papua', 'Kabupaten', 'Merauke', '99600'),
(282, 18, 'Lampung', 'Kabupaten', 'Mesuji', '34500'),
(283, 18, 'Lampung', 'Kota', 'Metro', '34100'),
(284, 24, 'Papua', 'Kabupaten', 'Mimika', '99900'),
(285, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa', '95600'),
(286, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Selatan', '95000'),
(287, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Tenggara', '95000'),
(288, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Utara', '95000'),
(289, 11, 'Jawa Timur', 'Kabupaten', 'Mojokerto', '61300'),
(290, 11, 'Jawa Timur', 'Kota', 'Mojokerto', '61300'),
(291, 29, 'Sulawesi Tengah', 'Kabupaten', 'Morowali', '94000'),
(292, 33, 'Sumatera Selatan', 'Kabupaten', 'Muara Enim', '31300'),
(293, 8, 'Jambi', 'Kabupaten', 'Muaro Jambi', '36365'),
(294, 4, 'Bengkulu', 'Kabupaten', 'Muko Muko', '38365'),
(295, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Muna', '93600'),
(296, 14, 'Kalimantan Tengah', 'Kabupaten', 'Murung Raya', '73900'),
(297, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Banyuasin', '30700'),
(298, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Rawas', '31600'),
(299, 24, 'Papua', 'Kabupaten', 'Nabire', '98800'),
(300, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Nagan Raya', '23600'),
(301, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Nagekeo', '86400'),
(302, 17, 'Kepulauan Riau', 'Kabupaten', 'Natuna', '29700'),
(303, 24, 'Papua', 'Kabupaten', 'Nduga', '99500'),
(304, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ngada', '86400'),
(305, 11, 'Jawa Timur', 'Kabupaten', 'Nganjuk', '64400'),
(306, 11, 'Jawa Timur', 'Kabupaten', 'Ngawi', '63200'),
(307, 34, 'Sumatera Utara', 'Kabupaten', 'Nias', '22800'),
(308, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Barat', '22800'),
(309, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Selatan', '22800'),
(310, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Utara', '22800'),
(311, 16, 'Kalimantan Utara', 'Kabupaten', 'Nunukan', '77182'),
(312, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Ilir', '30600'),
(313, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ilir', '30600'),
(314, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu', '32100'),
(315, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Selatan', '32100'),
(316, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Timur', '32100'),
(317, 11, 'Jawa Timur', 'Kabupaten', 'Pacitan', '63500'),
(318, 32, 'Sumatera Barat', 'Kota', 'Padang', '25000'),
(319, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas', '22700'),
(320, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas Utara', '22700'),
(321, 32, 'Sumatera Barat', 'Kota', 'Padang Panjang', '27100'),
(322, 32, 'Sumatera Barat', 'Kabupaten', 'Padang Pariaman', '25500'),
(323, 34, 'Sumatera Utara', 'Kota', 'Padang Sidempuan', '22700'),
(324, 33, 'Sumatera Selatan', 'Kota', 'Pagar Alam', '31500'),
(325, 34, 'Sumatera Utara', 'Kabupaten', 'Pakpak Bharat', '22200'),
(326, 14, 'Kalimantan Tengah', 'Kota', 'Palangka Raya', '73000'),
(327, 33, 'Sumatera Selatan', 'Kota', 'Palembang', '30000'),
(328, 28, 'Sulawesi Selatan', 'Kota', 'Palopo', '91900'),
(329, 29, 'Sulawesi Tengah', 'Kota', 'Palu', '94000'),
(330, 11, 'Jawa Timur', 'Kabupaten', 'Pamekasan', '69300'),
(331, 3, 'Banten', 'Kabupaten', 'Pandeglang', '42200'),
(332, 9, 'Jawa Barat', 'Kabupaten', 'Pangandaran', '46396'),
(333, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pangkajene Kepulauan', '90600'),
(334, 2, 'Bangka Belitung', 'Kota', 'Pangkal Pinang', '33100'),
(335, 24, 'Papua', 'Kabupaten', 'Paniai', '98700'),
(336, 28, 'Sulawesi Selatan', 'Kota', 'Parepare', '91100'),
(337, 32, 'Sumatera Barat', 'Kota', 'Pariaman', '25500'),
(338, 29, 'Sulawesi Tengah', 'Kabupaten', 'Parigi Moutong', '94371'),
(339, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman', '26300'),
(340, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman Barat', '26300'),
(341, 15, 'Kalimantan Timur', 'Kabupaten', 'Paser', '76200'),
(342, 11, 'Jawa Timur', 'Kabupaten', 'Pasuruan', '67100'),
(343, 11, 'Jawa Timur', 'Kota', 'Pasuruan', '67100'),
(344, 10, 'Jawa Tengah', 'Kabupaten', 'Pati', '59100'),
(345, 32, 'Sumatera Barat', 'Kota', 'Payakumbuh', '26200'),
(346, 25, 'Papua Barat', 'Kabupaten', 'Pegunungan Arfak', '98300'),
(347, 24, 'Papua', 'Kabupaten', 'Pegunungan Bintang', '99500'),
(348, 10, 'Jawa Tengah', 'Kabupaten', 'Pekalongan', '51100'),
(349, 10, 'Jawa Tengah', 'Kota', 'Pekalongan', '51100'),
(350, 26, 'Riau', 'Kota', 'Pekanbaru', '28000'),
(351, 26, 'Riau', 'Kabupaten', 'Pelalawan', '28300'),
(352, 10, 'Jawa Tengah', 'Kabupaten', 'Pemalang', '52300'),
(353, 34, 'Sumatera Utara', 'Kota', 'Pematang Siantar', '21100'),
(354, 15, 'Kalimantan Timur', 'Kabupaten', 'Penajam Paser Utara', '76141'),
(355, 18, 'Lampung', 'Kabupaten', 'Pesawaran', '35000'),
(356, 18, 'Lampung', 'Kabupaten', 'Pesisir Barat', '34574'),
(357, 32, 'Sumatera Barat', 'Kabupaten', 'Pesisir Selatan', '25600'),
(358, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie', '24100'),
(359, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie Jaya', '24100'),
(360, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pinrang', '91200'),
(361, 7, 'Gorontalo', 'Kabupaten', 'Pohuwato', '96200'),
(362, 27, 'Sulawesi Barat', 'Kabupaten', 'Polewali Mandar', '91300'),
(363, 11, 'Jawa Timur', 'Kabupaten', 'Ponorogo', '63400'),
(364, 12, 'Kalimantan Barat', 'Kabupaten', 'Pontianak', '78000'),
(365, 12, 'Kalimantan Barat', 'Kota', 'Pontianak', '78000'),
(366, 29, 'Sulawesi Tengah', 'Kabupaten', 'Poso', '94600'),
(367, 33, 'Sumatera Selatan', 'Kota', 'Prabumulih', '31100'),
(368, 18, 'Lampung', 'Kabupaten', 'Pringsewu', '35373'),
(369, 11, 'Jawa Timur', 'Kabupaten', 'Probolinggo', '67200'),
(370, 11, 'Jawa Timur', 'Kota', 'Probolinggo', '67200'),
(371, 14, 'Kalimantan Tengah', 'Kabupaten', 'Pulang Pisau', '73561'),
(372, 20, 'Maluku Utara', 'Kabupaten', 'Pulau Morotai', '97771'),
(373, 24, 'Papua', 'Kabupaten', 'Puncak', '98900'),
(374, 24, 'Papua', 'Kabupaten', 'Puncak Jaya', '98900'),
(375, 10, 'Jawa Tengah', 'Kabupaten', 'Purbalingga', '53300'),
(376, 9, 'Jawa Barat', 'Kabupaten', 'Purwakarta', '41100'),
(377, 10, 'Jawa Tengah', 'Kabupaten', 'Purworejo', '54100'),
(378, 25, 'Papua Barat', 'Kabupaten', 'Raja Ampat', '98400'),
(379, 4, 'Bengkulu', 'Kabupaten', 'Rejang Lebong', '39100'),
(380, 10, 'Jawa Tengah', 'Kabupaten', 'Rembang', '59200'),
(381, 26, 'Riau', 'Kabupaten', 'Rokan Hilir', '28991'),
(382, 26, 'Riau', 'Kabupaten', 'Rokan Hulu', '28455'),
(383, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Rote Ndao', '85974'),
(384, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Sabang', '23500'),
(385, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sabu Raijua', '85391'),
(386, 10, 'Jawa Tengah', 'Kota', 'Salatiga', '50700'),
(387, 15, 'Kalimantan Timur', 'Kota', 'Samarinda', '75000'),
(388, 12, 'Kalimantan Barat', 'Kabupaten', 'Sambas', '79400'),
(389, 34, 'Sumatera Utara', 'Kabupaten', 'Samosir', '22300'),
(390, 11, 'Jawa Timur', 'Kabupaten', 'Sampang', '69200'),
(391, 12, 'Kalimantan Barat', 'Kabupaten', 'Sanggau', '78500'),
(392, 24, 'Papua', 'Kabupaten', 'Sarmi', '99373'),
(393, 8, 'Jambi', 'Kabupaten', 'Sarolangun', '37300'),
(394, 32, 'Sumatera Barat', 'Kota', 'Sawah Lunto', '27400'),
(395, 12, 'Kalimantan Barat', 'Kabupaten', 'Sekadau', '78582'),
(396, 28, 'Sulawesi Selatan', 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92800'),
(397, 4, 'Bengkulu', 'Kabupaten', 'Seluma', '38000'),
(398, 10, 'Jawa Tengah', 'Kabupaten', 'Semarang', '50000'),
(399, 10, 'Jawa Tengah', 'Kota', 'Semarang', '50000'),
(400, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Barat', '97500'),
(401, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Timur', '97500'),
(402, 3, 'Banten', 'Kabupaten', 'Serang', '42100'),
(403, 3, 'Banten', 'Kota', 'Serang', '42100'),
(404, 34, 'Sumatera Utara', 'Kabupaten', 'Serdang Bedagai', '20000'),
(405, 14, 'Kalimantan Tengah', 'Kabupaten', 'Seruyan', '74200'),
(406, 26, 'Riau', 'Kabupaten', 'Siak', '28686'),
(407, 34, 'Sumatera Utara', 'Kota', 'Sibolga', '22500'),
(408, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sidenreng Rappang/Rapang', '91600'),
(409, 11, 'Jawa Timur', 'Kabupaten', 'Sidoarjo', '61200'),
(410, 29, 'Sulawesi Tengah', 'Kabupaten', 'Sigi', '94000'),
(411, 32, 'Sumatera Barat', 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27500'),
(412, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sikka', '86100'),
(413, 34, 'Sumatera Utara', 'Kabupaten', 'Simalungun', '21100'),
(414, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Simeulue', '23000'),
(415, 12, 'Kalimantan Barat', 'Kota', 'Singkawang', '79100'),
(416, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sinjai', '92600'),
(417, 12, 'Kalimantan Barat', 'Kabupaten', 'Sintang', '78600'),
(418, 11, 'Jawa Timur', 'Kabupaten', 'Situbondo', '68300'),
(419, 5, 'DI Yogyakarta', 'Kabupaten', 'Sleman', '55500'),
(420, 32, 'Sumatera Barat', 'Kabupaten', 'Solok', '27300'),
(421, 32, 'Sumatera Barat', 'Kota', 'Solok', '27300'),
(422, 32, 'Sumatera Barat', 'Kabupaten', 'Solok Selatan', '27300'),
(423, 28, 'Sulawesi Selatan', 'Kabupaten', 'Soppeng', '90800'),
(424, 25, 'Papua Barat', 'Kabupaten', 'Sorong', '98400'),
(425, 25, 'Papua Barat', 'Kota', 'Sorong', '98400'),
(426, 25, 'Papua Barat', 'Kabupaten', 'Sorong Selatan', '98400'),
(427, 10, 'Jawa Tengah', 'Kabupaten', 'Sragen', '57200'),
(428, 9, 'Jawa Barat', 'Kabupaten', 'Subang', '41200'),
(429, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Subulussalam', '23782'),
(430, 9, 'Jawa Barat', 'Kabupaten', 'Sukabumi', '43100'),
(431, 9, 'Jawa Barat', 'Kota', 'Sukabumi', '43100'),
(432, 14, 'Kalimantan Tengah', 'Kabupaten', 'Sukamara', '74172'),
(433, 10, 'Jawa Tengah', 'Kabupaten', 'Sukoharjo', '57500'),
(434, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat', '87200'),
(435, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat Daya', '87200'),
(436, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Tengah', '87200'),
(437, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Timur', '87100'),
(438, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa', '84300'),
(439, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa Barat', '84300'),
(440, 9, 'Jawa Barat', 'Kabupaten', 'Sumedang', '45300'),
(441, 11, 'Jawa Timur', 'Kabupaten', 'Sumenep', '69400'),
(442, 8, 'Jambi', 'Kota', 'Sungaipenuh', '37100'),
(443, 24, 'Papua', 'Kabupaten', 'Supiori', '98100'),
(444, 11, 'Jawa Timur', 'Kota', 'Surabaya', '60000'),
(445, 10, 'Jawa Tengah', 'Kota', 'Surakarta (Solo)', '57100'),
(446, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tabalong', '71500'),
(447, 1, 'Bali', 'Kabupaten', 'Tabanan', '82100'),
(448, 28, 'Sulawesi Selatan', 'Kabupaten', 'Takalar', '92200'),
(449, 25, 'Papua Barat', 'Kabupaten', 'Tambrauw', '98400'),
(450, 16, 'Kalimantan Utara', 'Kabupaten', 'Tana Tidung', '77152'),
(451, 28, 'Sulawesi Selatan', 'Kabupaten', 'Tana Toraja', '91800'),
(452, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Bumbu', '70000'),
(453, 32, 'Sumatera Barat', 'Kabupaten', 'Tanah Datar', '27200'),
(454, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Laut', '70800'),
(455, 3, 'Banten', 'Kabupaten', 'Tangerang', '15000'),
(456, 3, 'Banten', 'Kota', 'Tangerang', '15000'),
(457, 3, 'Banten', 'Kota', 'Tangerang Selatan', '15000'),
(458, 18, 'Lampung', 'Kabupaten', 'Tanggamus', '35000'),
(459, 34, 'Sumatera Utara', 'Kota', 'Tanjung Balai', '21300'),
(460, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Barat', '36500'),
(461, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Timur', '36500'),
(462, 17, 'Kepulauan Riau', 'Kota', 'Tanjung Pinang', '29100'),
(463, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Selatan', '22700'),
(464, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Tengah', '22500'),
(465, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Utara', '22400'),
(466, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tapin', '71100'),
(467, 16, 'Kalimantan Utara', 'Kota', 'Tarakan', '77100'),
(468, 9, 'Jawa Barat', 'Kabupaten', 'Tasikmalaya', '46100'),
(469, 9, 'Jawa Barat', 'Kota', 'Tasikmalaya', '46100'),
(470, 34, 'Sumatera Utara', 'Kota', 'Tebing Tinggi', '20600'),
(471, 8, 'Jambi', 'Kabupaten', 'Tebo', '37200'),
(472, 10, 'Jawa Tengah', 'Kabupaten', 'Tegal', '52100'),
(473, 10, 'Jawa Tengah', 'Kota', 'Tegal', '52100'),
(474, 25, 'Papua Barat', 'Kabupaten', 'Teluk Bintuni', '98300'),
(475, 25, 'Papua Barat', 'Kabupaten', 'Teluk Wondama', '98300'),
(476, 10, 'Jawa Tengah', 'Kabupaten', 'Temanggung', '56200'),
(477, 20, 'Maluku Utara', 'Kota', 'Ternate', '97700'),
(478, 20, 'Maluku Utara', 'Kota', 'Tidore Kepulauan', '97800'),
(479, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Selatan', '85500'),
(480, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Utara', '85600'),
(481, 34, 'Sumatera Utara', 'Kabupaten', 'Toba Samosir', '22300'),
(482, 29, 'Sulawesi Tengah', 'Kabupaten', 'Tojo Una-Una', '94600'),
(483, 29, 'Sulawesi Tengah', 'Kabupaten', 'Toli-Toli', '94500'),
(484, 24, 'Papua', 'Kabupaten', 'Tolikara', '99562'),
(485, 31, 'Sulawesi Utara', 'Kota', 'Tomohon', '95362'),
(486, 28, 'Sulawesi Selatan', 'Kabupaten', 'Toraja Utara', '91890'),
(487, 11, 'Jawa Timur', 'Kabupaten', 'Trenggalek', '66300'),
(488, 19, 'Maluku', 'Kota', 'Tual', '97600'),
(489, 11, 'Jawa Timur', 'Kabupaten', 'Tuban', '62300'),
(490, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang', '34500'),
(491, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang Barat', '34500'),
(492, 11, 'Jawa Timur', 'Kabupaten', 'Tulungagung', '66200'),
(493, 28, 'Sulawesi Selatan', 'Kabupaten', 'Wajo', '90900'),
(494, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Wakatobi', '93700'),
(495, 24, 'Papua', 'Kabupaten', 'Waropen', '98200'),
(496, 18, 'Lampung', 'Kabupaten', 'Way Kanan', '35000'),
(497, 10, 'Jawa Tengah', 'Kabupaten', 'Wonogiri', '57600'),
(498, 10, 'Jawa Tengah', 'Kabupaten', 'Wonosobo', '56300'),
(499, 24, 'Papua', 'Kabupaten', 'Yahukimo', '99500'),
(500, 24, 'Papua', 'Kabupaten', 'Yalimo', '99500'),
(501, 5, 'DI Yogyakarta', 'Kota', 'Yogyakarta', '55000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cs_customer`
--

CREATE TABLE `cs_customer` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `date_join` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cs_customer_address`
--

CREATE TABLE `cs_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `factory`
--

CREATE TABLE `factory` (
  `id` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `peta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery`
--

CREATE TABLE `gal_gallery` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `orientation` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image2` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery_description`
--

CREATE TABLE `gal_gallery_description` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `sub_title_2` text NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery_image`
--

CREATE TABLE `gal_gallery_image` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `sort`, `status`) VALUES
(2, 'English', 'en', 1, '1'),
(3, 'Indonesia', 'id', 2, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_career`
--

CREATE TABLE `list_career` (
  `id` bigint(20) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `intro_desc` text,
  `deskripsi` longtext,
  `kualifikasi` longtext,
  `lokasi_kerja` varchar(225) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `actives` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `list_career`
--

INSERT INTO `list_career` (`id`, `title`, `intro_desc`, `deskripsi`, `kualifikasi`, `lokasi_kerja`, `count`, `actives`) VALUES
(1, 'Sales Executive', '<p>It’s our diversified advisory experience that we want you to help us deliver and evolve. In doing so you’ll not just be at the forefront of the industry, you’ll be helping to drive its direction. We have a fantastic opportunity available for a switched on Client Adviser (Senior) in our Business Services division.<strong></strong></p>', '<ul><li>Maintain the existing global email solution in our international organisation (12000 accounts worldwide)</li><li>Be the main point of contact for messaging related topics</li><li>Coordinate integration between Givaudan messaging systems and other platforms (e.g.: CRM, home grown solutions, SAP, etc.)</li><li>Leverage, design and implement evolution in messaging solutions as part of large projects</li><li>Ensure smooth deployment and handover to operations (managed services partner)</li><li>Produce technical specifications, document solutions and ensure the consistency of the messaging platform in our evolving environment</li><li>Drive data and platform migrations (in case of company acquisitions)</li><li>Overlook Cpanel configurations changes and new feature implementations</li><li>Suggest platform improvements</li><li>L3 Support and troubleshoot issues</li></ul>', '<ul><li>University Degree in IT or related field</li><li>Minimum 7 years’ experience ideally with strong experience in Google messaging systems.</li><li>Ability to analyze complex requirements, recommend and implement deployment strategies</li><li>Excellent communication and presentation skills with strong analytical and problem-solving skills.</li><li>Capable of understanding, articulating and translating business requirements to system solution at a conceptual level (business to IT translation)</li><li>Culturally aware and adaptable to flexible business requirements</li><li>Working knowledge of directory integration, of authentication, identity, and access management technologies and certificate management, network topology, DNS and common communication protocols including HTTP/S, TCP and UDP</li></ul>', 'Surabaya', NULL, 0),
(2, 'IT Executive', '<p>It’s our diversified advisory experience that we want you to help us deliver and evolve. In doing so you’ll not just be at the forefront of the industry, you’ll be helping to drive its direction. We have a fantastic opportunity available for a switched on Client Adviser (Senior) in our Business Services division.</p><strong></strong><p>Email to apply for this job:</p><strong>career@corpus.co.id</strong>', '<ul><li>Maintain the existing global email solution in our international organisation (12000 accounts worldwide)</li><li>Be the main point of contact for messaging related topics</li><li>Coordinate integration between Givaudan messaging systems and other platforms (e.g.: CRM, home grown solutions, SAP, etc.)</li><li>Leverage, design and implement evolution in messaging solutions as part of large projects</li><li>Ensure smooth deployment and handover to operations (managed services partner)</li><li>Produce technical specifications, document solutions and ensure the consistency of the messaging platform in our evolving environment</li><li>Drive data and platform migrations (in case of company acquisitions)</li><li>Overlook Cpanel configurations changes and new feature implementations</li><li>Suggest platform improvements</li><li>L3 Support and troubleshoot issues</li></ul>', '<ul><li>University Degree in IT or related field</li><li>Minimum 7 years’ experience ideally with strong experience in Google messaging systems.</li><li>Ability to analyze complex requirements, recommend and implement deployment strategies</li><li>Excellent communication and presentation skills with strong analytical and problem-solving skills.</li><li>Capable of understanding, articulating and translating business requirements to system solution at a conceptual level (business to IT translation)</li><li>Culturally aware and adaptable to flexible business requirements</li><li>Working knowledge of directory integration, of authentication, identity, and access management technologies and certificate management, network topology, DNS and common communication protocols including HTTP/S, TCP and UDP</li></ul>', 'Surabaya', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_product`
--

CREATE TABLE `list_product` (
  `a` int(3) DEFAULT NULL,
  `b` int(2) DEFAULT NULL,
  `c` varchar(54) DEFAULT NULL,
  `d` varchar(17) DEFAULT NULL,
  `e` varchar(20) DEFAULT NULL,
  `f` varchar(11) DEFAULT NULL,
  `g` varchar(42) DEFAULT NULL,
  `h` varchar(73) DEFAULT NULL,
  `i` varchar(12) DEFAULT NULL,
  `j` int(6) DEFAULT NULL,
  `k` varchar(245) DEFAULT NULL,
  `l` varchar(18) DEFAULT NULL,
  `m` int(4) DEFAULT NULL,
  `o` int(7) DEFAULT NULL,
  `p` varchar(40) DEFAULT NULL,
  `q` varchar(67) DEFAULT NULL,
  `r` int(2) DEFAULT NULL,
  `s` varchar(37) DEFAULT NULL,
  `t` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1, 'info@markdesign.net', 'Slide Controller Create 1', '2019-05-24 09:55:33'),
(2, 'info@markdesign.net', 'ServiceController Create 1', '2019-05-27 10:17:46'),
(3, 'info@markdesign.net', 'ServiceController Update 1', '2019-05-27 10:28:36'),
(4, 'info@markdesign.net', 'ServiceController Update 1', '2019-05-27 10:29:51'),
(5, 'info@markdesign.net', 'TeamListController Create 1', '2019-05-29 09:59:29'),
(6, 'info@markdesign.net', 'PrdCategoryController Create 1', '2019-05-31 03:44:24'),
(7, 'info@markdesign.net', 'PrdCategoryController Create 2', '2019-05-31 03:44:40'),
(8, 'info@markdesign.net', 'PrdCategoryController Create 3', '2019-05-31 03:45:08'),
(9, 'info@markdesign.net', 'PrdCategoryController Create 4', '2019-05-31 03:47:14'),
(10, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-06-11 02:33:18'),
(11, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-06-12 04:00:14'),
(12, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-06-12 06:33:36'),
(13, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-06-12 06:36:17'),
(14, 'info@markdesign.net', 'SlideController Update 1', '2019-06-12 06:38:11'),
(15, 'info@markdesign.net', 'Setting Update', '2019-06-12 07:03:42'),
(16, 'info@markdesign.net', 'Setting Update', '2019-06-12 07:03:54'),
(17, 'info@markdesign.net', 'Setting Update', '2019-06-12 07:03:58'),
(18, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-06-12 07:47:50'),
(19, 'info@markdesign.net', 'PdfController Create 1', '2019-06-12 07:52:29'),
(20, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-06-12 07:53:53'),
(21, 'info@markdesign.net', 'Slide Controller Create 2', '2019-06-12 07:55:17'),
(22, 'info@markdesign.net', 'PdfController Create 2', '2019-06-12 07:55:26'),
(23, 'info@markdesign.net', 'Slide Controller Create 3', '2019-06-12 07:57:22'),
(24, 'info@markdesign.net', 'Slide Controller Create 4', '2019-06-12 07:57:39'),
(25, 'info@markdesign.net', 'Slide Controller Create 5', '2019-06-12 07:57:54'),
(26, 'info@markdesign.net', 'Setting Update', '2019-06-12 07:58:00'),
(27, 'info@markdesign.net', 'Setting Update', '2019-06-12 07:58:03'),
(28, 'info@markdesign.net', 'Setting Update', '2019-06-12 07:58:16'),
(29, 'info@markdesign.net', 'PdfController Create 3', '2019-06-12 07:58:59'),
(30, 'info@markdesign.net', 'PdfController Create 4', '2019-06-12 08:01:25'),
(31, 'info@markdesign.net', 'Setting Update', '2019-06-12 08:04:32'),
(32, 'info@markdesign.net', 'PdfController Create 5', '2019-06-12 08:04:47'),
(33, 'info@markdesign.net', 'Setting Update', '2019-06-12 08:08:04'),
(34, 'info@markdesign.net', 'Setting Update', '2019-06-12 08:11:25'),
(35, 'info@markdesign.net', 'Setting Update', '2019-06-12 08:12:58'),
(36, 'info@markdesign.net', 'PdfController Create 6', '2019-06-12 08:26:47'),
(37, 'info@markdesign.net', 'PdfController Create 7', '2019-06-12 08:27:54'),
(38, 'info@markdesign.net', 'PdfController Create 8', '2019-06-12 08:30:22'),
(39, 'info@markdesign.net', 'Blog Controller Create 1', '2019-06-12 08:33:02'),
(40, 'info@markdesign.net', 'BlogController Update 1', '2019-06-12 08:33:31'),
(41, 'info@markdesign.net', 'BlogController Update 1', '2019-06-12 08:33:54'),
(42, 'info@markdesign.net', 'PdfController Create 9', '2019-06-12 08:34:28'),
(43, 'info@markdesign.net', 'PdfController Create 10', '2019-06-12 08:36:12'),
(44, 'info@markdesign.net', 'Blog Controller Create 2', '2019-06-12 08:36:52'),
(45, 'info@markdesign.net', 'PdfController Create 11', '2019-06-12 08:37:02'),
(46, 'info@markdesign.net', 'Blog Controller Create 3', '2019-06-12 08:38:24'),
(47, 'info@markdesign.net', 'PdfController Create 12', '2019-06-12 08:39:27'),
(48, 'info@markdesign.net', 'Blog Controller Create 4', '2019-06-12 08:40:07'),
(49, 'info@markdesign.net', 'PdfController Create 13', '2019-06-12 08:40:30'),
(50, 'info@markdesign.net', 'Blog Controller Create 5', '2019-06-12 08:41:35'),
(51, 'info@markdesign.net', 'PdfController Create 14', '2019-06-12 08:42:44'),
(52, 'info@markdesign.net', 'Blog Controller Create 6', '2019-06-12 08:44:18'),
(53, 'info@markdesign.net', 'PdfController Create 15', '2019-06-12 08:45:18'),
(54, 'info@markdesign.net', 'Blog Controller Create 7', '2019-06-12 08:45:55'),
(55, 'info@markdesign.net', 'PdfController Create 16', '2019-06-12 08:47:18'),
(56, 'info@markdesign.net', 'Blog Controller Create 8', '2019-06-12 08:47:41'),
(57, 'info@markdesign.net', 'PdfController Create 17', '2019-06-12 08:49:06'),
(58, 'info@markdesign.net', 'PdfController Create 18', '2019-06-12 08:51:22'),
(59, 'info@markdesign.net', 'Blog Controller Create 9', '2019-06-12 08:51:41'),
(60, 'info@markdesign.net', 'CareerListController Create 1', '2019-06-12 08:53:49'),
(61, 'info@markdesign.net', 'PdfController Create 19', '2019-06-12 08:54:08'),
(62, 'info@markdesign.net', 'CareerListController Create 2', '2019-06-12 08:54:56'),
(63, 'info@markdesign.net', 'PdfController Create 20', '2019-06-12 08:57:36'),
(64, 'info@markdesign.net', 'PdfController Update 9', '2019-06-12 08:59:41'),
(65, 'info@markdesign.net', 'PdfController Update 9', '2019-06-12 09:00:35'),
(66, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:04:32'),
(67, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:04:35'),
(68, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:08:56'),
(69, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:10:00'),
(70, 'info@markdesign.net', 'PdfController Create 21', '2019-06-12 09:12:05'),
(71, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:14:15'),
(72, 'info@markdesign.net', 'PdfController Create 22', '2019-06-12 09:14:17'),
(73, 'info@markdesign.net', 'PdfController Create 23', '2019-06-12 09:17:12'),
(74, 'info@markdesign.net', 'PdfController Create 24', '2019-06-12 09:18:22'),
(75, 'info@markdesign.net', 'Address Controller Create 1', '2019-06-12 09:20:30'),
(76, 'info@markdesign.net', 'PdfController Create 25', '2019-06-12 09:21:09'),
(77, 'info@markdesign.net', 'Address Controller Update 1', '2019-06-12 09:21:21'),
(78, 'info@markdesign.net', 'Address Controller Create 2', '2019-06-12 09:22:36'),
(79, 'info@markdesign.net', 'PdfController Create 26', '2019-06-12 09:23:19'),
(80, 'info@markdesign.net', 'Address Controller Create 3', '2019-06-12 09:24:28'),
(81, 'info@markdesign.net', 'Address Controller Create 4', '2019-06-12 09:25:02'),
(82, 'info@markdesign.net', 'PdfController Create 27', '2019-06-12 09:25:22'),
(83, 'info@markdesign.net', 'Address Controller Create 5', '2019-06-12 09:25:47'),
(84, 'info@markdesign.net', 'Address Controller Create 6', '2019-06-12 09:26:29'),
(85, 'info@markdesign.net', 'Address Controller Create 7', '2019-06-12 09:27:01'),
(86, 'info@markdesign.net', 'PdfController Create 28', '2019-06-12 09:27:30'),
(87, 'info@markdesign.net', 'Address Controller Create 8', '2019-06-12 09:27:39'),
(88, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:29:08'),
(89, 'info@markdesign.net', 'PdfController Create 29', '2019-06-12 09:29:31'),
(90, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:32:29'),
(91, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:35:28'),
(92, 'info@markdesign.net', 'PdfController Create 30', '2019-06-12 09:35:55'),
(93, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:36:31'),
(94, 'info@markdesign.net', 'PdfController Create 31', '2019-06-12 09:38:12'),
(95, 'info@markdesign.net', 'PdfController Create 32', '2019-06-12 09:40:51'),
(96, 'info@markdesign.net', 'Setting Update', '2019-06-12 09:42:50'),
(97, 'info@markdesign.net', 'TeamListController Create 2', '2019-06-12 09:43:54'),
(98, 'info@markdesign.net', 'TeamListController Create 3', '2019-06-12 09:46:27'),
(99, 'info@markdesign.net', 'TeamListController Create 4', '2019-06-12 09:46:50'),
(100, 'info@markdesign.net', 'TeamListController Create 5', '2019-06-12 09:47:13'),
(101, 'info@markdesign.net', 'PdfController Create 33', '2019-06-12 09:48:00'),
(102, 'info@markdesign.net', 'ServiceController Update 1', '2019-06-12 09:49:11'),
(103, 'info@markdesign.net', 'PdfController Create 34', '2019-06-12 09:49:53'),
(104, 'info@markdesign.net', 'PdfController Create 35', '2019-06-12 09:53:46'),
(105, 'info@markdesign.net', 'ServiceController Create 2', '2019-06-12 09:55:17'),
(106, 'info@markdesign.net', 'PdfController Update 33', '2019-06-12 10:01:01'),
(107, 'info@markdesign.net', 'ServiceController Create 3', '2019-06-12 10:01:35'),
(108, 'info@markdesign.net', 'ServiceController Create 4', '2019-06-12 10:04:43'),
(109, 'info@markdesign.net', 'ServiceController Update 4', '2019-06-12 10:04:51'),
(110, 'info@markdesign.net', 'ServiceController Create 5', '2019-06-12 10:06:39'),
(111, 'info@markdesign.net', 'ServiceController Update 5', '2019-06-12 10:06:53'),
(112, 'info@markdesign.net', 'ServiceController Create 6', '2019-06-12 10:11:28'),
(113, 'info@markdesign.net', 'ServiceController Update 6', '2019-06-12 10:11:42'),
(114, 'info@markdesign.net', 'Blog Controller Create 10', '2019-06-12 10:13:54'),
(115, 'info@markdesign.net', 'PdfController Create 36', '2019-06-12 10:14:30'),
(116, 'info@markdesign.net', 'PdfController Update 33', '2019-06-12 10:15:26'),
(117, 'info@markdesign.net', 'PdfController Update 33', '2019-06-12 10:16:07'),
(118, 'info@markdesign.net', 'Blog Controller Create 11', '2019-06-12 10:16:11'),
(119, 'info@markdesign.net', 'Blog Controller Create 12', '2019-06-12 10:17:36'),
(120, 'info@markdesign.net', 'PdfController Update 34', '2019-06-12 10:18:20'),
(121, 'info@markdesign.net', 'Blog Controller Create 13', '2019-06-12 10:18:50'),
(122, 'info@markdesign.net', 'PdfController Update 35', '2019-06-12 10:19:20'),
(123, 'info@markdesign.net', 'PdfController Update 5', '2019-06-12 10:19:49'),
(124, 'info@markdesign.net', 'PdfController Create 37', '2019-06-12 10:21:51'),
(125, 'info@markdesign.net', 'PdfController Update 31', '2019-06-12 10:23:30'),
(126, 'info@markdesign.net', 'PdfController Update 32', '2019-06-12 10:24:22'),
(127, 'info@markdesign.net', 'PdfController Update 29', '2019-06-12 10:24:55'),
(128, 'info@markdesign.net', 'PdfController Update 28', '2019-06-12 10:26:07'),
(129, 'info@markdesign.net', 'PdfController Update 27', '2019-06-12 10:26:21'),
(130, 'info@markdesign.net', 'PdfController Update 26', '2019-06-12 10:26:34'),
(131, 'info@markdesign.net', 'PdfController Update 25', '2019-06-12 10:26:41'),
(132, 'info@markdesign.net', 'PdfController Update 24', '2019-06-12 10:26:49'),
(133, 'info@markdesign.net', 'PdfController Update 23', '2019-06-12 10:26:56'),
(134, 'info@markdesign.net', 'PdfController Update 22', '2019-06-12 10:27:02'),
(135, 'info@markdesign.net', 'PdfController Update 21', '2019-06-12 10:27:29'),
(136, 'info@markdesign.net', 'Blog Controller Create 14', '2019-06-12 10:37:36'),
(137, 'info@markdesign.net', 'BlogController Update 10', '2019-06-12 10:39:29'),
(138, 'info@markdesign.net', 'Blog Controller Create 15', '2019-06-12 10:49:02'),
(139, 'info@markdesign.net', 'Blog Controller Create 16', '2019-06-12 10:50:59'),
(140, 'info@markdesign.net', 'Setting Update', '2019-06-12 11:13:49'),
(141, 'info@markdesign.net', 'CareerListController Update 1', '2019-06-12 11:36:12'),
(142, 'info@markdesign.net', 'Setting Update', '2019-06-12 11:42:16'),
(143, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(144, 'info@markdesign.net', 'CareerListController Update 1', '0000-00-00 00:00:00'),
(145, 'info@markdesign.net', 'CareerListController Update 2', '0000-00-00 00:00:00'),
(146, 'info@markdesign.net', 'CareerListController Update 1', '0000-00-00 00:00:00'),
(147, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-21 11:49:07'),
(148, 'info@markdesign.net', 'Setting Update', '2019-10-21 11:49:33'),
(149, 'info@markdesign.net', 'Setting Update', '2019-10-21 11:49:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `me_member`
--

CREATE TABLE `me_member` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `me_member`
--

INSERT INTO `me_member` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`) VALUES
(2, 'deoryzpandu@gmail.com', 'deory pandu putra', 'wahyu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2015-07-10 16:31:10', 0, 1, '', '0854646464', 'jl test test', 'batu', '11', '65656'),
(5, 'ibnu@markdesign.net', 'deory pandu putra', 'wahyu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-28 04:16:03', 0, 1, '', '085646765265', 'Jl Martorejo No 113', 'Batu', '11', '65323'),
(9, 'ibnu.fajar86@yahoo.com', 'ibnu', 'fajar', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-29 09:11:18', 0, 1, '', '2736473264', 'jl. embong kenongo 79a', 'surabaya', '11', '60239'),
(7, 'deo@markdesign.net', 'deoryzzz', 'pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-29 08:59:20', 0, 1, '', '085646765265', 'Jl Martorejo No 113', '444', '11', '65323'),
(10, 'deoryz@yahoo.co.id', 'deoryzzz', 'pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-29 09:12:15', 0, 1, '', '085646765265', 'Jl Martorejo No 113', 'batu', '11', '65323'),
(11, 'chendra@markdesign.net', 'chendra', 'cahyadi', '340ea6163337bd031bb14fe1885c1c92cb78766a', '2016-04-13 07:59:22', 0, 1, '', '03160251101', 'bawean 50', 'surabaya', '11', '60246'),
(12, 'dindacholifahputri@gmail.com', 'Dinda', 'Cholifah Putri', '5f0ad6d66d4eac4172fee264ee88ccc2b77c3840', '2016-06-16 06:34:54', 0, 1, '', '089675783665', 'Jl.Brigjen Katamso gg.Anggrek 2 No.27', 'Sidoarjo', '11', '61256');

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order`
--

CREATE TABLE `or_order` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `payment_first_name` varchar(128) NOT NULL,
  `payment_last_name` varchar(128) NOT NULL,
  `payment_company` varchar(128) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(128) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `shipping_first_name` varchar(128) NOT NULL,
  `shipping_last_name` varchar(128) NOT NULL,
  `shipping_company` varchar(128) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(128) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_area` int(11) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(100) NOT NULL,
  `currency_value` decimal(15,4) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `delivery_from` varchar(100) NOT NULL,
  `delivery_to` varchar(100) NOT NULL,
  `delivery_package` varchar(100) NOT NULL,
  `delivery_price` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `delivery_weight` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `tracking_id` varchar(200) NOT NULL,
  `is_read` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_history`
--

CREATE TABLE `or_order_history` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_product`
--

CREATE TABLE `or_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(256) NOT NULL,
  `kode` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `attributes_id` int(11) NOT NULL,
  `attributes_name` varchar(256) NOT NULL,
  `attributes_price` decimal(15,4) NOT NULL,
  `berat` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_status`
--

CREATE TABLE `or_order_status` (
  `order_status_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdf`
--

CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama_id` varchar(225) NOT NULL,
  `nama_en` varchar(225) DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `size` decimal(10,3) NOT NULL,
  `sort` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `dates` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pdf`
--

INSERT INTO `pdf` (`id`, `category_id`, `nama_id`, `nama_en`, `image`, `file`, `size`, `sort`, `date_input`, `dates`) VALUES
(34, 1, 'Report PT Corpus Prima Mandiri Konsol 2017', 'PT Corpus Prima Mandiri Console 2017 Report', '', 'Report PT Corpus Prima Mandiri Konsol 2017.pdf', '3575806.000', 2, '2019-06-12 17:18:20', '2018-07-30'),
(35, 1, 'Lap Audit PT Corpus Prima Mandiri Konsol 31 Des 2016', 'PT Corpus Prima Mandiri Konsol Audit Lap 31 Dec 2016', '', 'Lap Audit PT Corpus Prima Mandiri Konsol 31 Des 2016.pdf', '2832567.000', 3, '2019-06-12 17:19:20', '2018-07-30'),
(5, 1, 'Laporan Keuangan CPM 2015 Audited', '2015 Audited CPM Financial Report', '', 'LAporan Keuangan CPM 2015 audited.pdf', '4103247.000', 5, '2019-06-12 17:19:49', '2018-09-23'),
(22, 3, 'September 2017', 'Sept 2017', '', 'Sept CPM.pdf', '1386285.000', 2, '2019-06-12 17:27:02', '2017-09-10'),
(21, 3, 'Januari 2018', 'January 2018', '', 'JAN 2018 Screen only.pdf', '702246.000', 1, '2019-06-12 17:27:29', '2018-03-10'),
(32, 3, 'Tentang CPM', 'About CPM', '', '456.pdf', '949771.000', 10, '2019-06-12 17:24:22', '2017-01-01'),
(23, 3, 'Agustus 2017', 'Aug 2017', '', 'Factsheet Aug.pdf', '3488037.000', 3, '2019-06-12 17:26:56', '2017-08-10'),
(24, 3, 'Juli 2017', 'July 2017', '', 'Factsheet July web.pdf', '1138107.000', 4, '2019-06-12 17:26:49', '2017-07-10'),
(25, 3, 'Juni 2017', 'June 2017', '', 'Factsheet June.pdf', '1389912.000', 5, '2019-06-12 17:26:41', '2017-06-10'),
(26, 3, 'Mei 2017', 'May 2017', '', 'FS May 2b.pdf', '3251012.000', 6, '2019-06-12 17:26:34', '2017-05-10'),
(27, 3, 'April 2017', 'Apr 2017', '', 'April.pdf', '3074962.000', 7, '2019-06-12 17:26:21', '2017-04-10'),
(28, 3, 'Maret 2017', 'Mar 2017', '', 'CPM March.pdf', '3275514.000', 8, '2019-06-12 17:26:07', '2017-02-10'),
(29, 3, 'Februari 2017', 'February 2017', '', 'CPM feb.pdf', '3987493.000', 9, '2019-06-12 17:24:55', '2017-02-10'),
(31, 3, 'Profil Perusahaan', 'Company Profile', '', 'CPM Compro 72dpi.pdf', '4754259.000', 11, '2019-06-12 17:23:30', '2017-01-01'),
(37, 1, 'Lap Audit CPM 2013-2014', 'Lap Audit CPM 2013-2014', '', 'Lap Audit CPM 2013-2014.pdf', '4142005.000', 4, '2019-06-12 17:21:51', '2018-09-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_bank`
--

CREATE TABLE `pg_bank` (
  `id` int(25) NOT NULL,
  `id_bank` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `rekening` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_blog`
--

CREATE TABLE `pg_blog` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `category_id` int(2) DEFAULT NULL,
  `writer` int(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_blog`
--

INSERT INTO `pg_blog` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `category_id`, `writer`) VALUES
(1, 1, '7034c-1.jpeg', 1, '2019-02-11 15:29:43', '2019-06-12 15:33:54', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(2, 1, '095a7-2.jpg', 1, '2019-02-04 15:34:09', '2019-06-12 15:36:52', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(3, 1, 'b7b78-3.jpg', 1, '2019-01-30 15:37:05', '2019-06-12 15:38:24', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(4, 1, '5de79-4.jpg', 1, '2019-01-24 15:38:31', '2019-06-12 15:40:07', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(5, 1, 'a5bb5-4.jpg', 1, '2019-01-07 15:40:18', '2019-06-12 15:41:35', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(6, 1, '7754b-6.jpg', 1, '2018-11-29 15:42:32', '2019-06-12 15:44:18', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(7, 1, '15380-3.jpg', 1, '2018-11-07 15:44:26', '2019-06-12 15:45:55', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(8, 1, '205f9-8.jpg', 1, '2018-11-01 15:46:03', '2019-06-12 15:47:41', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(9, 1, '1c3cb-9.jpg', 1, '2018-10-16 15:50:10', '2019-06-12 15:51:41', 'info@markdesign.net', 'info@markdesign.net', 0, 0),
(10, 0, 'fef35-1.jpg', 1, '2019-06-12 17:12:29', '2019-06-12 17:39:29', 'info@markdesign.net', 'info@markdesign.net', 2, 0),
(11, 1, '3ede4-2 (1).jpg', 1, '2019-06-12 17:13:59', '2019-06-12 17:16:11', 'info@markdesign.net', 'info@markdesign.net', 2, 0),
(12, 1, 'd6398-3 (1).jpg', 1, '2019-06-12 17:16:54', '2019-06-12 17:17:36', 'info@markdesign.net', 'info@markdesign.net', 2, 0),
(13, 1, 'e4d1c-4 (2).jpg', 1, '2019-06-12 17:18:09', '2019-06-12 17:18:50', 'info@markdesign.net', 'info@markdesign.net', 2, 0),
(14, 1, '44f2d-2 (2).jpg', 1, '2019-06-12 17:33:49', '2019-06-12 17:37:36', 'info@markdesign.net', 'info@markdesign.net', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_blog_description`
--

CREATE TABLE `pg_blog_description` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `quote` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_blog_description`
--

INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(6, 1, 3, 'Emas Antam Dijual Rp 664.000/gram', '<p>Jakarta 12 Februari 2019 - Logam mulia atau emas batangan milik PT Aneka Tambang Tbk (Antam) hari ini dijual Rp 664.000/gram. Harga emas Antam turun Rp 2.000 per gram dibanding kemarin.</p><p>Demikian dikutip detikFinance dari situs perdagangan Logam Mulia Antam, Selasa (12/02/2019).</p><p>Sementara harga buyback atau pembelian kembali emas Antam hari ini ada di level Rp 587.000/gram Harga buyback ini berarti, jika Anda ingin menjual emas, maka Antam akan membelinya dengan harga tersebut.</p><p>Harga emas batangan tersebut sudah termasuk PPh 22 sebesar 0,9%. Bila ingin mendapatkan potongan pajak lebih rendah, yaitu sebesar 0,45% maka bawa NPWP saat transaksi.</p><p>Berikut rincian harga emas Antam hari ini:</p><p>Pecahan 1 gram Rp 664.000</p><p>Pecahan 5 gram Rp 3.140.000</p><p>Pecahan 10 gram Rp 6.215.000</p><p>Pecahan 25 gram Rp 15.430.000</p><p>Pecahan 50 gram Rp 30.785.000</p><p>Pecahan 100 gram Rp 61.500.000</p><p>Pecahan 250 gram Rp 153.500.000</p><p>Pecahan 500 gram Rp 306.800.000</p><p>Source : Detik.com</p>', ''),
(5, 1, 2, 'Antam Gold Is Sold For IDR 664,000 / Gram', '<p>Jakarta 12 February 2019 - Precious metals or gold bars owned by PT Aneka Tambang Tbk (Antam) today are sold at Rp 664,000 / gram. Antam\'s gold price fell Rp 2,000 per gram compared to yesterday.</p><p>Thus quoted detikFinance from the Antam Precious Metals trading site, Tuesday (12/02/2019).</p><p>While Antam\'s buyback or gold repurchase price today is at the level of IDR 587,000 / gram This buyback price means that if you want to sell gold, Antam will buy it at that price.</p><p>The price of the gold bar includes 22 PPh of 0.9%. If you want to get a lower tax deduction, which is equal to 0.45%, bring the NPWP at the transaction.</p><p>Following are the details of Antam\'s gold prices today:</p><p>1 gram denomination of Rp. 664,000</p><p>5 gram denomination of Rp. 3,140,000</p><p>10 gram denomination of IDR 6,215,000</p><p>25 gram denomination of Rp. 15,430,000</p><p>50 gram denomination of Rp. 30,785,000</p><p>100 gram denomination of Rp. 61,500,000</p><p>250 gram denomination of Rp 153,500,000</p><p>500 gram IDR 306,800,000</p><p>Source: Detik.com</p>', ''),
(7, 2, 2, 'Waiting for Jokowi vs. Prabowo in the Infrastructure Debate to Food', '<p>Jakarta - Mid-February 2019, the public will look back at the debate between presidential candidates and vice-presidential candidates related to the recent general elections held in April. Presidential Candidate 01 Joko Widodo (Jokowi) and Presidential Candidate 02 Prabowo Subianto will again compete in the debate with the theme of energy, food, environment and infrastructure.</p><p>Then, what would be discussed in the debate?</p><p>Some economic observers consider that the debate that took place on Sunday, February 17, 2019 will be a war of concepts in advancing each sector discussed.</p><p>Executive Director of the Center of Reform on Economics (Core) Indonesia Mohammad Faisal revealed that candidate candidate 01 will sell success in infrastructure development and price stability with relatively low inflation over the past three years.</p><p>\"What is clear from the important sales incumbents in massive infrastructure development, then also from the side of food stability from relatively low inflation is clearly lower, it will be a strong point for sale,\" said Faisal</p><p>Meanwhile, from the opposition, Faisal said that he would offer a different concept to deal with problems in the energy, food, environment and infrastructure sectors than those that exist today.</p><p>He gave an example, pair number 02 Prabowo-Sandi would offer the concept of infrastructure development without debt.</p><p>\"What is clear in general is that all of his thoughts are the same, if the opposition infrastructure is in terms of financing, with no debt, food is also how the price is affordable,\" he explained.</p><p>\"This will be a sale, propose a program that can reduce prices,\" he said.</p><p>Source: Detik.com</p>', ''),
(8, 2, 3, 'Menanti Jokowi Vs Prabowo Dalam Debat Infrastruktur Hingga Pangan', '<p>Jakarta - Pertengahan Februari 2019, masyarakat akan melihat kembali adu debat calon presiden dan calon wakil presiden terkait dengan pemilihan umum (pemilu) yang baru dilakukan pada April mendatang. Capres 01 Joko Widodo (Jokowi) dan Capres 02 Prabowo Subianto akan kembali beradu dalam debat dengan tema energi, pangan, lingkungan hidup, dan infrastruktur.</p><p>Lalu, apa kira-kira yang akan dibahas dalam debat tersebut?</p><p>Beberapa pengamat ekonomi menilai bahwa debat yang berlangsung pada hari Minggu, 17 Februari 2019 akan perang konsep dalam memajukan masing-masing sektor yang dibahas.</p><p>Direktur Eksekutif Center of Reform on Economics (Core) Indonesia Mohammad Faisal mengungkapkan bahwa calon urut 01 akan berjualan keberhasilan pembangunan infrastruktur dan stabilitas harga dengan inflasi relatif rendah selama tiga tahun belakangan.</p><p>\"Yang jelas dari petahana jualan penting pembangunan infrastruktur yang masif, lalu juga dari sisi stabilitas pangan dari inflasi yang relatif rendah itu jelas lebih rendah, itu akan menjadi strong point yang dijual,\" kata Faisal</p><p>Sedangkan dari pihak oposisi, Faisal menilai akan menawarkan konsep penanganan persoalan di sektor energi, pangan, lingkungan hidup, dan infrastruktur yang berbeda dari yang sudah ada sekarang ini.</p><p>Dia mencontohkan, pasangan nomor urut 02 Prabowo-Sandi akan menawarkan konsep pembangunan infrastruktur tanpa utang.</p><p>\"Yang jelas secara general, semua pemikirannya sama, kalau infrastruktur oposisi dari sisi pembiayaan, dengan tidak utang, pangan juga bagaimana harganya terjangkau,\" jelas dia.</p><p>\"Ini akan menjadi jualan, mengajukan program yang bisa menurunkan harga,\" ujar dia.</p><p>Source : Detik.com</p>', ''),
(9, 3, 2, 'The Way Sri Mulyani Boosts the Economy That Is Haunted by Uncertainty', '<p>Jakarta - Finance Minister Sri Mulyani Indrawati said that the Indonesian economy is still faced with global uncertainty originating from developed countries and Asian countries. This was revealed when he was a speaker at the Mandiri Investment Forum (MIF) 2018 at the Fairmont Hotel, Jakarta, Wednesday (1/30/2019).</p><p>In front of around 600 investors and 200 corporate customers of Bank Mandiri, the former World Bank Managing Director said that the weakening of the world economy was still caused by the financial crisis in Argentina and Turkey.</p><p>\"Even India, which is a champion, is also volatile. Indonesia is not an exception, but with policies between the government, the central bank, the OJK, we can manage 2018 relatively well,\" Sri Mulyani said.</p><p>Coordination between the government, Bank Indonesia (BI), and the OJK by making policy adjustments to deal with the rapidly changing world economic situation.</p><p>\"That\'s why we get good value. When viewed how they assess Indonesia\'s policy process, there is stronger economic growth,\" he explained.</p><p>Sri Mulyani said that global uncertainty in 2018 will continue into 2019. However, to go through this year, it must continue to utilize the momentum of the previous year.</p><p>\"Indonesia must remain resilient in maintaining momentum of stability and strengthening fundamentals,\" he said.</p><p>Source: Detik.com</p>', ''),
(10, 3, 3, 'Cara Sri Mulyani Genjot Ekonomi Ri Yang Dihantui Ketidakpastian', '<p>Jakarta - Menteri Keuangan Sri Mulyani Indrawati menyampaikan bahwa perekonomian Indonesia masih dihadapkan oleh ketidakpastian global yang berasal dari negara maju maupun negara-negara kawasan Asia. Hal itu diungkapkan saat menjadi pembicara di Mandiri Investment Forum (MIF) 2018 di Fairmont Hotel, Jakarta, Rabu (30/1/2019).</p><p>Di depan sekitar 600 investor dan 200 nasabah korporasi Bank Mandiri, Mantan Direktur Pelaksana Bank Dunia ini menyampaikan bahwa pelemahan ekonomi dunia masih disebabkan oleh krisis keuangan di Argentina dan Turki.</p><p>\"Bahkan India yang merupakan champion juga bergejolak. Indonesia bukan pengecualian, tapi dengan kebijakan antara pemerintah, sentral bank, OJK ,kita bisa me-manage 2018 yang relatif baik,\" kata Sri Mulyani.</p><p>Koordinasi antara pemerintah, Bank Indonesia (BI), dan OJK dengan melakukan penyesuaian kebijakan untuk menghadapi situasi ekonomi dunia yang cepat berubah.</p><p>\"Itu lah kenapa kita memperoleh nilai baik. Kalau dilihat bagaimana mereka menilai proses kebijakan Indonesia, ada pertumbuhan ekonomi lebih kuat,\" jelas dia.</p><p>Sri Mulyani bilang bawa ketidakpastian global di tahun 2018 akan melanjut ke tahun 2019. Namun, untuk melalui tahun ini harus tetap memanfaatkan momentum capaian di tahun sebelumnya.</p><p>\"Indonesia harus tetap tangguh dalam maintaining momentum stabilitas dan memperkuat fundamental,\" ungkap dia.</p><p>Source : Detik.com</p>', ''),
(11, 4, 2, 'Foreign Debt Ri Exceeds IDR 5,220 T, Bi: Safe', '<p>Indonesia\'s External Debt (ULN) for the end of November 2018 was recorded at US $ 372 billion, equivalent to Rp. 5,220 trillion (exchange rate of Rp. 14,000). Consisting of government and central bank debt of US $ 183.5 billion and private debt including state-owned enterprises of US $ 189.3 billion.</p><p>What is the real condition?</p><p>Executive Director / Head of the Department of Economic and Monetary Policy at Bank Indonesia, Aida Budiman, explained that currently BI has a comprehensive and consistent policy to ensure that external debt is safe and controlled.</p><p>\"Because the external debt is part of domestic financing sources. As told the current account is included in the financial account which is part of the flow of capital, now there is external debt,\" Aida said at a press conference at the BI Building, Jakarta, Thursday (24 / 1/2019).</p><p>He explained that currently BI or the party that is attracting debt always pays attention to the risks that might arise. This is because each debt withdrawal will be adjusted to economic conditions and needs.</p><p>\"The external debt needed in accordance with the economy is safe. At present it is almost half of the private sector and the public and there is also 80% of debt for the long term, so there is no short-term external debt,\" he explained.</p><p>On an annual basis, Indonesia\'s external debt at the end of November 2018 grew 7.0% (yoy), an increase compared to the previous month\'s growth of 5.3% (yoy). The increase in external debt growth came from both the growth of government external debt and private external debt.</p><p>Government external debt grew by November 2018. The position of government external debt at the end of November 2018 was US $ 180.5 billion or grew by 4.4% (yoy), an increase compared to the previous month\'s growth of 3.3% (yoy). The government\'s external debt position increased by US $ 5.1 billion compared to the position at the end of the previous month. This increase was mainly influenced by inflows of foreign investor funds in the domestic SBN market during November 2018.</p><p>Then for private external debt in November 2018 it has increased. The position of private external debt at the end of November 2018 grew 10.1% (yoy), an increase compared to the previous month which grew 7.7% (yoy). The position of private external debt at the end of November 2018 increased by US $ 7.1 billion from the position at the end of the previous month, mainly driven by net purchases of corporate bonds by foreign investors.</p><p>Most of the private external debt is owned by the financial and insurance services sector, manufacturing industry sector, electricity, gas, steam / hot water (LGA) procurement sector, and the mining and quarrying sector. The share of external debt in the four sectors to total private external debt reached 73.9%, slightly higher than the share in the previous month (72.9%).</p><p>The structure of Indonesia\'s external debt remains healthy. This is reflected, among others, from the ratio of Indonesia\'s external debt to gross domestic product (GDP) at the end of November 2018 which remained stable at around 34%. The ratio is still better than the peers\' country average. In addition, the structure of Indonesia\'s external debt remained dominated by long-term external debt which had a share of 84.8% of total external debt.</p><p>\"Bank Indonesia and the Government continue to coordinate to monitor the development of external debt and optimize its role in supporting development financing, without creating risks that can affect economic stability,\" he said.</p><p>Source: Detik.com</p>', ''),
(12, 4, 3, 'Utang Luar Negeri Ri Tembus Rp 5.220 T, Bi: Aman', '<p>Utang Luar Negeri (ULN) Indonesia periode akhir November 2018 tercatat US$ 372 miliar atau setara dengan Rp 5.220 triliun (kurs Rp 14.000). Terdiri dari utang pemerintah dan bank sentral sebesar US$ 183,5 miliar serta utang swasta termasuk BUMN sebesar US$ 189,3 miliar.</p><p>Bagaimana kondisi sebenarnya?</p><p>Direktur Eksekutif/Kepala Departemen Kebijakan Ekonomi dan Moneter Bank Indonesia, Aida Budiman menjelaskan saat ini BI memiliki kebijakan yang komprehensif dan konsisten untuk menjamin ULN itu aman dan terkendali.</p><p>\"Karena ULN itu adalah bagian dari sumber pembiayaan dalam negeri. Seperti diceritakan current account itu kan masuk dalam financial account yang merupakan bagian aliran modal, nah di situ masuk ULN,\" kata Aida dalam konferensi pers di Gedung BI, Jakarta, Kamis (24/1/2019).</p><p>Dia menjelaskan saat ini BI atau pihak yang menarik utang selalu memperhatikan risiko-risiko yang mungkin ditimbulkan. Ini karena setiap penarikan utang akan disesuaikan dengan kondisi ekonomi dan kebutuhan.</p><p>\"ULN yang diperlukan sesuai perekonomian itu aman. Saat ini kan hampir separuh swasta dan publik dan juga ada 80% utang untuk jangka panjang, jadi tidak ada ULN jangka pendek yang bisa cepat keluar,\" jelasnya.</p><p>Secara tahunan, ULN Indonesia pada akhir November 2018 tumbuh 7,0% (yoy), meningkat dibandingkan dengan pertumbuhan bulan sebelumnya yang sebesar 5,3% (yoy). Peningkatan pertumbuhan ULN tersebut bersumber baik dari pertumbuhan ULN pemerintah maupun ULN swasta.</p><p>ULN pemerintah tumbuh meningkat pada November 2018. Posisi ULN pemerintah pada akhir November 2018 sebesar US$ 180,5 miliar atau tumbuh 4,4% (yoy), meningkat dibandingkan dengan pertumbuhan bulan sebelumnya yang sebesar 3,3% (yoy). Posisi ULN pemerintah tersebut meningkat US$ 5,1 miliar dibandingkan dengan posisi pada akhir bulan sebelumnya. Peningkatan tersebut terutama dipengaruhi oleh arus masuk dana investor asing di pasar SBN domestik selama November 2018.</p><p>Kemudian untuk ULN swasta pada November 2018 mengalami peningkatan. Posisi ULN swasta pada akhir November 2018 tumbuh 10,1% (yoy), meningkat dibandingkan dengan bulan sebelumnya yang tumbuh 7,7% (yoy). Posisi ULN swasta pada akhir November 2018 tersebut bertambah US$ 7,1 miliar dari posisi pada akhir bulan sebelumnya, terutama didorong oleh neto pembelian surat utang korporasi oleh investor asing.</p><p>ULN swasta tersebut sebagian besar dimiliki oleh sektor jasa keuangan dan asuransi, sektor industri pengolahan, sektor pengadaan listrik, gas, uap/air panas (LGA), serta sektor pertambangan dan penggalian. Pangsa ULN di keempat sektor tersebut terhadap total ULN swasta mencapai 73,9%, sedikit lebih tinggi dibandingkan dengan pangsa pada bulan sebelumnya (72,9%).</p><p>Struktur ULN Indonesia tetap sehat. Hal ini tercermin antara lain dari rasio ULN Indonesia terhadap Produk Domestik Bruto (PDB) pada akhir November 2018 yang tetap stabil di kisaran 34%. Rasio tersebut masih lebih baik dibandingkan dengan rata-rata negara peers. Di samping itu, struktur ULN Indonesia tetap didominasi ULN berjangka panjang yang memiliki pangsa 84,8% dari total ULN.</p><p>\"Bank Indonesia dan Pemerintah terus berkoordinasi untuk memantau perkembangan ULN dan mengoptimalkan perannya dalam mendukung pembiayaan pembangunan, tanpa menimbulkan risiko yang dapat memengaruhi stabilitas perekonomian,\" ujarnya.</p><p>Source: Detik.com</p>', ''),
(13, 5, 2, 'BI Opens Opportunity to Cut Reference Rates', '<p>Jakarta - The global economic turmoil, such as a trade war until the normalization of the economy of the United States (US) has driven the era of high interest rates. The world central bank competes to raise the benchmark interest rate to attract foreign funds, the majority of which return to the US.</p><p>This condition affected Indonesia, and as a precautionary measure, Bank Indonesia (BI) has raised its benchmark interest rate by 175 basis points since the beginning of the year. Now BI 7 days reverse repo rate is at the level of 6%.</p><p>BI Governor Perry Warjiyo explained that the policy of tightening interest rates did not negatively affect domestic financial market conditions. According to him, the increase in the benchmark interest rate so far can still be balanced with a number of relaxation issued by BI.</p><p>\"When we raised interest rates, it was all predicted. The interest rate policy only affected the economy more or less after around 6-8 quarters. So we already know, when interest rates rise do not necessarily increase deposit or credit rates,\" said Perry in the discussion with the editor in chief of the media at the Bank Indonesia Building, Jakarta, Monday night (1/7/2019).</p><p>On the other hand, Perry did not deny that BI would relax the benchmark interest rate, especially after signs of softening US Government policies and the US Central Bank or The Federal Reserve.</p><p>\"Hopefully Trump\'s policy can be completed, the Fed Fund rate is not too high. If we see the signs that the Fed fund rate is already peak and inflation is low, there is certainly room to explore interest rate policies again,\" Perry said.</p><p>He added that BI would continue to carefully calculate the benchmark interest policy. Even the reduced interest rates will be balanced with a number of relaxation which makes credit still able to grow.</p><p>\"So this is time matter. Timing problems. While the interest rates have not affected, we give more sweet medicine so that the impact on credit is not too much. Credit growth is still 12-13% nationally,\" he said. (eds / hns)</p>', ''),
(14, 5, 3, 'BI Buka Peluang Pangkas Suku Bunga Acuan', '<p>Jakarta - Gejolak ekonomi global, seperti perang dagang hingga normalisasi perekonomian Amerika Serikat (AS) mendorong era suku bunga tinggi. Bank sentral dunia berlomba menaikkan suku bunga acuan untuk menarik dana asing yang mayoritas kembali ke AS.</p><p>Kondisi ini mempengaruhi Indonesia, dan sebagai langkah antisipasi, Bank Indonesia (BI) sudah menaikkan suku bunga acuan sebanyak 175 basis poin sejak awal tahun. Kini BI 7 days reverse repo rate berada di level 6%.</p><p>Gubernur BI Perry Warjiyo menjelaskan kebijakan pengetatan suku bunga tak berpengaruh negatif terhadap kondisi pasar keuangan dalam negeri. Menurutnya naiknya suku bunga acuan sejauh ini masih bisa diimbangi dengan sejumlah relaksasi yang dikeluarkan BI.</p><p>\"Waktu kami menaikkan suku bunga, itu semua sudah diperkirakan. Kebijakan suku bunga itu baru berdampak kepada ekonomi kurang lebih setelah sekitar 6-8 kuartal. Jadi kami sudah tahu, waktu suku bunga naik tidak serta merta suku bunga deposito atau kredit naik,\" ujar Perry dalam acara diskusi bersama pemimpin redaksi media di Gedung Bank Indonesia, Jakarta, Senin malam (7/1/2019).</p><p>Di sisi lain, Perry tak menampik BI akan melakukan relaksasi terhadap suku bunga acuan, terutama setelah adanya tanda-tanda melunaknya kebijakan Pemerintah AS dan Bank Sentral AS atau The Federal Reserve.</p><p>\"Moga-moga kebijakan Trump bisa selesai, Fed Fund rate tidak terlalu tinggi. Kalau kita lihat memang tanda-tandanya fed fund rate sudah peak dan inflasi rendah tentu ada room untuk menggali lagi kebijakan suku bunga,\" kata Perry.</p><p>Dia menambahkan BI akan terus memperhitungkan dengan matang mengenai kebijakan bunga acuan. Bunga acuan yang ditekanpun juga akan diimbangi dengan sejumlah relaksasi yang membuat kredit masih bisa tetap tumbuh.</p><p>\"Jadi ini time matter. Masalah timing. Mumpung suku bunganya belum berdampak, kami kasih obat manis yang lebih banyak supaya dampaknya ke kredit tidak terlalu. Pertumbuhan kredit masih 12-13% secara nasional,\" ujarnya. (eds/hns)</p>', ''),
(15, 6, 2, 'Rupiah And Ihsg Mighty This Day', '<p>Jakarta 29 November 2018 - The Composite Stock Price Index (CSPI) opens in the green zone. JCI rose at the opening of this morning and lasted until the afternoon break. This afternoon the JCI rose 87.936 points (1.47%) to 6,079.</p><p>While the exchange rate of the US dollar (US) against the rupiah is at the level of Rp. 14,330.</p><p>In the pre-opening trade, the JCI rose 39,493 points (0.66%) to 6,030,739. The LQ45 index rose 9.885 points (1.03%) to 964,019</p><p>Opening the trade on Thursday (11/29/2018), the JCI continued to strengthen 75,087 points (1.25%) to 6,066,333. The LQ45 index also rose 2.813 points (0.29%) to 963.508.</p><p>In trading at 09.05 JATS, the JCI was still at home in the green zone to 6,070,037 (1.32%). The LQ45 index also strengthened 17.546 points (1.84%) to 971,711.</p><p>pause this afternoon the JCI was still able to maintain its positive rate. JCI rose 87.936 points (1.47%) to 6,079,182 and the LQ45 Index rose 18.302 points (1.92%) to 972,467.</p><p>Strengthening the JCI was sustained by the increase of 10 sectoral shares at once. Construction sector shares rose the most significantly this afternoon by 2.41%. As many as 242 shams rose, 115 shares weakened and 124 shares stagnated.</p><p>This afternoon stock trading was monitored with a frequency of 299,068 transactions totaling 5.6 billion shares valued at Rp 5.2 trillion.</p><p>Meanwhile, the main Wall Street compact index closed in the green zone in trading yesterday Wednesday (28/11).</p><p>The Dow Jones index rose 2.50%, S & P gained 2.30%, and the Nasdaq rose 2.95%. Strengthening the index is in line with the release of US economic data that is in line with market participants\' estimates.</p><p>US GDP in the third quarter of 2018 was recorded at 3.5% in line with expectations, in addition to the Wholesale inventory data in October which grew 0.7% higher than the previous month showing an improvement at US demand. Besides the speech from Jerome Powell who impressed more dovish also became a positive sentiment for the movement of the index.</p><p>While the majority of Asian stock exchanges moved positively this afternoon. Following are the movements:</p><p>The Nikkei 225 index added 151,381 points to 22,338,400</p><p>The Hang Seng Index fell 23.320 points to 26,659,240</p><p>The Shanghai Composite Index increased 6.380 points to 2,601,740</p><p>The Straits Times Index rose 29,120 points to 3,123,790</p><p>Shares that were among the top gainers included Unilever Indonesia (UNVR) rose Rp. 1,700 to Rp. 42,200, Gudang Garam (GGRM) rose Rp. 1,575 to Rp. 83,975, Semen Indonesia (SMGR) rose Rp. 675 to Rp. 11,850 and United Tractors ( UNTR) rose Rp. 425 to Rp. 29,450.</p><p>Shares that were among the top gainers, including Pelat Timah Nusantara (NIKL) fell Rp 200 to Rp 3,930, Link Net (LINK) dropped Rp 150 to Rp 4,900, Bukaka (BUKK) dropped Rp 100 to Rp 1,800 and Bayu Buana ( BAYU) dropped Rp. 100 to Rp. 1,900. (dna / hns)</p><p>Source: Detik.com</p>', ''),
(16, 6, 3, 'Rupiah Dan Ihsg Perkasa Siang Ini', '<p>Jakarta 29 November 2018 - Indeks Harga Saham Gabungan (IHSG) dibuka di zona hijau. IHSG menguat pada pembukaan pagi ini dan bertahan hingga jeda siang. Siang ini IHSG naik 87,936 poin (1,47%) ke 6.079.</p><p>Sementara nilai tukar dolar Amerika Serikat (AS) terhadap rupiah berada di level Rp 14.330.</p><p>Pada perdagangan pre-opening, IHSG menguat 39,493 poin (0,66%) ke 6.030,739. Indeks LQ45 naik 9,854 poin (1,03%) ke 964,019</p><p>Membuka perdagangan, Kamis (29/11/2018), IHSG melanjutkan penguatan 75,087 poin (1,25%) ke 6.066,333. Indeks LQ45 juga naik 2,813 poin (0,29%) ke 963,508.</p><p>Pada perdagangan pukul 09.05 waktu JATS, IHSG masih betah di zona hijau ke 6.070,037 (1,32%). Indeks LQ45 juga masih menguat 17,546 poin (1,84%) ke 971,711.</p><p>jeda siang ini IHSG masih mampu mempertahankan laju positifnya. IHSG menguat 87,936 poin (1,47%) ke 6.079,182 dan Indeks LQ45 menguat 18,302 poin (1,92%) ke 972,467.</p><p>Penguatan IHSG ditopang naiknya 10 saham sektoral sekaligus. Saham sektor konstruksi menguat paling signifikan siang ini sebesar 2,41%. Sebanyak 242 sham menguat, 115 saham melemah dan 124 saham stagnan.</p><p>Perdagangan saham siang ini terpantau ramai dengan frekuensi 299.068 kali transaksi sebanyak 5,6 miliar lembar saham senilai Rp 5,2 triliun.</p><p>Sementara itu indeks utama bursa Wall Street kompak ditutup dalam zona hijau pada perdagangan kemarin Rabu (28/11).</p><p>Indeks Dow Jones naik 2,50%, S&P menguat 2,30%, dan Nasdaq terangkat 2,95%. Penguatan indeks sejalan dengan rilisnya data ekonomi AS yang sesuai dengan perkiraan pelaku pasar.</p><p>GDP AS kuartal III-2018 tercatat sebesar 3,5% sesuai dengan ekspektasi, selain itu data Wholesale inventories bulan Oktober yang tumbuh 0,7% lebih tinggi dibandingkan bulan sebelumnya menunjukkan adanya perbaikan atas permintaan AS. Selain itu adanya pidato dari Jerome Powell yang terkesan lebih dovish juga menjadi sentimen positif atas pergerakan indeks.</p><p>Sedangkan bursa saham Asia mayoritas bergerak positif siang ini. Berikut pergerakannya:</p><p>Indeks Nikkei 225 bertambah 151,381 poin ke 22.338,400</p><p>Indeks Hang Seng turun 23,320 poin ke 26.659,240</p><p>Indeks Komposit Shanghai bertambah 6,380 poin ke 2.601,740</p><p>Indeks Strait Times naik 29,120 poin ke 3.123,790</p><p>Saham-saham yang masuk jajaran top gainers di antaranya adalah Unilever Indonesia (UNVR) naik Rp 1.700 ke Rp 42.200, Gudang Garam (GGRM) naik Rp 1.575 ke Rp 83.975, Semen Indonesia (SMGR) naik Rp 675 ke Rp 11.850 dan United Tractors (UNTR) naik Rp 425 ke Rp 29.450.</p><p>Saham-saham yang masuk jajaran top gainers di antaranya adalah Pelat Timah Nusantara (NIKL) turun Rp 200 ke Rp 3.930, Link Net (LINK) turun Rp 150 ke Rp 4.900, Bukaka (BUKK) turun Rp 100 ke Rp 1.800 dan Bayu Buana (BAYU) turun Rp 100 ke Rp 1.900. (dna/hns)</p><p>Source :Detik.com</p>', ''),
(17, 7, 2, 'As Touch Dollar Rp. 14,500, said Sri Mulyani', '<p>Jakarta 29 November 2018 - The Composite Stock Price Index (CSPI) opens in the green zone. JCI rose at the opening of this morning and lasted until the afternoon break. This afternoon the JCI rose 87.936 points (1.47%) to 6,079.</p><p>While the exchange rate of the US dollar (US) against the rupiah is at the level of Rp. 14,330.</p><p>In the pre-opening trade, the JCI rose 39,493 points (0.66%) to 6,030,739. The LQ45 index rose 9.885 points (1.03%) to 964,019</p><p>Opening the trade on Thursday (11/29/2018), the JCI continued to strengthen 75,087 points (1.25%) to 6,066,333. The LQ45 index also rose 2.813 points (0.29%) to 963.508.</p><p>In trading at 09.05 JATS, the JCI was still at home in the green zone to 6,070,037 (1.32%). The LQ45 index also strengthened 17.546 points (1.84%) to 971,711.</p><p>pause this afternoon the JCI was still able to maintain its positive rate. JCI rose 87.936 points (1.47%) to 6,079,182 and the LQ45 Index rose 18.302 points (1.92%) to 972,467.</p><p>Strengthening the JCI was sustained by the increase of 10 sectoral shares at once. Construction sector shares rose the most significantly this afternoon by 2.41%. As many as 242 shams rose, 115 shares weakened and 124 shares stagnated.</p><p>This afternoon stock trading was monitored with a frequency of 299,068 transactions totaling 5.6 billion shares valued at Rp 5.2 trillion.</p><p>Meanwhile, the main Wall Street compact index closed in the green zone in trading yesterday Wednesday (28/11).</p><p>The Dow Jones index rose 2.50%, S & P gained 2.30%, and the Nasdaq rose 2.95%. Strengthening the index is in line with the release of US economic data that is in line with market participants\' estimates.</p><p>US GDP in the third quarter of 2018 was recorded at 3.5% in line with expectations, in addition to the Wholesale inventory data in October which grew 0.7% higher than the previous month showing an improvement at US demand. Besides the speech from Jerome Powell who impressed more dovish also became a positive sentiment for the movement of the index.</p><p>While the majority of Asian stock exchanges moved positively this afternoon. Following are the movements:</p><p>The Nikkei 225 index added 151,381 points to 22,338,400</p><p>The Hang Seng Index fell 23.320 points to 26,659,240</p><p>The Shanghai Composite Index increased 6.380 points to 2,601,740</p><p>The Straits Times Index rose 29,120 points to 3,123,790</p><p>Shares that were among the top gainers included Unilever Indonesia (UNVR) rose Rp. 1,700 to Rp. 42,200, Gudang Garam (GGRM) rose Rp. 1,575 to Rp. 83,975, Semen Indonesia (SMGR) rose Rp. 675 to Rp. 11,850 and United Tractors ( UNTR) rose Rp. 425 to Rp. 29,450.</p><p>Shares that were among the top gainers, including Pelat Timah Nusantara (NIKL) fell Rp 200 to Rp 3,930, Link Net (LINK) dropped Rp 150 to Rp 4,900, Bukaka (BUKK) dropped Rp 100 to Rp 1,800 and Bayu Buana ( BAYU) dropped Rp. 100 to Rp. 1,900. (dna / hns)</p><p>Source: Detik.com</p>', ''),
(18, 7, 3, 'Dolar As Sentuh Rp 14.500-an, Ini Kata Sri Mulyani', '<p>Jakarta 29 November 2018 - Indeks Harga Saham Gabungan (IHSG) dibuka di zona hijau. IHSG menguat pada pembukaan pagi ini dan bertahan hingga jeda siang. Siang ini IHSG naik 87,936 poin (1,47%) ke 6.079.</p><p>Sementara nilai tukar dolar Amerika Serikat (AS) terhadap rupiah berada di level Rp 14.330.</p><p>Pada perdagangan pre-opening, IHSG menguat 39,493 poin (0,66%) ke 6.030,739. Indeks LQ45 naik 9,854 poin (1,03%) ke 964,019</p><p>Membuka perdagangan, Kamis (29/11/2018), IHSG melanjutkan penguatan 75,087 poin (1,25%) ke 6.066,333. Indeks LQ45 juga naik 2,813 poin (0,29%) ke 963,508.</p><p>Pada perdagangan pukul 09.05 waktu JATS, IHSG masih betah di zona hijau ke 6.070,037 (1,32%). Indeks LQ45 juga masih menguat 17,546 poin (1,84%) ke 971,711.</p><p>jeda siang ini IHSG masih mampu mempertahankan laju positifnya. IHSG menguat 87,936 poin (1,47%) ke 6.079,182 dan Indeks LQ45 menguat 18,302 poin (1,92%) ke 972,467.</p><p>Penguatan IHSG ditopang naiknya 10 saham sektoral sekaligus. Saham sektor konstruksi menguat paling signifikan siang ini sebesar 2,41%. Sebanyak 242 sham menguat, 115 saham melemah dan 124 saham stagnan.</p><p>Perdagangan saham siang ini terpantau ramai dengan frekuensi 299.068 kali transaksi sebanyak 5,6 miliar lembar saham senilai Rp 5,2 triliun.</p><p>Sementara itu indeks utama bursa Wall Street kompak ditutup dalam zona hijau pada perdagangan kemarin Rabu (28/11).</p><p>Indeks Dow Jones naik 2,50%, S&P menguat 2,30%, dan Nasdaq terangkat 2,95%. Penguatan indeks sejalan dengan rilisnya data ekonomi AS yang sesuai dengan perkiraan pelaku pasar.</p><p>GDP AS kuartal III-2018 tercatat sebesar 3,5% sesuai dengan ekspektasi, selain itu data Wholesale inventories bulan Oktober yang tumbuh 0,7% lebih tinggi dibandingkan bulan sebelumnya menunjukkan adanya perbaikan atas permintaan AS. Selain itu adanya pidato dari Jerome Powell yang terkesan lebih dovish juga menjadi sentimen positif atas pergerakan indeks.</p><p>Sedangkan bursa saham Asia mayoritas bergerak positif siang ini. Berikut pergerakannya:</p><p>Indeks Nikkei 225 bertambah 151,381 poin ke 22.338,400</p><p>Indeks Hang Seng turun 23,320 poin ke 26.659,240</p><p>Indeks Komposit Shanghai bertambah 6,380 poin ke 2.601,740</p><p>Indeks Strait Times naik 29,120 poin ke 3.123,790</p><p>Saham-saham yang masuk jajaran top gainers di antaranya adalah Unilever Indonesia (UNVR) naik Rp 1.700 ke Rp 42.200, Gudang Garam (GGRM) naik Rp 1.575 ke Rp 83.975, Semen Indonesia (SMGR) naik Rp 675 ke Rp 11.850 dan United Tractors (UNTR) naik Rp 425 ke Rp 29.450.</p><p>Saham-saham yang masuk jajaran top gainers di antaranya adalah Pelat Timah Nusantara (NIKL) turun Rp 200 ke Rp 3.930, Link Net (LINK) turun Rp 150 ke Rp 4.900, Bukaka (BUKK) turun Rp 100 ke Rp 1.800 dan Bayu Buana (BAYU) turun Rp 100 ke Rp 1.900. (dna/hns)</p><p>Source :Detik.com</p>', ''),
(19, 8, 2, 'There is a Trans Java Toll Road, Investment Will Flow to Madiun to Blitar', '<p>Madiun - Bank Indonesia, the Kediri regional office gathered all the heads of regional heads in the Madiun residency. This is related to the operation of the Trans Java toll road along with the low MSE (Regency / City Minimum Wage) value in the western part of East Java.</p><p>\"For example, if the UMR in Surabaya is IDR 4 million. Then in Madiun IDR 2 million, of course investors will prefer in Madiun. This must be a concern,\" said Head of Bank Indonesia Representative of the Kediri region, Djoko Raharto, to reporters at Sun City Madiun on Friday (11/11/2018).</p><p>In addition to road infrastructure factors, said Djoko, another reason is the low wage of workers in the Madiun region compared to labor costs in Surabaya and surrounding areas. Therefore Djoko reminded regional heads to be more selective in accepting investors.</p><p>\"Currently there are several investors who want to bring their companies to Madiun. Construction of the Trans Java Toll Road infrastructure and double track railway infrastructure that passes through Madiun can indeed increase economic growth. It is estimated that Madiun will be flooded with investors after the two transportation access infrastructure is complete,\" he explained.</p><p>Djoko added that in anticipation of investors being left out, regional governments in the Madiun Raya region must be more selective in accepting investors. With the low UMK value, don\'t let all investors be easily accepted.</p><p>\"The number of investors will certainly have an impact on the environmental conditions in Madiun,\" he said.</p><p>Djoko conveyed that a suitable investment was developed in Madiun, an industry whose raw materials could be taken from Madiun. In addition to creating job vacancies, it also benefits the material provider community.</p><p>One company that will develop its capital in Madiun is a porang processing company. This porang factory is in the Caruban area. Later this factory will take raw materials in the form of porang in the area of Madiun and around.</p><p>The collection of regional heads at the Residency of Madiun and Kediri, for the Madiun Residency includes Madiun City and District, Ngawi, Magetan, Ponorogo and Pacitan. For the Kediri Residency, it covers Nganjuk Kediri City and District, Trenggalek and Tulungagung and Blitar.</p><p>The Bank Indonesia event at the Kediri Regional Office located at Sun City Madiun was packaged in a seminar on manufacturing and tourism investment in an effort to encourage the growth of manufacturing and tourism investment in the former Madiun and Kediri residencies after the construction of the Trans Java toll road and double track railway. The event was also attended by around 300 staff members both the Madiun and Kediri Residency. (hns / hns)</p><p>Source: Detik.com</p>', ''),
(20, 8, 3, 'Ada Tol Trans Jawa, Investasi Akan Mengalir Ke Madiun Hingga Blitar', '<p>Madiun - Bank Indonesia kantor wilayah Kediri mengumpulkan seluruh pimpinan kepala daerah di karesidenan Madiun. Hal ini terkait beroperasinya tol Trans Jawa seiring rendahnya nilai UMK (Upah Minimum Kabupaten/Kota) di wilayah Jawa Timur bagian barat.</p><p>\"Semisal kalau UMR di Surabaya Rp 4 juta. Kemudian di Madiun Rp 2 juta, tentu investor akan lebih memilih di Madiun. Ini harus menjadi perhatian,\" ujar Kepala Bank Indonesia Perwakilan wilayah Kediri, Djoko Raharto, kepada wartawan di Sun City Madiun, Jumat (2/11/2018).</p><p>Selain faktor infrastruktur jalan, kata Djoko, alasan lain yaitu masih rendahnya upah buruh di wilayah Madiun dibandingkan upah buruh di Surabaya dan sekitarnya. Oleh sebab itu Djoko mengingatkan kepala daerah untuk lebih selektif dalam menerima investor.</p><p>\"Saat ini ada beberapa investor yang hendak memboyong perusahaannya ke Madiun. Pembangunan infrastruktur ruas jalan Tol Trans Jawa dan double track railway yang melewati Madiun memang dapat meningkatkan pertumbuhan ekonomi. Diperkirakan Madiun akan kebanjiran investor setelah kedua infrastruktur akses transportasi itu selesai,\" terangnya.</p><p>Djoko menambahkan untuk mengantisipasi membeludaknya investor, pemerintah daerah di wilayah Madiun Raya harus lebih selektif dalam menerima investor. Dengan rendahnya nilai UMK tersebut jangan sampai seluruh investor diterima dengan mudah.</p><p>\"Kalau banyaknya investor tentu nantinya akan berdampak pada kondisi lingkungan di Madiun,\" tuturnya.</p><p>Djoko menyampaikan investasi yang cocok dikembangkan di Madiun yaitu industri yang bahan bakunya bisa diambil dari Madiun. Selain menciptakan lowongan pekerjaan juga memberi manfaat bagi masyarakat penyedia bahan.</p><p>Salah satu perusahaan yang bakal mengembangkan modalnya di Madiun yakni perusahaan pengolahan porang. Pabrik porang ini ada di wilayah Caruban. Nantinya pabrik ini akan mengambil bahan baku berupa porang di wilayah Madiun dan sekitar.</p><p>Pengumpulan kepala daerah di Karesidenan Madiun dan Kediri, untuk Karesidenan Madiun meliputi Madiun Kota dan Kabupaten, Ngawi, Magetan, Ponorogo serta Pacitan. Untuk Karesidenan Kediri meliputi Nganjuk Kediri Kota dan Kabupaten, Trenggalek serta Tulungagung dan Blitar.</p><p>Acara Bank Indonesia Kantor Wilayah Kediri bertempat di Sun City Madiun dikemas dalam Seminar investasi manufaktur dan pariwisata dalam upaya mendorong pertumbuhan investasi manufaktur dan pariwisata di eks Karesidenan Madiun dan Kediri pasca pembangunan tol Trans Jawa dan double track railway. Acara juga dihadiri oleh sekitar 300 jajaran pegawai baik Karesidenan Madiun dan Kediri. (hns/hns)</p><p>Source : Detik.com</p>', ''),
(21, 9, 2, 'Ri Economy Still Grows 5.17% Amid Trade Wars', '<p>Jakarta - Finance Minister Sri Mulyani Indrawati said Indonesia\'s economic growth as of the end of September 2018 reached 5.17%. Indonesia\'s economic growth managed to reach above 5% amid the trade wars of the United States (US) and China and geopolitical tensions in the Middle East.</p><p>\"From economic growth, normalization, trade war, and geopolitical tensions in the middle east. We believe that until the end of the year our economic growth will still have momentum from economic growth of 5.17% until the end of September,\" Sri Mulyani said at the State Budget press conference at the Ministry Finance, Central Jakarta, Wednesday (10/17/2018).</p><p>However, Gross Fixed Capital Formation (PMTB) was recorded to decline due to the increase in interest. International trade is still a matter for the government to watch out for.</p><p>\"PMTB is still declining due to an increase in interest, this international trade which causes the visible momentum of economic growth will continue to be vigilant,\" Sri Mulyani said.</p><p>The current year inflation rate is 2.9% and is still at a low level. The interest rate of the State Treasury (SPN) is also recorded at 4.8% or still in the 2018 state budget assumption of 5.2%.</p><p>\"We see this is still low, even the rate is on average 4.8%,\" Sri Mulyani said.</p><p>Source: detik.com</p>', ''),
(22, 9, 3, 'Ekonomi Ri Masih Tumbuh 5,17% Di Tengah Perang Dagang', '<p>Jakarta - Menteri Keuangan Sri Mulyani Indrawati menyebutkan pertumbuhan ekonomi Indonesia hingga akhir September 2018 mencapai 5,17%. Pertumbuhan ekonomi Indonesia berhasil mencapai di atas 5% di tengah perang dagang Amerika Serikat (AS) dan China serta ketegangan geopolitik di Timur Tengah.</p><p>\"Dari pertumbuhan ekonomi, normalisasi, trade war, dan ketegangan geopolitik di middle east. Kami yakini sampai akhir tahun pertumbuhan ekonomi kita masih ada momentum dari pertumbuhan ekonomi 5,17% sampai akhir September,\" kata Sri Mulyani dalam konferensi pers APBN KITA di Kementerian Keuangan, Jakarta Pusat, Rabu (17/10/2018).</p><p>Meski demikian, Pembentukan Modal Tetap Bruto (PMTB) tercatat menurun karena kenaikan bunga. Perdagangan internasional juga masih menjadi hal yang perlu diwaspadai pemerintah.</p><p>\"PMTB masih menurun karena adanya kenaikan bunga, perdagangannya internasional ini yang menyebabkan kelihatan momentum pertumbuhan ekonomi akan menjadi terus diwaspadai,\" ujar Sri Mulyani.</p><p>Tingkat inflasi tahun berjalan sebesar 2,9% dan masih dalam level yang rendah. Suku bunga Surat Perbendaharaan Negara (SPN) juga tercatat 4,8% atau masih di dalam asumsi APBN 2018 sebesar 5,2%.</p><p>\"Kita lihat ini masih rendah, bahkan demikian rate secara rata-rata 4,8%,\" tutur Sri Mulyani.</p><p>Source : detik.com</p>', ''),
(34, 10, 3, 'Rekening Diblokir atas Permintaan Kantor Pajak, Ini Penjelasannya', '<p>JAKARTA, KOMPAS.com - Siapa yang tak kaget saat mengetahui rekeningnya diblokir tiba-tiba oleh bank atas permintaan kantor pajak? Berapapun nilai uangnya, perasaan khawatir dan bingung pasti hinggap.</p><p>Sebenarnya, pemblokiran rekening atas permintaan kantor pajak bukanlah hal baru. Bahkan Direktorat Jenderal Pajak sudah bisa melakukan pemblokiran sejak 1997 silam.</p><p>\"Itu (pemblokiran) hal yang sudah rutin kami lakukan,\" ujar Direktur Pelayanan dan Penyuluhan (P2) Humas Ditjen Pajak Hestu Yoga Saksama kepada Kompas.com, Jakarta, Rabu (22/3/2017).</p><p>Ya, petugas pajak memiliki kewenangan untuk meminta bank memblokir rekening nasabahnya. Ketentuan itu tercantum dalam Undang-undang Nomor 19 Tahun 1997 tentang Penagihan Pajak dengan Surat Pajak.</p><p>Dalam aturan itu, Direktorat Jenderal Pajak memiliki kewenangan untuk melakukan penagihan aktif kepada wajib pajak yang memiliki tunggakan pajak dan sudah berkekuatan hukum tetap.</p><p>Penagihan aktif itu tutur Hestu, meliputi penyitaan dan pelelangan harta penanggung pajak, pencegahan penanggung pajak, dan penyanderaan (gijzeling). Termasuk dalam penyitaan harta wajib pajak itu adalah memblokir rekening wajib pajak di bank.</p><p>\"Jadi kantor pajak bisa meminta bank untuk memblokir rekening wajib pajak yang menunggak pajak,\" kata Hestu. \"(Setiap permintaan pemblokiran) pasti sesuai dengan ketentuan, dan itu hal yang sudah rutin kami lakukan,\" sambungnya.</p><p>Source : Kompas.com</p>', ''),
(33, 10, 2, 'Account Blocked at the Request of the Tax Office, Here Is the Explanation', '<p>JAKARTA, KOMPAS.com - Who is not surprised to find out that his account was suddenly blocked by the bank at the request of the tax office? Regardless of the value of the money, the feeling of worry and confusion must be settled.</p><p>Actually, blocking accounts at the request of the tax office is not new. Even the Directorate General of Taxation has been able to block it since 1997.</p><p>\"That (blocking) things we have routinely done,\" said Director of Service and Counseling (P2) Public Relations of the Directorate General of Taxes Hestu Yoga Saksama to Kompas.com, Jakarta, Wednesday (03/22/2017).</p><p>Yes, the tax officer has the authority to ask the bank to block the customer\'s account. These provisions are stated in Law Number 19 of 1997 concerning Tax Collection with a Tax Letter.</p><p>In the regulation, the Directorate General of Taxes has the authority to actively collect taxpayers who have tax arrears and have permanent legal powers.</p><p>Active billing is said by Hestu, which includes confiscation and auction of the assets of the taxpayer, prevention of tax payers, and gijzeling. Included in the confiscation of the taxpayer\'s property is to block the taxpayer\'s account at the bank.</p><p>\"So the tax office can ask banks to block taxpayer taxpayers\' accounts,\" Hestu said. \"(Each blocking request) must be in accordance with the provisions, and that is something we have routinely done,\" he continued.</p><p>Source: Kompas.com</p>', ''),
(25, 11, 2, 'Sri Mulyani to Investors: RI Economy Does Not Join Global Weakening Flow', '<p>Jakarta - Indonesia\'s economic growth in the last 10 years is quite high. When the global economy experiences uncertainty over the same period, Indonesia\'s economic growth can actually remain high, at 5.6%.</p><p>This is inseparable from the role of a very large population of Indonesia that is able to sustain sources of growth from within the country. This was stated by Minister of Finance Sri Mulyani in her presentation at the 2017 Investor Gathering at Borobudur Hotel, Jakarta, Monday (3/27/2017).</p><p>\"This is something very positive. When the global environment is not good, we are able to grow with a fairly high population size, so we are able to maintain the source of economic growth from domestic, namely from consumption,\" he said.</p><p>\"Then there is investment and at certain times government spending as a cushion or counter a weakening cycle of economic growth. And so that domestic demand is maintained, the government continues to maintain consumption from various aspects and investments, namely ease of doing business,\" he added .</p><p>However, continued Sri Mulyani, the result of the high economic growth had made the Indonesian economy better, and encouraged many people to move from village to city or urbanization. This also becomes a challenge.</p><p>The growth of Indonesia\'s urban population grew to 4.1%. Even China, whose economic growth for 30 years has increased very high, has also been accompanied by urbanization with a population that grew by 3.8%. India, its economy is now above 6%, urban population growth reaches 3.1%.</p><p>\"The current number of Indonesia\'s urban population is 52% and is expected to increase by 68%,\" he said. (mkj / mkj)</p><p>Source: Seconds of finance</p>', ''),
(26, 11, 3, 'Sri Mulyani ke Investor: Ekonomi RI Tak Ikut Arus Pelemahan Global', '<p>Jakarta - Pertumbuhan ekonomi Indonesia dalam 10 tahun terakhir cukup tinggi. Di saat ekonomi global mengalami ketidakpastian dalam kurun waktu yang sama, pertumbuhan ekonomi Indonesia justru bisa tetap tinggi, sebesar 5,6%.</p><p>Hal ini tidak terlepas dari peranan populasi penduduk Indonesia yang sangat besar sehingga mampu menopang sumber pertumbuhan dari dalam negeri. Demikian yang disampaikan oleh Menteri Keuangan Sri Mulyani dalam paparannya pada acara Investor Gathering 2017 di Hotel Borobudur, Jakarta, Senin (27/3/2017).</p><p>\"Ini adalah sesuatu yang sangat positif. Pada saat global environment tidak bagus, kita mampu tumbuh dengan population size yang cukup tinggi, maka kita mampu menjaga sumber pertumbuhan ekonomi dari domestik, yaitu dari konsumsi,\" katanya.</p><p>\"Lalu juga ada investasi dan pada waktu-waktu tertentu government spending sebagai bantalan atau meng-counter suatu siklus pertumbuhan ekonomi yang melemah. Dan agar domestic demand terus terjaga, pemerintah terus menjaga konsumsi dari berbagai aspek dan investasi yaitu ease of doing business,\" tambahnya.</p><p>Namun demikian, lanjut Sri Mulyani, akibat dari pertumbuhan ekonomi yang cukup tinggi tadi, membuat masyarakat Indonesia menjadi lebih baik kondisi ekonominya, dan mendorong banyaknya masyarakat yang pindah dari desa ke kota atau urbanisasi. Hal ini pun menjadi tantangan.</p><p>Pertumbuhan populasi perkotaan Indonesia tumbuh hingga 4,1%. Bahkan China, yang pertumbuhan ekonominya selama 30 tahun meningkat sangat tinggi juga diiringi urbanisasi dengan populasi yang tumbuh sebesar 3,8%. India, ekonominya sekarang di atas 6%, pertumbuhan populasi urban mencapai 3,1%.</p><p>\"Jumlah populasi urban Indonesia saat ini adalah 52% dan diperkirakan akan meningkat 68%,\" tandasnya. (mkj/mkj)</p><p>Source : Detik finance</p>', ''),
(27, 12, 2, 'Up 16 Points, JCI is Closer to 5,700', '<p>Jakarta - The Composite Stock Price Index (CSPI) is approaching the 5,700 level after rising 16 points this morning. Foreign funds continue to flow into the trading floor.</p><p>While the rupiah exchange rate against the US dollar (US) this morning was stagnant. The US dollar is in the position of Rp 13,328 compared to the position yesterday afternoon Rp 13,327.</p><p>In the preopening trade, the JCI rose 16,179 points (0.29%) to the level of 5,668.002. While the LQ45 Index rose 4.063 points (0.43%) to the level of 944,928.</p><p>Starting the trade on Wednesday (5/4/2017), the JCI opened up 15,850 points (0.28%) to the level of 5,667,673. The LQ45 index opened up 3.493 points (0.37%) to the level of 944.358.</p><p>Buying takes place in almost all sectors. Only the consumer sector was hit by profits after yesterday its shares rose quite high.</p><p>Until 09:05 JATS time, the JCI climbed 16.459 points (0.29%) to the level of 5,668,282. While the LQ45 index rose 2.683 points (0.29%) to the level of 943.548.</p><p>Yesterday the CSPI showed strength nearing the 5,700 level. Closing the trade, the JCI was parked at 5,651, after touching the highest level throughout the trade at 5,654.</p><p>Asian bourses are compactly higher this morning. The positive global stock market gives a boost in buying action in regional investors.</p><p>Here\'s the situation on the regional exchange this morning:</p><p>The Nikartu index credited 225 rose 55.21 points (0.29%) to the level of 18,865.46.</p><p>The Hang Seng Index rose 81.69 points (0.34%) to the level of 24,343.17.</p><p>The Shanghai Composite Index increased 17.40 points (0.54%) to 3,239.91.</p><p>The Straits Times Index edged up 2.28 points (0.07%) to 3,181.34.</p><p>Source: Detik Finance</p>', '');
INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(28, 12, 3, 'Naik 16 Poin, IHSG Semakin Dekat 5.700', '<p>Jakarta - Indeks Harga Saham Gabungan (IHSG) semakin mendekati level 5.700 setelah naik 16 poin pagi ini. Dana asing terus mengalir masuk lantai bursa.</p><p>Sementara nilai tukar rupiah terhadap dolar Amerika Serikat (AS) pagi ini stagnan. Dolar AS berada di posisi Rp 13.328 dibandingkan posisi pada kemarin sore Rp 13.327.</p><p>Pada perdagangan preopening, IHSG naik 16,179 poin (0,29%) ke level 5.668,002. Sedangkan Indeks LQ45 menguat 4,063 poin (0,43%) ke level 944,928.</p><p>Mengawali perdagangan, Rabu (5/4/2017), IHSG dibuka bertambah 15,850 poin (0,28%) ke level 5.667,673. Indeks LQ45 dibuka melaju 3,493 poin (0,37%) ke level 944,358.</p><p>Aksi beli terjadi hampir di semua sektor. Hanya sektor konsumer yang terkena aksi ambil untung setelah kemarin saham-sahamnya naik cukup tinggi.</p><p>Hingga pukul 09.05 waktu JATS, IHSG menanjak 16,459 poin (0,29%) ke level 5.668,282. Sementara Indeks LQ45 menguat 2,683 poin (0,29%) ke level 943,548.</p><p>Kemarin IHSG menunjukkan keperkasaan mendekati level 5.700. Menutup perdagangan, IHSG parkir di 5.651, setelah menyentuh level tertinggi sepanjang perdagangan di posisi 5.654.</p><p>Bursa-bursa Asia kompak menguat pagi hari ini. Positifnya pasar saham global memberi dorongan aksi beli di investor regional.</p><p>Berikut situasi di bursa regional pagi hari ini:</p><p>Indeks Nikartu kreditei 225 naik 55,21 poin (0,29%) ke level 18.865,46.</p><p>Indeks Hang Seng menguat 81,69 poin (0,34%) ke level 24.343,17.</p><p>Indeks Komposit Shanghai bertambah 17,40 poin (0,54%) ke level 3.239,91.</p><p>Indeks Straits Times naik tipis 2,28 poin (0,07%) ke level 3.181,34.</p><p>Source : Detik Finance</p>', ''),
(29, 13, 2, 'RI Tax Payment in 3 Months Reaches IDR 222 T, Grows 18.1%', '<p>Belitung - Directorate General of Tax (Directorate General of Tax) of the Ministry of Finance ensured that tax revenues up to the first quarter of 2017 grew by 18.13% compared to the same period the previous year.</p><p>Director of Potential, Compliance and Tax Receipts, Yon Arsal said, tax revenues up to March 2017 amounted to Rp 222,268 trillion.</p><p>\"List of Tax Revenues, up to March 2017 grew by 18.13%, if the same period last year was -7%,\" Yon said during the Media Gathering of the Directorate General of Taxes in Tanjung Pandan, Belitung, Monday (04/17/2017).</p><p>He explained, tax revenues in the first 3 months of the non-oil and gas PPh sector reached Rp 122.518 trillion or grew by 14.93 compared to the same period the previous year. Whereas VAT and PPnBM amounted to Rp 85.744 trillion or grew 17.50% compared to the previous period which only amounted to Rp 72.975 trillion.</p><p>For the United Nations, said Yon Arsal, it reached Rp 530.16 billion or grew by 15.88 percent compared to the previous year which only amounted to Rp 457.49 billion. Other taxes also increased to Rp. 1.652 trillion from the previous year of Rp. 1.509 trillion.</p><p>Meanwhile, oil and gas PPh, said Yon, experienced significant growth with 78.86% to Rp. 11.823 trillion. In total, the non-PPH oil and gas tax revenue per first quarter reached Rp 210.445 trillion or grew by 15.92%.</p><p>\"The total oil and gas non-tax PPh is 15.92%, last year was -5%, the signal was positive, almost all taxes, income tax grew and today\'s revenue data is still moving, if all taxes show a positive trend, interesting to study, even small , \"he said. (mkj / mkj)</p><p>Source: Detik Finance</p>', ''),
(30, 13, 3, 'Setoran Pajak RI Dalam 3 Bulan Capai Rp 222 T, Tumbuh 18,1%', '<p>Belitung - Direktorat Jenderal Pajak (Ditjen Pajak) Kementerian Keuangan memastikan, penerimaan pajak hingga kuartal pertama 2017 tumbuh 18,13% jika dibandingkan periode yang sama ditahun sebelumnya.</p><p>Direktur Potensi, Kepatuhan dan Penerimaan Pajak, Yon Arsal mengatakan, penerimaan pajak sampai Maret 2017 sebesar Rp 222,268 triliun.</p><p>\"Daftar Penerimaan Pajak, sampai dengan Maret 2017 tumbuh 18,13%, kalau periode yang sama tahun lalu -7%,\" kata Yon saat acara Media Gathering Ditjen Pajak di Tanjung Pandan, Belitung, Senin (17/4/2017).</p><p>Dia merinci, penerimaan pajak pada 3 bulan pertama dari sektor PPh non migas mencapai Rp 122,518 triliun atau tumbuh 14,93 dibandingkan periode yang sama ditahun sebelumnya. Sedangkan PPN dan PPnBM sebesar Rp 85,744 triliun atau tumbuh 17,50% jika dibandingkan periode yang sebelumnya yang hanya sebesar Rp 72,975 triliun.</p><p>Untuk PBB, kata Yon Arsal mencapai Rp 530,16 miliar atau tumbuh 15,88% jika dibandingkan tahun sebelumnya yang hanya sebesar Rp 457,49 miliar. Untuk pajak yang lainnya juga sama mengalami kenaikkan menjadi Rp 1,652 triliun dari tahun sebelumnya sebesar Rp 1,509 triliun.</p><p>Sedangkan untuk PPh migas, kata Yon, mengalami pertumbuhan cukup signifikan dengan 78,86% menjadi Rp 11,823 triliun. Jika ditotal, maka penerimaan pajak Non PPH migas per kuartal pertama mencapai Rp 210,445 triliun atau tumbuh 15,92%.</p><p>\"Non PPh migas total 15,92%, tahun kemarin itu -5%, sinyalnya positif, nyaris di semua pajak, PPh tumbuh dan data penerimaan hari ini masih bergerak, kalau jenis pajak semua menunjukkan tren positif, menarik untuk dikaji, walau nominal kecil,\" tukasnya. (mkj/mkj)</p><p>Source : Detik Finance</p>', ''),
(31, 14, 2, 'Sri Mulyani to Investors: RI Economy Does Not Join Global Weakening Flow', '<p>Jakarta - Indonesia\'s economic growth in the last 10 years is quite high. When the global economy experiences uncertainty over the same period, Indonesia\'s economic growth can actually remain high, at 5.6%.</p><p>This is inseparable from the role of a very large population of Indonesia that is able to sustain sources of growth from within the country. This was stated by Minister of Finance Sri Mulyani in her presentation at the 2017 Investor Gathering at Borobudur Hotel, Jakarta, Monday (3/27/2017).</p><p>\"This is something very positive. When the global environment is not good, we are able to grow with a fairly high population size, so we are able to maintain the source of economic growth from domestic, namely from consumption,\" he said.</p><p>\"Then there is investment and at certain times government spending as a cushion or counter a weakening cycle of economic growth. And so that domestic demand is maintained, the government continues to maintain consumption from various aspects and investments, namely ease of doing business,\" he added .</p><p>However, continued Sri Mulyani, the result of the high economic growth had made the Indonesian economy better, and encouraged many people to move from village to city or urbanization. This also becomes a challenge.</p><p>The growth of Indonesia\'s urban population grew to 4.1%. Even China, whose economic growth for 30 years has increased very high, has also been accompanied by urbanization with a population that grew by 3.8%. India, its economy is now above 6%, urban population growth reaches 3.1%.</p><p>\"The current number of Indonesia\'s urban population is 52% and is expected to increase by 68%,\" he said. (mkj / mkj)</p><p>Source: Seconds of finance</p>', ''),
(32, 14, 3, 'Sri Mulyani ke Investor: Ekonomi RI Tak Ikut Arus Pelemahan Global', '<p>Jakarta - Pertumbuhan ekonomi Indonesia dalam 10 tahun terakhir cukup tinggi. Di saat ekonomi global mengalami ketidakpastian dalam kurun waktu yang sama, pertumbuhan ekonomi Indonesia justru bisa tetap tinggi, sebesar 5,6%.</p><p>Hal ini tidak terlepas dari peranan populasi penduduk Indonesia yang sangat besar sehingga mampu menopang sumber pertumbuhan dari dalam negeri. Demikian yang disampaikan oleh Menteri Keuangan Sri Mulyani dalam paparannya pada acara Investor Gathering 2017 di Hotel Borobudur, Jakarta, Senin (27/3/2017).</p><p>\"Ini adalah sesuatu yang sangat positif. Pada saat global environment tidak bagus, kita mampu tumbuh dengan population size yang cukup tinggi, maka kita mampu menjaga sumber pertumbuhan ekonomi dari domestik, yaitu dari konsumsi,\" katanya.</p><p>\"Lalu juga ada investasi dan pada waktu-waktu tertentu government spending sebagai bantalan atau meng-counter suatu siklus pertumbuhan ekonomi yang melemah. Dan agar domestic demand terus terjaga, pemerintah terus menjaga konsumsi dari berbagai aspek dan investasi yaitu ease of doing business,\" tambahnya.</p><p>Namun demikian, lanjut Sri Mulyani, akibat dari pertumbuhan ekonomi yang cukup tinggi tadi, membuat masyarakat Indonesia menjadi lebih baik kondisi ekonominya, dan mendorong banyaknya masyarakat yang pindah dari desa ke kota atau urbanisasi. Hal ini pun menjadi tantangan.</p><p>Pertumbuhan populasi perkotaan Indonesia tumbuh hingga 4,1%. Bahkan China, yang pertumbuhan ekonominya selama 30 tahun meningkat sangat tinggi juga diiringi urbanisasi dengan populasi yang tumbuh sebesar 3,8%. India, ekonominya sekarang di atas 6%, pertumbuhan populasi urban mencapai 3,1%.</p><p>\"Jumlah populasi urban Indonesia saat ini adalah 52% dan diperkirakan akan meningkat 68%,\" tandasnya. (mkj/mkj)</p><p>Source : Detik finance</p>', ''),
(37, 16, 2, 'adsfasdf', '<p>asdfadsfdfas</p>', ''),
(38, 16, 3, 'asdfasfa', '<p>asdfafasfasdf</p>', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_faq`
--

CREATE TABLE `pg_faq` (
  `id` int(20) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_faq_description`
--

CREATE TABLE `pg_faq_description` (
  `id` int(11) NOT NULL,
  `faq_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_list_bank`
--

CREATE TABLE `pg_list_bank` (
  `id` int(50) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `label` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_pages`
--

CREATE TABLE `pg_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_pages`
--

INSERT INTO `pg_pages` (`id`, `name`, `type`, `group`) VALUES
(1, 'testimonial', 0, 'testimonial'),
(2, 'articles', 0, 'blog'),
(3, 'about', 0, 'static'),
(4, 'contact', 0, 'static'),
(5, 'faq', 0, 'faq'),
(6, 'how_to_shop', 0, 'static'),
(7, 'payment_confirmation', 0, 'static'),
(8, 'bank', 0, 'bank');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_pages_description`
--

CREATE TABLE `pg_pages_description` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `content` longtext NOT NULL,
  `meta_title` varchar(225) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_pages_description`
--

INSERT INTO `pg_pages_description` (`id`, `page_id`, `language_id`, `page_name`, `content`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 4, 1, 'Kontak Kami', '<p>\r\n  Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n    CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Kontak Kami', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(12, 4, 2, 'Contact', '<p>\r\n  Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n    CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Contact', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(13, 6, 1, 'How To Shop', '<p>\r\n  Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n     CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(14, 6, 2, 'How To Shop', '<p>\r\n  Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n     CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(15, 7, 1, 'Konfirmasi Pembayaran', '<p>\r\n       Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n     CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Konfirmasi Pembayaran', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(16, 7, 2, 'Payment Confirmation', '<p>\r\n      Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n     CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(17, 3, 2, 'About', '<p>\r\n       Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; About\r\n</p>\r\n<p>\r\n    CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa lain di website anda di admin panel -&gt; General Setting -&gt; Language(Bahasa)\r\n</p>', 'About', 'edit di admin panel -> Pages -> About', 'edit di admin panel -> Pages -> About');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_testimonial`
--

CREATE TABLE `pg_testimonial` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `testimonial` longtext NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_testimonial_description`
--

CREATE TABLE `pg_testimonial_description` (
  `id` int(11) NOT NULL,
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_type_letak`
--

CREATE TABLE `pg_type_letak` (
  `id` int(11) NOT NULL,
  `letak` varchar(225) NOT NULL,
  `page_id` int(11) NOT NULL,
  `tampil` int(11) NOT NULL,
  `sort` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_brand`
--

CREATE TABLE `prd_brand` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_brand_description`
--

CREATE TABLE `prd_brand_description` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category`
--

CREATE TABLE `prd_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_category`
--

INSERT INTO `prd_category` (`id`, `parent_id`, `sort`, `image`, `image2`, `image3`, `type`, `data`) VALUES
(1, 0, 1, '', '', '', 'reportcat', ''),
(2, 0, 2, '', '', '', 'reportcat', ''),
(3, 0, 3, '', '', '', 'reportcat', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category_description`
--

CREATE TABLE `prd_category_description` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_category_description`
--

INSERT INTO `prd_category_description` (`id`, `category_id`, `language_id`, `name`, `desc`, `data`) VALUES
(1, 1, 2, 'Annual Financial Reports', '', ''),
(2, 1, 3, 'Laporan Keuangan Tahunan', '', ''),
(3, 2, 2, 'Financial Highlights', '', ''),
(4, 2, 3, 'Ikhtisar Keuangan', '', ''),
(5, 3, 2, 'Factsheets', '', ''),
(6, 3, 3, 'Lembar fakta', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category_product`
--

CREATE TABLE `prd_category_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product`
--

CREATE TABLE `prd_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `harga` decimal(11,2) NOT NULL,
  `harga_coret` decimal(11,2) NOT NULL,
  `harga_retail` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `terbaru` int(11) NOT NULL,
  `terlaris` int(11) NOT NULL,
  `out_stock` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `data` text NOT NULL,
  `tag` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_attributes`
--

CREATE TABLE `prd_product_attributes` (
  `id` int(11) NOT NULL,
  `id_str` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_color`
--

CREATE TABLE `prd_product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_color` varchar(200) NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_description`
--

CREATE TABLE `prd_product_description` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_key` text NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_image`
--

CREATE TABLE `prd_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sertifikasi`
--

CREATE TABLE `sertifikasi` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `images_icon` varchar(225) NOT NULL,
  `images_big` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `hide` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `dual_language` enum('n','y') NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `name`, `label`, `value`, `type`, `hide`, `group`, `dual_language`, `sort`) VALUES
(1, 'default_meta_title', 'Title', '', 'text', 0, 'default_meta', 'y', 1),
(2, 'default_meta_keywords', 'Keywords', '', 'textarea', 0, 'default_meta', 'y', 2),
(3, 'default_meta_description', 'Description', '', 'textarea', 0, 'default_meta', 'y', 3),
(4, 'google_tools_webmaster', 'Google Webmaster Code', '', 'textarea', 0, 'google_tools', 'n', 4),
(5, 'google_tools_analytic', 'Google Analytic Code', '', 'textarea', 0, 'google_tools', 'n', 5),
(6, 'purechat_status', 'Show Hide Widget', '', 'select', 0, 'purechat', 'n', 1),
(7, 'purechat_code', 'PureChat Code', '', 'textarea', 0, 'purechat', 'n', 1),
(8, 'invoice_start_number', 'Invoice Start Number', '1000', 'text', 0, 'invoice', 'n', 0),
(9, 'invoice_increment', 'Invoice Increment', '5', 'text', 0, 'invoice', 'n', 0),
(10, 'invoice_auto_cancel_after', 'Invoice Auto Cancel After', '72', 'text', 0, 'invoice', 'n', 0),
(11, 'lang_deff', 'Language Default', 'en', 'text', 0, 'data', 'n', 0),
(12, 'email', 'Email Form', 'info@pjuc.co.id', 'text', 0, 'data', 'n', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_description`
--

CREATE TABLE `setting_description` (
  `id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_description`
--

INSERT INTO `setting_description` (`id`, `setting_id`, `language_id`, `value`) VALUES
(1, 1, 2, 'Petrogas - Jatim Utama Cendana'),
(2, 1, 3, 'Petrogas - Jatim Utama Cendana'),
(3, 3, 2, 'Petrogas - Jatim Utama Cendana'),
(4, 3, 3, 'Petrogas - Jatim Utama Cendana'),
(5, 2, 2, 'Petrogas - Jatim Utama Cendana'),
(6, 2, 3, 'Petrogas - Jatim Utama Cendana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shp_shipping_price`
--

CREATE TABLE `shp_shipping_price` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sl_slide`
--

CREATE TABLE `sl_slide` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `image2` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sl_slide`
--

INSERT INTO `sl_slide` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `sort`, `image2`) VALUES
(1, 0, '1bc5c-fcs-corpus-02.jpg', 1, '0000-00-00 00:00:00', '2019-06-12 13:38:11', 'info@markdesign.net', 'info@markdesign.net', '', 1, '7c84a-fcs-corpus-01_mob.jpg'),
(2, 0, '22a8f-fcs-corpus-03.jpg', 1, '2019-06-12 14:55:17', '2019-06-12 14:55:17', 'info@markdesign.net', 'info@markdesign.net', '', 2, NULL),
(3, 0, '56ab9-fcs-corpus-04.jpg', 1, '2019-06-12 14:57:22', '2019-06-12 14:57:22', 'info@markdesign.net', 'info@markdesign.net', '', 3, NULL),
(4, 0, '930ac-fcs-corpus-05.jpg', 1, '2019-06-12 14:57:39', '2019-06-12 14:57:39', 'info@markdesign.net', 'info@markdesign.net', '', 4, NULL),
(5, 0, '6dc88-fcs-corpus-06.jpg', 1, '2019-06-12 14:57:54', '2019-06-12 14:57:54', 'info@markdesign.net', 'info@markdesign.net', '', 5, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sl_slide_description`
--

CREATE TABLE `sl_slide_description` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `url_teks` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sl_slide_description`
--

INSERT INTO `sl_slide_description` (`id`, `slide_id`, `language_id`, `title`, `subtitle`, `content`, `url_teks`, `url`) VALUES
(4, 1, 3, 'fcs 1', '', '', '', ''),
(3, 1, 2, 'fcs 1', '', '', '', ''),
(5, 2, 2, 'fcs 2', '', '', '', ''),
(6, 2, 3, 'fcs 2', '', '', '', ''),
(7, 3, 2, 'fcs 3', '', '', '', ''),
(8, 3, 3, 'fcs 3', '', '', '', ''),
(9, 4, 2, 'fcs 4', '', '', '', ''),
(10, 4, 3, 'fcs 4', '', '', '', ''),
(11, 5, 2, 'fcs 5', '', '', '', ''),
(12, 5, 3, 'fcs 5', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_group`
--

CREATE TABLE `tb_group` (
  `id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL,
  `akses` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_group`
--

INSERT INTO `tb_group` (`id`, `group`, `aktif`, `akses`) VALUES
(8, 'Administrator', 1, 0x613a33373a7b693a303b733a31363a2261646d696e2e757365722e696e646578223b693a313b733a31373a2261646d696e2e757365722e637265617465223b693a323b733a31373a2261646d696e2e757365722e757064617465223b693a333b733a31373a2261646d696e2e757365722e64656c657465223b693a343b733a31373a2261646d696e2e736c6964652e696e646578223b693a353b733a31383a2261646d696e2e736c6964652e637265617465223b693a363b733a31383a2261646d696e2e736c6964652e757064617465223b693a373b733a31383a2261646d696e2e736c6964652e64656c657465223b693a383b733a31363a2261646d696e2e62616e6b2e696e646578223b693a393b733a31373a2261646d696e2e62616e6b2e637265617465223b693a31303b733a31373a2261646d696e2e62616e6b2e757064617465223b693a31313b733a31373a2261646d696e2e62616e6b2e64656c657465223b693a31323b733a31393a2261646d696e2e73657474696e672e696e646578223b693a31333b733a31383a2261646d696e2e6d656d6265722e696e646578223b693a31343b733a31393a2261646d696e2e6d656d6265722e637265617465223b693a31353b733a31393a2261646d696e2e6d656d6265722e757064617465223b693a31363b733a31393a2261646d696e2e6d656d6265722e64656c657465223b693a31373b733a31373a2261646d696e2e6f726465722e696e646578223b693a31383b733a31383a2261646d696e2e6f726465722e637265617465223b693a31393b733a31383a2261646d696e2e6f726465722e757064617465223b693a32303b733a31383a2261646d696e2e6f726465722e64656c657465223b693a32313b733a31373a2261646d696e2e6f726465722e7072696e74223b693a32323b733a32313a2261646d696e2e73657474696e672e636f6e74616374223b693a32333b733a31393a2261646d696e2e73657474696e672e61626f7574223b693a32343b733a32303a2261646d696e2e63617465676f72792e696e646578223b693a32353b733a32313a2261646d696e2e63617465676f72792e637265617465223b693a32363b733a32313a2261646d696e2e63617465676f72792e757064617465223b693a32373b733a32313a2261646d696e2e63617465676f72792e64656c657465223b693a32383b733a31393a2261646d696e2e73657474696e672e686f77746f223b693a32393b733a31393a2261646d696e2e70726f647563742e696e646578223b693a33303b733a32303a2261646d696e2e70726f647563742e637265617465223b693a33313b733a32303a2261646d696e2e70726f647563742e757064617465223b693a33323b733a32303a2261646d696e2e70726f647563742e64656c657465223b693a33333b733a32303a2261646d696e2e64656c69766572792e696e646578223b693a33343b733a32313a2261646d696e2e64656c69766572792e637265617465223b693a33353b733a32313a2261646d696e2e64656c69766572792e757064617465223b693a33363b733a32313a2261646d696e2e64656c69766572792e64656c657465223b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu_akses`
--

CREATE TABLE `tb_menu_akses` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` blob NOT NULL,
  `sub_action` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menu_akses`
--

INSERT INTO `tb_menu_akses` (`id`, `type`, `name`, `controller`, `action`, `sub_action`) VALUES
(22, 'admin', 'User', 'user', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(21, 'admin', 'Slide', 'slide', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(40, 'admin', 'Bank', 'bank', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(18, 'admin', 'Setting', 'setting', 0x613a313a7b733a353a22696e646578223b733a31373a22456469742053657474696e6720556d756d223b7d, 0x613a303a7b7d),
(39, 'admin', 'Member', 'member', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(38, 'admin', 'Order', 'order', 0x613a353a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b733a353a227072696e74223b733a353a225072696e74223b7d, 0x613a303a7b7d),
(32, 'admin', 'Contact Us', 'setting', 0x613a313a7b733a373a22636f6e74616374223b733a32323a2245646974205061676520487562756e6769204b616d69223b7d, 0x613a303a7b7d),
(13, 'admin', 'About Us', 'setting', 0x613a313a7b733a353a2261626f7574223b733a31303a22456469742041626f7574223b7d, 0x613a303a7b7d),
(37, 'admin', 'Category', 'category', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(36, 'admin', 'How To Order', 'setting', 0x613a313a7b733a353a22686f77746f223b733a31323a22486f7720546f204f72646572223b7d, 0x613a303a7b7d),
(30, 'admin', 'Products', 'product', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(41, 'admin', 'Delivery Price', 'delivery', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_services`
--

CREATE TABLE `tb_services` (
  `id` int(20) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `sorting` int(5) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_services`
--

INSERT INTO `tb_services` (`id`, `image`, `sorting`, `status`) VALUES
(1, '51e92-what-we-do-business-advisory (1).jpg', 1, 1),
(2, '549bd-what-we-do-investment-banking.jpg', 2, 1),
(3, 'e923a-what-we-do-accounting-services.jpg', 3, 1),
(4, 'c825d-what-we-do-transaction-support.jpg', 4, 1),
(5, '70d19-what-we-do-financial-restructuring.jpg', 5, 1),
(6, '6741f-what-we-do-merger.jpg', 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_services_description`
--

CREATE TABLE `tb_services_description` (
  `id` int(11) NOT NULL,
  `services_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `content` text,
  `benefit` longtext,
  `application` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_services_description`
--

INSERT INTO `tb_services_description` (`id`, `services_id`, `language_id`, `title`, `content`, `benefit`, `application`) VALUES
(6, 1, 3, 'Penasihat Bisnis', '<p>Corpus menyarankan prospek bisnis saat ini dan masa depan klien dengan tujuan memajukan bisnis atau perusahaan mereka. Dengan pengalaman dalam pembentukan perusahaan, Corpus bekerja dengan klien untuk merencanakan pertumbuhan bisnis yang berkelanjutan dengan mengidentifikasi isu-isu unik untuk bisnis klien, mengembangkan rencana dan mewujudkannya. Nasihat Corpus didasarkan pada pemahaman yang mendalam tentang tahap-tahap pertumbuhan bisnis dari awal hingga matang dan diversifikasi.</p>', '<ol><li>Klien datang dengan proyek</li><li>Uji kelayakan</li><li>Survei dan penelitian pasar</li><li>Analisa bisnis</li><li>Turunkan rencana bisnis</li><li>Berikan saran Bisnis kepada klien untuk membantu bisnis mereka</li></ol>', '<p>Corpus menawarkan berbagai layanan keuangan untuk organisasi publik dan swasta, dengan manfaat memastikan kepatuhan hukum semua saran dan saran kami. Kombinasi keahlian kami di bidang keuangan dan hukum memungkinkan kami untuk mendukung klien kami dan bisnis mereka dengan cara yang aman, terintegrasi dan tangguh.</p><p>Hubungi Corpus Capital Group Sekarang, kami di sini untuk semua kebutuhan Anda akan layanan keuangan.</p>'),
(7, 2, 2, 'Investment Banking', '<p>This service intended to guide clients through the complicated landscape related to financing a business and managing it’s assets. Corpus assists the client raising capital by underwriting and / or acting as the client’s agent in the issuance of securities. We advice company executives about the best times to make a public offering or on asset management subject matter.</p>', '<ol><li>Client comes with project</li><li>Due diligence</li><li>Market survey and research</li><li>Business analysis</li><li>Derive business plan</li><li>Financial projection</li><li>Prepare prospectus for presentation material</li><li>Searching for potential investor through roadshow</li><li>Present the result to the client</li><li>Final agreement whether the client take the investment or not</li></ol>', '<p>Corpus offers full range of financial services for both public and private organisations, with the benefit of ensuring the legal compliance of all our advisory and recommendations. The combination of our expertise in the financial and legal field allow us to support our clients and their businesses in a secure, integrated and resilient manner.</p><p><a href=\"http://richmore.co/corpus/en/home/contactus\">Contact </a>Corpus Capital Group Now, we’re here for all your needs of financial services.</p>'),
(5, 1, 2, 'Business Advisory', '<p>Corpus advises current and future business prospects of a client with the aim of advancing their business or company. With experiences in company formation, Corpus works with the client to plan for sustainable business growth by identifying the issues unique to clients business, developing a plan and making it happen. Corpus advices are based on a deep understanding about the stages of business growth from start-up through to maturity and diversification.</p>', '<ol>\r\n	<li>Client comes with project</li>\r\n	<li>Due diligence</li>\r\n	<li>Market survey and research</li>\r\n	<li>Business analysis</li>\r\n	<li>Derive business plan</li>\r\n	<li>Present Business advice to the client to help their business</li>\r\n</ol>', '<p>Corpus offers full range of financial services for both public and private organisations, with the benefit of ensuring the legal compliance of all our advisory and recommendations. The combination of our expertise in the financial and legal field allow us to support our clients and their businesses in a secure, integrated and resilient manner.\r\n</p><p><a href=\"http://localhost/corpus/en/home/contactus\">Contact </a>Corpus Capital Group Now, we’re here for all your needs of financial services.\r\n</p>'),
(8, 2, 3, 'Perbankan Investasi', '<p>Layanan ini dimaksudkan untuk memandu klien melalui lanskap rumit terkait dengan pembiayaan bisnis dan mengelola asetnya. Corpus membantu klien meningkatkan modal dengan melakukan penjaminan dan / atau bertindak sebagai agen klien dalam penerbitan sekuritas. Kami memberi nasihat kepada eksekutif perusahaan tentang waktu terbaik untuk melakukan penawaran umum atau pada subjek manajemen aset.</p>', '<ol><li>Klien datang dengan proyek</li><li>Uji kelayakan</li><li>Market survey and research</li><li>Analisa bisnis</li><li>Turunkan rencana bisnis</li><li>Proyeksi finansial</li><li>Persiapkan prospektus untuk bahan presentasi</li><li>Mencari investor potensial melalui roadshow</li><li>Sajikan hasilnya kepada klien</li><li>Kesepakatan akhir apakah klien mengambil investasi atau tidak</li></ol>', '<p>Corpus menawarkan berbagai layanan keuangan untuk organisasi publik dan swasta, dengan manfaat memastikan kepatuhan hukum semua saran dan saran kami. Kombinasi keahlian kami di bidang keuangan dan hukum memungkinkan kami untuk mendukung klien kami dan bisnis mereka dengan cara yang aman, terintegrasi dan tangguh.</p><p>Hubungi Corpus Capital Group Sekarang, kami di sini ada untuk semua kebutuhan Anda akan layanan keuangan.</p>'),
(9, 3, 2, 'Accounting Service', '<p>Corpus helps provide client’s needs related to accounting tasks, prepare and examine financial records. Corpus ensures that financial records are accurate and that taxes are paid properly and on time. We assess financial operations and work to help ensure that organizations run efficiently through doing internal audit.</p>', '<ol><li>Client comes with project</li><li>Due diligence and company audit</li><li>Makes acconting report</li><li>Present the result to the client</li></ol>', '<p>Corpus offers full range of financial services for both public and private organisations, with the benefit of ensuring the legal compliance of all our advisory and recommendations. The combination of our expertise in the financial and legal field allow us to support our clients and their businesses in a secure, integrated and resilient manner.</p><p><a href=\"http://richmore.co/corpus/en/home/contactus\">Contact </a>Corpus Capital Group Now, we’re here for all your needs of financial services.</p>'),
(10, 3, 3, 'Layanan Akuntansi', '<p>Corpus membantu menyediakan kebutuhan klien terkait tugas akuntansi, menyiapkan dan memeriksa catatan keuangan. Corpus memastikan bahwa catatan keuangan akurat dan pajak dibayar dengan benar dan tepat waktu. Kami menilai operasi keuangan dan pekerjaan untuk membantu memastikan bahwa organisasi berjalan efisien melalui melakukan audit internal.</p>', '<ol><li>Klien datang dengan proyek</li><li>Uji tuntas dan audit perusahaan</li><li>Membuat laporan yang sesuai</li><li>Sajikan hasilnya kepada klien</li></ol>', '<p>Corpus menawarkan berbagai layanan keuangan untuk organisasi publik dan swasta, dengan manfaat memastikan kepatuhan hukum semua saran dan saran kami. Kombinasi keahlian kami di bidang keuangan dan hukum memungkinkan kami untuk mendukung klien kami dan bisnis mereka dengan cara yang aman, terintegrasi dan tangguh.</p><p>Hubungi Corpus Capital Group Sekarang, kami di sini untuk semua kebutuhan Anda akan layanan keuangan.</p>'),
(14, 4, 3, 'Dukungan Transaksi & Penasihat Pasar Modal', '<p>Corpus memberikan penilaian kesesuaian akuisisi melalui uji tuntas yang terfokus, dukungan dengan penataan kesepakatan dari perspektif yang efisien pajak dan juga membantu dengan integrasi pasca-merger. Kami menyediakan pendekatan terpadu yang memungkinkan alternatif penataan pajak yang efektif biaya untuk melayani klien di seluruh proses transaksi.</p>', '<ol><li>Klien datang dengan proyek</li><li>Uji kelayakan</li><li>Survei dan penelitian pasar</li><li>Analisa bisnis</li><li>Turunkan rencana bisnis</li><li>Sajikan hasilnya kepada klien</li><li>Memberikan klien dengan instruksi dan saran lebih lanjut terkait dengan kompleksitas Pasar Modal</li></ol>', '<p>Corpus menawarkan berbagai layanan keuangan untuk organisasi publik dan swasta, dengan manfaat memastikan kepatuhan hukum semua saran dan saran kami. Kombinasi keahlian kami di bidang keuangan dan hukum memungkinkan kami untuk mendukung klien kami dan bisnis mereka dengan cara yang aman, terintegrasi dan tangguh.</p><p>Hubungi Corpus Capital Group Sekarang, kami di sini untuk semua kebutuhan Anda akan layanan keuangan.</p>'),
(13, 4, 2, 'Transaction Support & Capital Market Advisory', '<p><br></p><p>Corpus provides assessment of the suitability of an acquisition through focused due diligence, supports with structuring deal from a tax-efficient perspective and also help with post-merger integration. We provide an integrated approach which allows for cost-effective tax structuring alternatives to serves the clients across the entire transaction process.</p>', '<ol><li>Client comes with project</li><li>Due diligence</li><li>Market survey and research</li><li>Business analysis</li><li>Derive business plan</li><li>Present the result to the client</li><li>Provide the client with futher instrcution and advice dealing with Capital Market complexity</li></ol>', '<p>Corpus offers full range of financial services for both public and private organisations, with the benefit of ensuring the legal compliance of all our advisory and recommendations. The combination of our expertise in the financial and legal field allow us to support our clients and their businesses in a secure, integrated and resilient manner.</p><p><a href=\"http://richmore.co/corpus/en/home/contactus\">Contact </a>Corpus Capital Group Now, we’re here for all your needs of financial services.</p>'),
(18, 5, 3, 'Penasihat Restrukturisasi Keuangan', '<p>Corpus membantu klien untuk mengatur kembali aset dan liabilitas bisnis tempat struktur keseluruhan organisasi dan prosesnya diubah. Layanan ini meliputi restrukturisasi hutang dan restrukturisasi ekuitas.</p>', '<ol><li>Klien datang dengan proyek</li><li>Uji kelayakan</li><li>Survei dan penelitian pasar</li><li>Analisa bisnis</li><li>Proyeksi finansial</li><li>Turunkan Rencana bisnis</li><li>Sajikan hasilnya kepada klien</li><li>Tahap terakhir dengan membantu klien untuk merestrukturisasi posisi keuangan mereka</li></ol>', '<p>Corpus menawarkan berbagai layanan keuangan untuk organisasi publik dan swasta, dengan manfaat memastikan kepatuhan hukum semua saran dan saran kami. Kombinasi keahlian kami di bidang keuangan dan hukum memungkinkan kami untuk mendukung klien kami dan bisnis mereka dengan cara yang aman, terintegrasi dan tangguh.</p><p>Hubungi Corpus Capital Group Sekarang, kami di sini untuk semua kebutuhan Anda akan layanan keuangan.</p>'),
(17, 5, 2, 'Financial Restructuring Advisory', '<p><br></p><p>Corpus helps the client to reorganize business assets and liabilities where an organization’s overall structure and it’s processes are revamped. The service includes debt restructuring and equity restructuring.</p>', '<ol><li>Client comes with project</li><li>Due diligence</li><li>Market survey and research</li><li>Business analysis</li><li>Financial Projection</li><li>Derive business Plan</li><li>Present the result to the client</li><li>Final stage by helping the clien to restructure their financial position</li></ol>', '<p>Corpus offers full range of financial services for both public and private organisations, with the benefit of ensuring the legal compliance of all our advisory and recommendations. The combination of our expertise in the financial and legal field allow us to support our clients and their businesses in a secure, integrated and resilient manner.</p><p><a href=\"http://richmore.co/corpus/en/home/contactus\">Contact </a>Corpus Capital Group Now, we’re here for all your needs of financial services.</p>'),
(22, 6, 3, 'Akuisisi Merger', '<p>Corpus membantu memberikan informasi dan saran yang relevan mengenai kebutuhan klien terkait dengan akuisisi merger, seperti membeli, menjual, membagi, dan menggabungkan berbagai perusahaan dan entitas serupa yang dapat membantu perusahaan tumbuh pesat di sektor atau lokasi asal, atau bidang baru atau lokasi baru, tanpa membuat anak perusahaan, entitas anak lain atau menggunakan usaha patungan.</p>', '<ol><li>Klien datang dengan dana untuk mengakuisisi perusahaan yang berpotensi bergabung, atau klien datang dengan proyek dalam mencari perusahaan potensial untuk bergabung</li><li>Uji kelayakan</li><li>Survei dan penelitian pasar</li><li>Analisa bisnis</li><li>Proyeksi finansial</li><li>Rencana Bisnis yang diturunkan</li><li>Sajikan hasilnya kepada klien</li><li>Mencari mitra merger potensial yang cocok dengan persyaratan klien.</li><li>Bantu klien dengan kebutuhan dalam proses merger.</li></ol>', '<p>Corpus menawarkan berbagai layanan keuangan untuk organisasi publik dan swasta, dengan manfaat memastikan kepatuhan hukum semua saran dan saran kami. Kombinasi keahlian kami di bidang keuangan dan hukum memungkinkan kami untuk mendukung klien kami dan bisnis mereka dengan cara yang aman, terintegrasi dan tangguh.</p><p>Hubungi Corpus Capital Group Sekarang, kami di sini untuk semua kebutuhan Anda akan layanan keuangan.</p>'),
(21, 6, 2, 'Merger Acquisition', '<p><br></p><p>Corpus helps provide relevant information and advices regarding the client’s needs related to merger acquisition, such as buying, selling, dividing and combining of different companies and similar entities that can help an enterprise grow rapidly in it’s sector or location of origin, or a new field or new location, without creating a subsidiary, other child entity or using a joint venture.</p>', '<ol><li>Client comes with fund to acquire potential merging company, or client comes with project in searching potential company to merge with</li><li>Due diligence</li><li>Market survey and research</li><li>Business analysis</li><li>Financial Projection</li><li>Derived Business Plan</li><li>Present the result to the client</li><li>Searching for potential merging partner which match the client requirements.</li><li>Help the client with necessities in the merger process.</li></ol>', '<p>Corpus offers full range of financial services for both public and private organisations, with the benefit of ensuring the legal compliance of all our advisory and recommendations. The combination of our expertise in the financial and legal field allow us to support our clients and their businesses in a secure, integrated and resilient manner.</p><p><a href=\"http://richmore.co/corpus/en/home/contactus\">Contact </a>Corpus Capital Group Now, we’re here for all your needs of financial services.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_teams_list`
--

CREATE TABLE `tb_teams_list` (
  `id` int(20) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `position_en` varchar(225) DEFAULT NULL,
  `position_id` varchar(225) DEFAULT NULL,
  `content` text,
  `sortings` int(5) DEFAULT NULL,
  `actives` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_teams_list`
--

INSERT INTO `tb_teams_list` (`id`, `image`, `title`, `position_en`, `position_id`, `content`, `sortings`, `actives`) VALUES
(1, 'd81cc-direksi.jpg', 'Melisa Natalie', 'Lending and Project Director', 'Direktur Pinjaman dan Proyek', NULL, NULL, 1),
(2, '16d4e-pem7.jpg', 'Lisye Sinanto', 'Operational Director', 'Direktur Operasional', NULL, NULL, 1),
(3, '9c650-pem3.jpg', 'Jos Tjahjono  ', 'Marketing Director', 'Direktur Pemasaran', NULL, NULL, 1),
(4, '33fb5-pem1.jpg', 'Kristhiono Gunarso  ', 'President Director', 'Direktur Utama', NULL, NULL, 1),
(5, '7173a-pem2.jpg', 'Meidy Holiangu  ', 'Commissioner', 'Komisaris', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `user_input` varchar(200) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initial` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `nama`, `pass`, `type`, `group_id`, `login_terakhir`, `aktivasi`, `aktif`, `user_input`, `tanggal_input`, `initial`, `image`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory Pandu', '564fda17f517ae04a86734c2b2341327ed4fd565', 'root', 0, '2015-12-30 08:16:30', 0, 1, '', '2014-02-10 03:17:36', 'deory', ''),
(30, 'info@markdesign.net', 'info markdesign', '564fda17f517ae04a86734c2b2341327ed4fd565', 'root', 1, '2019-03-29 04:09:38', 0, 1, '', '0000-00-00 00:00:00', 'Admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_toko`
--

CREATE TABLE `to_toko` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `nama_toko` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `to_toko`
--

INSERT INTO `to_toko` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`, `nama_toko`, `lokasi`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory', 'Pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2014-11-07 15:32:14', 0, 1, 'a448d-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'JewelryShop', 'surabaya'),
(4, 'ibnu@markdesign.net', 'Ibnu', 'Fajar', '564fda17f517ae04a86734c2b2341327ed4fd565', '2014-11-07 15:32:25', 0, 1, '3e491-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'Toko Handoko', 'surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_toko_product`
--

CREATE TABLE `to_toko_product` (
  `id` int(11) NOT NULL,
  `toko_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `to_toko_product`
--

INSERT INTO `to_toko_product` (`id`, `toko_id`, `product_id`) VALUES
(8, 1, 960),
(7, 1, 105),
(6, 1, 719),
(5, 1, 264),
(9, 1, 223),
(10, 1, 930),
(11, 1, 475),
(12, 1, 732),
(13, 4, 264),
(14, 4, 560),
(15, 4, 960),
(16, 4, 505),
(17, 4, 719),
(18, 4, 678),
(19, 4, 475),
(20, 4, 277);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `awal` int(11) NOT NULL,
  `akhir` int(11) NOT NULL,
  `trip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trips`
--

INSERT INTO `trips` (`id`, `year`, `month`, `awal`, `akhir`, `trip`) VALUES
(1, 2016, 1, 1, 3, 'Surabaya'),
(4, 2016, 2, 8, 10, 'Singapore'),
(3, 2016, 2, 7, 10, 'Malaysia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tt_text`
--

CREATE TABLE `tt_text` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tt_text`
--

INSERT INTO `tt_text` (`id`, `category`, `message`) VALUES
(1, 'admin', 'Produk'),
(2, 'admin', 'Pages'),
(3, 'admin', 'Orders'),
(4, 'admin', 'Customers'),
(5, 'admin', 'Promotions'),
(6, 'admin', 'Reports'),
(7, 'admin', 'General Setting'),
(8, 'admin', 'Data Edited'),
(9, 'admin', 'New Orders'),
(10, 'admin', 'New Customers'),
(11, 'admin', 'Payment Confirmation'),
(12, 'admin', 'Edit Profile'),
(13, 'admin', 'Change Password'),
(14, 'admin', 'Sign Out'),
(15, 'admin', 'Gallery'),
(16, 'admin', 'Slide Home'),
(17, 'admin', 'Toko'),
(18, 'admin', 'Slides'),
(19, 'admin', 'Product'),
(20, 'admin', 'Products'),
(21, 'admin', 'About Us'),
(22, 'admin', 'Contact Us'),
(23, 'admin', 'Trip'),
(24, 'admin', 'Trips'),
(25, 'admin', 'Slide'),
(26, 'admin', 'Healty'),
(27, 'admin', 'ge-ma'),
(28, 'admin', 'Blog/Artikel'),
(29, 'admin', 'Career'),
(30, 'admin', 'Home'),
(31, 'admin', 'Factory'),
(32, 'admin', 'News & Article'),
(33, 'admin', 'Lokasi Penjualan'),
(34, 'admin', 'Jadi Agen'),
(35, 'admin', 'Cara Membeli'),
(36, 'admin', 'PDF'),
(37, 'admin', 'Cara Belanja'),
(38, 'admin', 'Info Pengiriman'),
(39, 'admin', 'FAQ'),
(40, 'admin', 'Syarat & Ketentuan'),
(41, 'admin', 'How To Order'),
(42, 'admin', 'Event'),
(43, 'admin', 'Homepage'),
(44, 'admin', 'Brand'),
(45, 'admin', 'Become an Agent'),
(46, 'admin', 'Where to Buy'),
(47, 'admin', 'Tentang Kami'),
(48, 'admin', 'Belanja Online'),
(49, 'admin', 'Merek'),
(50, 'admin', 'Lokasi'),
(51, 'admin', 'Gallery Spotlight'),
(52, 'admin', 'Voucher Discount'),
(53, 'admin', 'Customer'),
(54, 'admin', 'Home Spotlight'),
(55, 'admin', 'Store Locator'),
(56, 'admin', 'Seen On'),
(57, 'admin', 'Merchant Partner'),
(58, 'admin', 'Lokasi Toko'),
(59, 'front', 'Contact'),
(60, 'front', 'Calcium Carbonate Products'),
(61, 'front', 'Process & Quality'),
(62, 'front', 'News & Articles'),
(63, 'front', 'BACK'),
(64, 'front', 'PROCESS QUALITY'),
(65, 'front', 'material sourcing'),
(66, 'front', 'oven & crush'),
(67, 'front', 'final screening'),
(68, 'front', 'dispatch'),
(69, 'front', 'Read More'),
(70, 'admin', 'What We Do'),
(71, 'admin', 'News & Events'),
(72, 'admin', 'Investor Relations'),
(73, 'front', 'Our Services'),
(74, 'front', 'Learn More About Corpus Group'),
(75, 'front', 'Financial Reports'),
(76, 'front', 'By'),
(77, 'front', 'date'),
(78, 'front', 'title'),
(79, 'front', 'action'),
(80, 'front', 'Also in the Investor Relations'),
(81, 'front', 'Factsheets'),
(82, 'front', 'Financial Highlights'),
(83, 'front', 'Keeping Up With Corpus Group'),
(84, 'front', 'Service Step'),
(85, 'front', 'Industry Application'),
(86, 'front', 'AVAILABLE POSITIONS'),
(87, 'front', 'There are no opening positions at the moment.'),
(88, 'front', 'Newsroom');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_blog`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_blog` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` int(25)
,`id2` int(11)
,`blog_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
,`quote` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_category`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_category` (
`id` int(11)
,`parent_id` int(11)
,`sort` int(11)
,`image` varchar(200)
,`type` varchar(100)
,`data` text
,`id2` int(11)
,`category_id` int(11)
,`language_id` int(11)
,`name` varchar(100)
,`data2` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_gallery`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_gallery` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`image2` varchar(200)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` varchar(200)
,`city` varchar(100)
,`harga` int(11)
,`color` varchar(100)
,`orientation` int(11)
,`id2` int(11)
,`gallery_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`sub_title` text
,`sub_title_2` text
,`content` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_slide`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_slide` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` varchar(200)
,`id2` int(11)
,`slide_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
,`url` varchar(200)
,`sort` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_blog`
--
DROP TABLE IF EXISTS `view_blog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_blog`  AS  select `pg_blog`.`id` AS `id`,`pg_blog`.`topik_id` AS `topik_id`,`pg_blog`.`image` AS `image`,`pg_blog`.`active` AS `active`,`pg_blog`.`date_input` AS `date_input`,`pg_blog`.`date_update` AS `date_update`,`pg_blog`.`insert_by` AS `insert_by`,`pg_blog`.`last_update_by` AS `last_update_by`,`pg_blog`.`writer` AS `writer`,`pg_blog_description`.`id` AS `id2`,`pg_blog_description`.`blog_id` AS `blog_id`,`pg_blog_description`.`language_id` AS `language_id`,`pg_blog_description`.`title` AS `title`,`pg_blog_description`.`content` AS `content`,`pg_blog_description`.`quote` AS `quote` from (`pg_blog` join `pg_blog_description` on((`pg_blog`.`id` = `pg_blog_description`.`blog_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_category`
--
DROP TABLE IF EXISTS `view_category`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_category`  AS  select `prd_category`.`id` AS `id`,`prd_category`.`parent_id` AS `parent_id`,`prd_category`.`sort` AS `sort`,`prd_category`.`image` AS `image`,`prd_category`.`type` AS `type`,`prd_category`.`data` AS `data`,`prd_category_description`.`id` AS `id2`,`prd_category_description`.`category_id` AS `category_id`,`prd_category_description`.`language_id` AS `language_id`,`prd_category_description`.`name` AS `name`,`prd_category_description`.`data` AS `data2` from (`prd_category` join `prd_category_description` on((`prd_category`.`id` = `prd_category_description`.`category_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_gallery`
--
DROP TABLE IF EXISTS `view_gallery`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gallery`  AS  select `gal_gallery`.`id` AS `id`,`gal_gallery`.`topik_id` AS `topik_id`,`gal_gallery`.`image` AS `image`,`gal_gallery`.`image2` AS `image2`,`gal_gallery`.`active` AS `active`,`gal_gallery`.`date_input` AS `date_input`,`gal_gallery`.`date_update` AS `date_update`,`gal_gallery`.`insert_by` AS `insert_by`,`gal_gallery`.`last_update_by` AS `last_update_by`,`gal_gallery`.`writer` AS `writer`,`gal_gallery`.`city` AS `city`,`gal_gallery`.`harga` AS `harga`,`gal_gallery`.`color` AS `color`,`gal_gallery`.`orientation` AS `orientation`,`gal_gallery_description`.`id` AS `id2`,`gal_gallery_description`.`gallery_id` AS `gallery_id`,`gal_gallery_description`.`language_id` AS `language_id`,`gal_gallery_description`.`title` AS `title`,`gal_gallery_description`.`sub_title` AS `sub_title`,`gal_gallery_description`.`sub_title_2` AS `sub_title_2`,`gal_gallery_description`.`content` AS `content` from (`gal_gallery` join `gal_gallery_description` on((`gal_gallery`.`id` = `gal_gallery_description`.`gallery_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_slide`
--
DROP TABLE IF EXISTS `view_slide`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_slide`  AS  select `sl_slide`.`id` AS `id`,`sl_slide`.`topik_id` AS `topik_id`,`sl_slide`.`image` AS `image`,`sl_slide`.`active` AS `active`,`sl_slide`.`date_input` AS `date_input`,`sl_slide`.`date_update` AS `date_update`,`sl_slide`.`insert_by` AS `insert_by`,`sl_slide`.`last_update_by` AS `last_update_by`,`sl_slide`.`writer` AS `writer`,`sl_slide_description`.`id` AS `id2`,`sl_slide_description`.`slide_id` AS `slide_id`,`sl_slide_description`.`language_id` AS `language_id`,`sl_slide_description`.`title` AS `title`,`sl_slide_description`.`content` AS `content`,`sl_slide_description`.`url` AS `url`,`sl_slide`.`sort` AS `sort` from (`sl_slide` join `sl_slide_description` on((`sl_slide_description`.`slide_id` = `sl_slide`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_image`
--
ALTER TABLE `about_image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cs_customer`
--
ALTER TABLE `cs_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gal_gallery`
--
ALTER TABLE `gal_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`gallery_id`);

--
-- Indeks untuk tabel `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `list_career`
--
ALTER TABLE `list_career`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `me_member`
--
ALTER TABLE `me_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `or_order`
--
ALTER TABLE `or_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `or_order_history`
--
ALTER TABLE `or_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `or_order_product`
--
ALTER TABLE `or_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `or_order_status`
--
ALTER TABLE `or_order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indeks untuk tabel `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_bank`
--
ALTER TABLE `pg_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_blog`
--
ALTER TABLE `pg_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `pg_faq`
--
ALTER TABLE `pg_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_pages`
--
ALTER TABLE `pg_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_brand`
--
ALTER TABLE `prd_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `prd_category`
--
ALTER TABLE `prd_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `type` (`type`);

--
-- Indeks untuk tabel `prd_category_description`
--
ALTER TABLE `prd_category_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`language_id`);

--
-- Indeks untuk tabel `prd_category_product`
--
ALTER TABLE `prd_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_product`
--
ALTER TABLE `prd_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `prd_product_color`
--
ALTER TABLE `prd_product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `prd_product_description`
--
ALTER TABLE `prd_product_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`language_id`);

--
-- Indeks untuk tabel `prd_product_image`
--
ALTER TABLE `prd_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `sertifikasi`
--
ALTER TABLE `sertifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_description`
--
ALTER TABLE `setting_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sl_slide`
--
ALTER TABLE `sl_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_services`
--
ALTER TABLE `tb_services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_services_description`
--
ALTER TABLE `tb_services_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `tb_teams_list`
--
ALTER TABLE `tb_teams_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `to_toko`
--
ALTER TABLE `to_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `to_toko_product`
--
ALTER TABLE `to_toko_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toko_id` (`toko_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tt_text`
--
ALTER TABLE `tt_text`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_image`
--
ALTER TABLE `about_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `address`
--
ALTER TABLE `address`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `cs_customer`
--
ALTER TABLE `cs_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery`
--
ALTER TABLE `gal_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `list_career`
--
ALTER TABLE `list_career`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT untuk tabel `me_member`
--
ALTER TABLE `me_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `or_order`
--
ALTER TABLE `or_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_history`
--
ALTER TABLE `or_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_product`
--
ALTER TABLE `or_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_status`
--
ALTER TABLE `or_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `pg_bank`
--
ALTER TABLE `pg_bank`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pg_blog`
--
ALTER TABLE `pg_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `pg_faq`
--
ALTER TABLE `pg_faq`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pg_pages`
--
ALTER TABLE `pg_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_brand`
--
ALTER TABLE `prd_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_category`
--
ALTER TABLE `prd_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `prd_category_description`
--
ALTER TABLE `prd_category_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `prd_category_product`
--
ALTER TABLE `prd_category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product`
--
ALTER TABLE `prd_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_color`
--
ALTER TABLE `prd_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_description`
--
ALTER TABLE `prd_product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_image`
--
ALTER TABLE `prd_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sertifikasi`
--
ALTER TABLE `sertifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `setting_description`
--
ALTER TABLE `setting_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sl_slide`
--
ALTER TABLE `sl_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tb_services`
--
ALTER TABLE `tb_services`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_services_description`
--
ALTER TABLE `tb_services_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_teams_list`
--
ALTER TABLE `tb_teams_list`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `to_toko`
--
ALTER TABLE `to_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `to_toko_product`
--
ALTER TABLE `to_toko_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tt_text`
--
ALTER TABLE `tt_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2018 at 04:25 PM
-- Server version: 10.1.24-MariaDB-6
-- PHP Version: 7.0.20-2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(80) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('114e68a6-215c-47ca-8808-da59fa83c62e', 'Dr. Yulisna Leman', 'Gigi', 'Jl. Panunggulan No.16', '0295382688'),
('135e0b62-9b0c-4542-9a86-ca684d18d7bd', 'Dr. Steven Fungsi', '-', 'Kudus', '08777656786'),
('571f4521-9b67-410c-a235-f7f65342f08a', 'Dr. Indah K', '-', 'Kelurahan Pati Kidul', '0295378904');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(200) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('9a80f97b-095b-11e8-a30f-5c93a2c901cb', 'Paramex', ''),
('9a810217-095b-11e8-a30f-5c93a2c901cb', 'Oskadon', 'Diminum seperlunya'),
('9a8107f9-095b-11e8-a30f-5c93a2c901cb', 'Ultraflu', 'Obat flu'),
('9a810d58-095b-11e8-a30f-5c93a2c901cb', 'Komix', 'Obat batuk'),
('ff7e89c2-0941-11e8-a30f-5c93a2c901cb', 'Paracetamol', 'Obat panas om');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nomor_identitas` varchar(30) NOT NULL,
  `nama_pasien` varchar(80) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nomor_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('0318af31-046f-40f3-8bed-5fe793f29d46', '201651088', 'Tukiyem', 'P', 'Blora', '08967899975'),
('1e23b7fc-3299-492d-a0d5-22c118caebde', '45677999', 'Tono', 'L', 'Jepara', '0295456544'),
('2873afde-ad20-48f0-9bc1-ed5cd4dec8c6', '9786776756', 'Rizki', 'L', 'Dawe Kudus', '08132577865'),
('2ecd691b-8d2c-434c-bd85-de2bee603d92', '345676457', 'Wati', 'P', 'Kudus', '08756768944'),
('3d317aee-8a3f-41f5-a18f-b28c21a79866', '201651085', 'M. Nur Fawaiq', 'L', 'Pati Kota', '085786447406'),
('419db5b7-7859-4560-9888-0d30c5f0c09c', '201651086', 'Andhan R', 'L', 'Kudus', '085778656784'),
('4f85a765-b153-4490-96a0-37d81848d497', '45676776', 'Agus', 'L', 'Purwodadi', '083354657667'),
('8a507897-f814-4cdb-83f5-6fff928e28ba', '55676767', 'Ibin', 'L', 'Pati', '085889776333'),
('90e8b871-ec79-419e-aacc-75c3657928a7', '345676456', 'Eko', 'L', 'Kudus', '08767896866'),
('bb9b6609-c485-4c28-9e81-a8068784d159', '57656644645', 'Susi', 'P', 'Blora Jateng', '08122578999'),
('c5fca53f-eae4-426d-b0c0-a595cc288b0c', '201651087', 'Angga Saiful B', 'L', 'Kudus', '08997877677'),
('ea7638bc-f9d9-4dc3-8dd2-bfe5bfe9e8e7', '56789765', 'Firda', 'P', 'Gabus, Pati', '0898874334'),
('f32357cc-38c1-4cd0-a2e8-c15a4b3e858c', '56547584845', 'Dian', 'P', 'Jekulo, Kudus', '087784944637');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `gedung`) VALUES
('8a4d47f3-abd6-4244-9c25-2af6dba8a68f', 'Poli 3 A', 'K.L.VI'),
('efead4e2-4450-41dd-8211-039b9b8c6728', 'Poli 2 A', 'K.L.V'),
('f63c8a91-b6a9-41c5-907d-fe06a68a21fb', 'Poli 1 A', 'K.L.IV');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekammedis`
--

CREATE TABLE `tb_rekammedis` (
  `id_rm` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `keluhan` text NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `diagnosa` text NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `tgl_periksa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rekammedis`
--

INSERT INTO `tb_rekammedis` (`id_rm`, `id_pasien`, `keluhan`, `id_dokter`, `diagnosa`, `id_poli`, `tgl_periksa`) VALUES
('ad870298-4668-489b-8694-88c2880604bd', '2873afde-ad20-48f0-9bc1-ed5cd4dec8c6', 'Gatal2', '571f4521-9b67-410c-a235-f7f65342f08a', 'Panu', '8a4d47f3-abd6-4244-9c25-2af6dba8a68f', '2018-04-11'),
('da4e4c8b-63d4-48b8-ac09-5155f8775aba', 'f32357cc-38c1-4cd0-a2e8-c15a4b3e858c', '<p><em><strong>Mual-mual, sering capek</strong></em></p>\r\n', '135e0b62-9b0c-4542-9a86-ca684d18d7bd', 'Hamil muda', 'f63c8a91-b6a9-41c5-907d-fe06a68a21fb', '2018-04-12'),
('feb6a852-9b11-4b00-b67f-b1b5fb1965f7', 'bb9b6609-c485-4c28-9e81-a8068784d159', 'Pusing', '114e68a6-215c-47ca-8808-da59fa83c62e', 'Sakit kepala', '8a4d47f3-abd6-4244-9c25-2af6dba8a68f', '2018-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rm_obat`
--

CREATE TABLE `tb_rm_obat` (
  `id` int(8) NOT NULL,
  `id_rm` varchar(50) NOT NULL,
  `id_obat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rm_obat`
--

INSERT INTO `tb_rm_obat` (`id`, `id_rm`, `id_obat`) VALUES
(1, 'ad870298-4668-489b-8694-88c2880604bd', '9a80f97b-095b-11e8-a30f-5c93a2c901cb'),
(2, 'ad870298-4668-489b-8694-88c2880604bd', '9a810217-095b-11e8-a30f-5c93a2c901cb'),
(3, 'ad870298-4668-489b-8694-88c2880604bd', '9a8107f9-095b-11e8-a30f-5c93a2c901cb'),
(4, 'ad870298-4668-489b-8694-88c2880604bd', '9a810d58-095b-11e8-a30f-5c93a2c901cb'),
(7, 'feb6a852-9b11-4b00-b67f-b1b5fb1965f7', '9a8107f9-095b-11e8-a30f-5c93a2c901cb'),
(8, 'feb6a852-9b11-4b00-b67f-b1b5fb1965f7', 'ff7e89c2-0941-11e8-a30f-5c93a2c901cb'),
(15, 'da4e4c8b-63d4-48b8-ac09-5155f8775aba', '9a810d58-095b-11e8-a30f-5c93a2c901cb'),
(16, 'da4e4c8b-63d4-48b8-ac09-5155f8775aba', 'ff7e89c2-0941-11e8-a30f-5c93a2c901cb');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(80) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('b1a0c7dd-0935-11e8-a30f-5c93a2c901cb', 'Mohammad Nur Fawaiq', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1'),
('bfc93300-093a-11e8-a30f-5c93a2c901cb', 'Dilan 1990', 'dilan', 'fa9f1991b525abb209b957a34a8a94ef3ffbce0b', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD PRIMARY KEY (`id_rm`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_poli` (`id_poli`);

--
-- Indexes for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rm` (`id_rm`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD CONSTRAINT `tb_rekammedis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `tb_dokter` (`id_dokter`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_3` FOREIGN KEY (`id_poli`) REFERENCES `tb_poliklinik` (`id_poli`);

--
-- Constraints for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD CONSTRAINT `tb_rm_obat_ibfk_1` FOREIGN KEY (`id_rm`) REFERENCES `tb_rekammedis` (`id_rm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rm_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tb_obat` (`id_obat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

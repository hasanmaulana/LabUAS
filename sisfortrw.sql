-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Nov 2018 pada 10.47
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfortrw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buat_iuran`
--

CREATE TABLE `buat_iuran` (
  `id_b_iuran` int(100) NOT NULL,
  `bulan` varchar(100) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `jenis_iuran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buat_iuran`
--

INSERT INTO `buat_iuran` (`id_b_iuran`, `bulan`, `tahun`, `jenis_iuran`) VALUES
(1, 'Februari', 2018, 'iuran'),
(2, 'Mei', 2018, 'iuran'),
(3, 'Juni', 2018, 'iuran'),
(4, 'SAMPAH', 2018, 'iuran'),
(5, 'cat kampung', 2018, 'iuran'),
(6, 'November', 2018, 'himdak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(200) NOT NULL,
  `no_ktp` varchar(200) DEFAULT NULL,
  `foto_ktp` varchar(200) DEFAULT NULL,
  `foto_kk` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `no_ktp`, `foto_ktp`, `foto_kk`) VALUES
(3, '123456', NULL, NULL),
(4, '23456', NULL, NULL),
(5, '45678', NULL, NULL),
(6, '5432', NULL, NULL),
(7, '1111', NULL, NULL),
(8, '1111', NULL, NULL),
(9, '1010', NULL, NULL),
(10, '1011', NULL, NULL),
(11, '1012', NULL, NULL),
(12, '1013', NULL, NULL),
(13, '1017', NULL, NULL),
(14, '2020', NULL, NULL),
(15, '10000', NULL, NULL),
(16, '2147483647', NULL, NULL),
(17, '55555', NULL, NULL),
(18, '9090', NULL, NULL),
(19, '321', NULL, NULL),
(20, '4444', NULL, NULL),
(21, '2147483647', NULL, NULL),
(22, '1234', NULL, NULL),
(23, '123', NULL, NULL),
(24, '001', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan`
--

CREATE TABLE `hubungan` (
  `id_hubungan` int(200) NOT NULL,
  `no_parent` int(100) DEFAULT NULL,
  `no_child` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungan`
--

INSERT INTO `hubungan` (`id_hubungan`, `no_parent`, `no_child`) VALUES
(2, 23456, 1111),
(3, 23456, 1111),
(4, 1010, 1011),
(5, 1010, 1012),
(6, 1010, 1017),
(7, 1010, 10000),
(8, 2147483647, 55555);

-- --------------------------------------------------------

--
-- Struktur dari tabel `iuran`
--

CREATE TABLE `iuran` (
  `id_iuran` int(200) NOT NULL,
  `no_ktp` varchar(200) NOT NULL,
  `bukti` varchar(200) NOT NULL,
  `id_b_iuran` int(11) NOT NULL,
  `besaran` int(10) NOT NULL,
  `tgl_bayar` datetime NOT NULL,
  `via` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `iuran`
--

INSERT INTO `iuran` (`id_iuran`, `no_ktp`, `bukti`, `id_b_iuran`, `besaran`, `tgl_bayar`, `via`) VALUES
(1, '1010', '1010_buktiIuran', 1, 40000, '2018-05-26 22:35:36', 'Cash'),
(2, '1013', '1013_buktiIuran', 1, 30000, '2018-05-26 22:46:09', 'Cash'),
(3, '1010', '1010_buktiIuran', 2, 50000, '2018-05-26 22:56:12', 'Cash'),
(4, '1013', '1013_buktiIuran', 2, 10000, '2018-05-26 22:58:54', 'Cash'),
(5, '23456', '23456_buktiIuran', 1, 20000, '2018-05-27 01:14:15', 'Cash'),
(6, '23456', '23456_buktiIuran', 2, 25000, '2018-05-27 01:14:25', 'Transfer'),
(7, '327', '327_buktiIuran', 1, 120000, '2018-07-22 16:40:45', 'Cash'),
(8, '327', '327_buktiIuran', 2, 10000, '2018-07-23 16:36:24', 'Cash'),
(9, '23456', '23456_buktiIuran', 3, 175000, '2018-08-12 16:21:35', 'Transfer'),
(10, '23456', '23456_buktiIuran', 3, 175000, '2018-08-12 16:21:35', 'Transfer'),
(11, '4444', '4444_buktiIuran', 1, 25000, '2018-08-12 16:34:03', 'Cash'),
(12, '4444', '4444_buktiIuran.jpg', 2, 58000, '2018-08-12 16:35:27', 'Transfer'),
(13, '4444', '4444_buktiIuran', 3, 230000, '2018-08-12 16:53:53', 'Transfer'),
(14, '2147483647', '2171032903760001_buktiIuran', 1, 175000, '2018-08-12 17:06:45', 'Transfer'),
(15, '2147483647', '2171032903760001_buktiIuran', 5, 5000, '2018-08-12 17:28:33', 'Cash'),
(16, '4444', '4444_buktiIuran', 4, 50000, '2018-08-12 17:37:00', 'Cash'),
(17, '2171032903760001', '2171032903760001_buktiIuran', 1, 50000, '2018-08-12 17:52:57', 'Cash'),
(18, '2171032903760001', '2171032903760001_buktiIuran', 2, 350000, '2018-08-12 19:27:32', 'Transfer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keuangan`
--

CREATE TABLE `keuangan` (
  `id_keu` int(200) NOT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `nama_item` varchar(200) DEFAULT NULL,
  `nominal` varchar(200) DEFAULT NULL,
  `peruntukan` varchar(100) NOT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `via` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keuangan`
--

INSERT INTO `keuangan` (`id_keu`, `rt`, `nama_item`, `nominal`, `peruntukan`, `jenis`, `tgl`, `via`) VALUES
(1, '4', 'Iuran Bulanan dari 1010', '40000', '', 'pendapatan', '2018-05-26 00:00:00', 'Cash'),
(2, '4', 'Iuran Bulanan dari 1013', '30000', '', 'pendapatan', '2018-05-26 00:00:00', 'Cash'),
(3, '4', 'Iuran Bulanan dari 1010', '50000', '', 'pendapatan', '2018-05-26 00:00:00', 'Cash'),
(4, '4', 'Iuran Bulanan dari 1013', '10000', '', 'pendapatan', '2018-05-26 00:00:00', 'Cash'),
(5, '4', 'Iuran Bulanan dari 23456', '20000', '', 'pendapatan', '2018-05-27 00:00:00', 'Cash'),
(6, '4', 'Iuran Bulanan dari 23456', '25000', '', 'pendapatan', '2018-05-27 00:00:00', 'Transfer'),
(7, '4', 'Santunan', '200000', '', 'pendapatan', '2018-06-02 00:00:00', 'Cash'),
(8, '4', 'kegiatan warga', '100000', 'Pengeluaran RT', 'pengeluaran', '2018-06-02 00:00:00', 'Cash'),
(9, '1', 'Iuran Bulanan dari 327', '120000', '', 'pendapatan', '2018-07-22 00:00:00', 'Cash'),
(10, '1', 'Iuran Bulanan dari 327', '10000', '', 'pendapatan', '2018-07-23 00:00:00', 'Cash'),
(11, '4', 'Iuran Bulanan dari 23456', '175000', '', 'pendapatan', '2018-08-12 00:00:00', 'Transfer'),
(12, '4', 'Iuran Bulanan dari 23456', '175000', '', 'pendapatan', '2018-08-12 00:00:00', 'Transfer'),
(13, '4', 'Iuran Bulanan dari 4444', '25000', '', 'pendapatan', '2018-08-12 00:00:00', 'Cash'),
(14, '4', 'Iuran Bulanan dari 4444', '58000', '', 'pendapatan', '2018-08-12 00:00:00', 'Transfer'),
(15, '4', 'Iuran Bulanan dari 4444', '230000', '', 'pendapatan', '2018-08-12 00:00:00', 'Transfer'),
(16, '4', 'Iuran Bulanan dari 2171032903760001', '175000', '', 'pendapatan', '2018-08-12 00:00:00', 'Transfer'),
(17, '4', 'Iuran Bulanan dari 2171032903760001', '5000', '', 'pendapatan', '2018-08-12 00:00:00', 'Cash'),
(18, '4', 'Iuran Bulanan dari 4444', '50000', '', 'pendapatan', '2018-08-12 00:00:00', 'Cash'),
(19, '4', 'Iuran Bulanan dari 2171032903760001', '50000', '', 'pendapatan', '2018-08-12 00:00:00', 'Cash'),
(20, '4', 'Iuran Bulanan dari 2171032903760001', '350000', '', 'pendapatan', '2018-08-12 00:00:00', 'Transfer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(200) NOT NULL,
  `nama_laporan` varchar(200) DEFAULT NULL,
  `rt` varchar(3) DEFAULT NULL,
  `dari` date DEFAULT NULL,
  `ke` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `nama_laporan`, `rt`, `dari`, `ke`) VALUES
(1, 'Cek', '4', '2018-04-01', '2018-05-27'),
(2, 'Test', '4', '2017-06-08', '2018-06-02'),
(3, 'Tes', 'rw', '2018-08-10', '2018-08-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(200) NOT NULL,
  `rt` int(100) DEFAULT NULL,
  `no_ktp` varchar(200) DEFAULT NULL,
  `nama_lengkap` varchar(200) DEFAULT NULL,
  `sex` varchar(20) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `no_rumah` varchar(200) NOT NULL,
  `foto` text NOT NULL,
  `no_kontak` varchar(200) NOT NULL,
  `hubungan` varchar(100) NOT NULL,
  `email_warga` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `rt`, `no_ktp`, `nama_lengkap`, `sex`, `tgl_lahir`, `pendidikan`, `agama`, `pekerjaan`, `no_rumah`, `foto`, `no_kontak`, `hubungan`, `email_warga`) VALUES
(1, 1, '327', 'Samsul', 'Pria', '1989-03-17', 'S1', 'Islam', 'Karyawan Swasta', 'N2 17', '', '1234567', 'Kepala Keluarga', ''),
(3, 2, '123456', 'user rw', 'Pria', '2009-03-16', 'S1', 'Islam', 'Karyawan Swasta', 'Blok A No 2', '', '123456', 'Kepala Keluarga', ''),
(4, 4, '23456', 'user rt', 'Pria', '2008-03-16', 'S2', 'Islam', 'Dokter', 'Blok B No 2', '', '085722463435', 'Kepala Keluarga', 'okewebstore@gmail.com'),
(9, 4, '1111', 'BUDI SANTOSO', 'Pria', '2005-05-25', 'SMA', 'Islam', 'Belum Bekerja', 'Blok B No 2', '', '+6289647725336', 'Suami/Istri', 'okewebstore@gmail.com'),
(10, 4, '1111', 'BUDI SANTOSO', 'Pria', '2005-05-25', 'SMA', 'Islam', 'Belum Bekerja', 'Blok B No 2', '', '+6289647725336', 'Suami/Istri', 'okewebstore@gmail.com'),
(11, 4, '1010', 'Sugiyanyo', 'Pria', '2002-05-23', 'SD', 'Islam', 'Wirausaha', '20', '1010_foto', '0217872483', 'Kepala Keluarga', 'neozonk@gmail.com'),
(12, 4, '1011', 'Afif', 'Pria', '2012-05-24', 'Belum Sekolah', 'Islam', 'Belum Bekerja', '20', '', '02145888', 'Anak', 'afif@gmail.com'),
(13, 4, '1012', 'Indah', 'Wanita', '2005-05-19', 'SD', 'Islam', 'Karyawan Swasta', '20', '', '0217872483', 'Suami/Istri', 'Indah@gmail.com '),
(15, 4, '1017', 'harry', 'Pria', '2018-05-23', 'S2', 'Protestan', 'Karyawan Swasta', '20', '', '0231', 'Saudara', 'test1@gmail.com'),
(16, 4, '2020', 'suaep', 'Pria', '2011-05-03', 'S3', 'Hindu', 'Polisi', '2', '2020_foto', '1', 'Kepala Keluarga', 'gccmandiri@gmail.com'),
(17, 4, '10000', 'Santi', 'Pria', '2018-05-23', 'S2', 'Hindu', 'Dokter', '20', '', '084532132', 'Anak', 'alfa@gmail.com'),
(18, 4, '76898765899987', 'ada', 'Pria', '2018-06-23', 'S1', 'Katolik', 'Polisi', '56', '76898765899987_foto', '3456789', 'Kepala Keluarga', 'ada@ada.com'),
(19, 4, '55555', 'JONO', 'Pria', '2008-06-02', 'SMA', 'Islam', 'Karyawan Swasta', '56', '', '+6289647725336', 'Anak', 'affiliasi32@gmail.com'),
(20, 4, '9090', 'sukarsih', 'Wanita', '1993-06-03', 'S3', 'Islam', 'Militer', '21', '9090_foto', '0231', 'Kepala Keluarga', 'test1@gmail.com'),
(21, 4, '321', 'Terry', 'Pria', '1981-08-11', 'SMA', 'Islam', 'Militer', '12', '321_foto', '0812345', 'Kepala Keluarga', 'as@gmail.con'),
(22, 4, '4444', 'YANTO', 'Pria', '2005-08-17', 'S2', 'Katolik', 'Karyawan Swasta', '2', '4444_foto', '+6289647725336', 'Kepala Keluarga', 'admin@GMAIL.COM'),
(23, 4, '2171032903760001', 'Jun', 'Pria', '2018-08-28', 'S1', 'Islam', 'Polisi', 'A1-2', '2171032903760001_foto', '08111', 'Kepala Keluarga', 'jun@gmail.com'),
(24, 1, '1234', 'aaa', 'Pria', '1970-01-01', 'S1', 'Islam', 'Akademisi', '32', '', '1234', 'Kepala Keluarga', ''),
(25, 6, '123', 'juki', 'Pria', '2018-08-16', 'SMP', 'Katolik', 'Dokter', '12', '', '9093223223', 'Kepala Keluarga', ''),
(26, 4, '001', 'ass', 'Pria', '2018-08-24', 'SD', 'Islam', 'Militer', '12', '001_foto', '12222', 'Kepala Keluarga', 'ass@gm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rt`
--

CREATE TABLE `rt` (
  `id_rt` int(10) NOT NULL,
  `nama_rt` varchar(20) DEFAULT NULL,
  `ketua` int(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `pass_email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rt`
--

INSERT INTO `rt` (`id_rt`, `nama_rt`, `ketua`, `email`, `pass_email`) VALUES
(1, 'RT 1', NULL, '', ''),
(2, 'RT 2', NULL, '', ''),
(3, 'RT 3', NULL, '', ''),
(4, 'RT 4', NULL, 'walalaa@gmail.com', 'jsjd'),
(5, 'RT 5', NULL, '', ''),
(6, 'RT 6', NULL, '', ''),
(7, 'wrh', NULL, '', ''),
(8, '', NULL, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_set` int(2) NOT NULL,
  `rw` varchar(10) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kode_pos` varchar(100) DEFAULT NULL,
  `komplek` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_set`, `rw`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `kode_pos`, `komplek`, `logo`) VALUES
(1, '12', 'Leuwi Singa', 'Cilodrok', 'Karek Anyar', 'Jawa Barat', '123456', 'Kampung Alim Rugi', 'logo1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(200) NOT NULL,
  `rt` int(10) DEFAULT NULL,
  `dari` varchar(100) DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `tgl_pengajuan` datetime DEFAULT NULL,
  `nomor_surat` varchar(100) DEFAULT NULL,
  `tgl_penerbitan` datetime DEFAULT NULL,
  `no_urut` int(200) NOT NULL,
  `status` int(2) NOT NULL,
  `keperluan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`id_surat`, `rt`, `dari`, `perihal`, `tgl_pengajuan`, `nomor_surat`, `tgl_penerbitan`, `no_urut`, `status`, `keperluan`) VALUES
(1, 4, '23456', 'KTP Baru / Perpanjang', '2018-05-20 00:00:00', 'RT. 4/Kampung Alim Rugi/2018/VIII/7', '2018-08-09 07:57:32', 7, 1, 'aaa'),
(2, 4, '23456', NULL, '2018-05-20 00:00:00', 'RT. 4/Kampung Alim Rugi/2018/XI/11', '2018-11-15 14:48:20', 11, 1, ''),
(3, 4, '23456', 'Kartu Keluarga (KK)', '2018-05-20 00:00:00', NULL, NULL, 0, 0, 'rfghjkl'),
(4, 4, '5432', 'Kematian / Keterangan Waris', '2018-05-20 00:00:00', NULL, NULL, 0, 0, 'fdsbv'),
(5, 4, '23456', 'Pindah Keluar / Masuk', '2018-05-20 00:00:00', NULL, NULL, 0, 0, 'dfghjkl'),
(6, 4, '5432', 'Ijin Usaha / IMB', '2018-05-20 00:00:00', 'RT. 4/Kampung Alim Rugi/2018/V/3', '2018-05-20 16:03:59', 3, 1, 'gdfssfsfdf'),
(7, 4, '5432', 'Keterangan Belum Menikah', '2018-05-20 00:00:00', 'RT. 4/Kampung Alim Rugi/2018/V/2', '2018-05-20 16:01:51', 2, 1, 'jdhjshdjshdjshdj'),
(8, 4, '1010', 'KTP Baru / Perpanjang', '2018-05-27 00:00:00', 'RT. 4/Kampung Alim Rugi/2018/V/4', '2018-05-27 23:32:54', 4, 1, 'HILANG'),
(9, 4, '55555', 'KTP Baru / Perpanjang', '2018-06-02 00:00:00', 'RT. 4/Kampung Alim Rugi/2018/VI/5', '2018-06-02 12:25:37', 5, 1, 'IJIN USAHA'),
(10, 4, '1010', 'Ijin Usaha / IMB', '2018-06-02 00:00:00', 'RT. 4/Kampung Alim Rugi/2018/VI/6', '2018-06-04 02:18:04', 6, 1, 'BUAT KONTRAKAN'),
(11, 4, '23456', 'KTP Baru / Perpanjang', '2018-08-09 00:00:00', NULL, NULL, 0, 0, 'IJIN USAHA'),
(12, 4, '2171032903760001', 'Pindah Keluar / Masuk', '2018-08-12 00:00:00', NULL, NULL, 0, 0, 'tes'),
(13, 4, '23456', 'KTP Baru / Perpanjang', '2018-08-12 00:00:00', '001RT. 4/Kampung Alim Rugi/2018/VIII/8', '2018-08-12 21:36:58', 8, 1, 'apaaja'),
(14, 4, '4444', 'KTP Baru / Perpanjang', '2018-08-14 00:00:00', 'RT. 4/Kampung Alim Rugi/2018/VIII/9', '2018-08-14 12:50:53', 9, 1, 'IJIN USAHA'),
(15, 4, '1010', 'Kartu Keluarga (KK)', '2018-11-15 00:00:00', NULL, NULL, 0, 0, 'dsdsd'),
(16, 4, '1010', 'KTP Baru / Perpanjang', '2018-11-15 00:00:00', NULL, NULL, 0, 0, 'sssss'),
(17, 4, '1010', 'Ijin Usaha / IMB', '2018-11-15 00:00:00', NULL, NULL, 0, 0, 'ddsds'),
(18, 4, '1010', 'Keterangan Belum Menikah', '2018-11-15 00:00:00', NULL, NULL, 0, 0, 'tthththth'),
(19, 4, '1010', 'Pensiunan / Taspen / Asabri / Astek', '2018-11-15 00:00:00', NULL, NULL, 0, 0, 'dfdfdf'),
(20, 4, '1010', 'Wesel Paket Berharga', '2018-11-15 00:00:00', NULL, NULL, 0, 0, 'sdsdsdsdsd'),
(21, 4, '1010', 'Keterangan Kelakuan Baik (SKCK)', '2018-11-15 00:00:00', NULL, NULL, 0, 0, 'ghjhj'),
(22, 4, '1010', 'Ijin Keramaian', '2018-11-15 00:00:00', NULL, NULL, 0, 0, 'sdsdsd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(100) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `no_ktp` varchar(200) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `no_ktp`, `password`, `role`, `status`, `last_login`) VALUES
(1, 'admin', '327', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 1, NULL),
(3, '123456', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'rw', 1, '2018-11-15 16:44:55'),
(4, '23456', '23456', 'adcaec3805aa912c0d0b14a81bedb6ff', 'Ketua', 1, '2018-11-15 16:45:02'),
(5, '5432', '5432', 'e10adc3949ba59abbe56e057f20f883e', 'warga', 1, '2018-05-20 15:44:06'),
(6, '1010', '1010', 'e10adc3949ba59abbe56e057f20f883e', 'warga', 1, '2018-11-15 16:19:48'),
(7, '1013', '1013', 'c4ca4238a0b923820dcc509a6f75849b', 'Sekretaris', 1, '2018-05-26 23:10:50'),
(8, '2020', '2020', 'c4ca4238a0b923820dcc509a6f75849b', 'warga', 1, '2018-05-27 23:11:18'),
(9, '76898765899987', '76898765899987', '7613913afc187b4469e2877fa9a76ee9', 'warga', 1, NULL),
(10, '55555', '55555', 'c5fe25896e49ddfe996db7508cf00534', 'warga', 1, '2018-06-02 12:23:50'),
(11, '9090', '9090', 'c4ca4238a0b923820dcc509a6f75849b', 'Sekretaris', 1, '2018-06-02 20:13:21'),
(12, '321', '321', 'e10adc3949ba59abbe56e057f20f883e', 'warga', 1, '2018-08-11 22:47:08'),
(13, '4444', '4444', '21232f297a57a5a743894a0e4a801fc3', 'Bendahara', 1, '2018-08-30 21:33:05'),
(14, '2171032903760001', '2171032903760001', '93279e3308bdbbeed946fc965017f67a', 'warga', 1, '2018-08-12 19:27:08'),
(15, '1234', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 'warga', 1, NULL),
(16, '123', '123', '202cb962ac59075b964b07152d234b70', 'warga', 1, '2018-08-22 18:32:56'),
(17, '001', '001', 'dc5c7986daef50c1e02ab09b442ee34f', 'warga', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buat_iuran`
--
ALTER TABLE `buat_iuran`
  ADD PRIMARY KEY (`id_b_iuran`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indeks untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id_hubungan`);

--
-- Indeks untuk tabel `iuran`
--
ALTER TABLE `iuran`
  ADD PRIMARY KEY (`id_iuran`);

--
-- Indeks untuk tabel `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id_keu`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `rt`
--
ALTER TABLE `rt`
  ADD PRIMARY KEY (`id_rt`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_set`);

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buat_iuran`
--
ALTER TABLE `buat_iuran`
  MODIFY `id_b_iuran` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id_hubungan` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `iuran`
--
ALTER TABLE `iuran`
  MODIFY `id_iuran` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id_keu` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `rt`
--
ALTER TABLE `rt`
  MODIFY `id_rt` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_set` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

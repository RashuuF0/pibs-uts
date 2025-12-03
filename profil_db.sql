-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2025 pada 06.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profil_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `TTL` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id`, `nim`, `nama`, `agama`, `TTL`, `id_user`) VALUES
(2, '2024081019', 'Zahra Cipta Damai', 'Islam', '2006-05-11', 2),
(3, '2024081037', 'Faiz Hibatullah', 'Islam', 'Tangerang Selatan', 3),
(4, '2024081043', 'Faizz Rizantha', 'Islam', 'Medan', 4),
(6, '2024081019', 'Lashkar Firdaus', 'Islam', 'Tangeran Selatan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hobi`
--

CREATE TABLE `hobi` (
  `id` int(11) NOT NULL,
  `hobi` varchar(150) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hobi`
--

INSERT INTO `hobi` (`id`, `hobi`, `id_user`) VALUES
(1, 'Main Gitar', 1),
(2, 'Gym', 2),
(3, 'Ngepunk', 3),
(4, 'Main Drumb', 4),
(5, 'Bermain Badminton', 1),
(6, 'Badminton', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keahlian`
--

CREATE TABLE `keahlian` (
  `id` int(11) NOT NULL,
  `Skill` varchar(150) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keahlian`
--

INSERT INTO `keahlian` (`id`, `Skill`, `id_user`) VALUES
(1, 'JavaScript', 1),
(3, 'Visual Studio Code', 3),
(4, 'Net Beans', 4),
(5, 'HTML & CSS', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `ID` int(11) NOT NULL,
  `Jenjang` varchar(100) NOT NULL,
  `Sekolah` varchar(150) NOT NULL,
  `Tahun` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`ID`, `Jenjang`, `Sekolah`, `Tahun`, `id_user`) VALUES
(1, 'Universitas Pembangunan Jaya', 'SDN Jombang 1\r\nSMPN 6 Tangerang Selatan\r\nSMAN 9 Tangerang Selatan', '1', 0),
(2, 'Pendidikan', 'SDN 01 Mulyojadi. SMPN 03 Maja. SMKN 01 Maja', '2024', 2),
(3, 'Universitas Pemabangunan Jaya', 'SDN Jombang 1\r\nMTS\r\nMAS\r\n', '3', 0),
(4, 'UPJ', 'SDN JOMBANG 1', '2005', 3),
(5, 'UPJ', 'SD\r\nSMP\r\nSMA', '2010', 0),
(6, 'Universitan Pembangunan', 'SDN , SMP , SMA', '2010', 4),
(7, 'Kuliah', 'SDN Jombang 1. SMPN 6 Tangsel. SMAN 9 Tangsel', '2015', 0),
(8, 'Pendidikan', 'SDN Jombang 1. SMPN 6 Tangsel. SMAN 9 Tangsel', '2015', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman`
--

CREATE TABLE `pengalaman` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengalaman`
--

INSERT INTO `pengalaman` (`id`, `nama`, `tahun`, `id_user`) VALUES
(1, 'Penjoki Mobile Legends', '2023', 1),
(2, 'Concordia ', 'Divisi PDD', 2),
(3, 'Keamanan', '2025', 3),
(4, '2005-10-10', '2006', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`) VALUES
(1, 'Lashkar Firdaus'),
(2, 'Zahra Cipta Damai'),
(3, 'Faiz Hibatullah'),
(4, 'M. Faizz Rizantha Ake');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hobi`
--
ALTER TABLE `hobi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `hobi`
--
ALTER TABLE `hobi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pengalaman`
--
ALTER TABLE `pengalaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

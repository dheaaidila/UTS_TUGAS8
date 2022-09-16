-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Sep 2022 pada 09.02
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dheaartikel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `penulis`, `deskripsi`, `created_at`, `updated_at`) VALUES
(10, 'KOMBINASI STYLE KEREN', 'wertyuio', 'Gaya berbusana masyarakat perkotaan yang pada “awalnya” terinspirasi oleh gaya berpakaian “brandalan” jalanan yang menentang untuk di dikte oleh gaya berbusana para designer. Berakar pada budaya surf and skate juga musik hiphop & grunge.', '2022-09-15 23:52:40', '2022-09-15 23:52:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komen`
--

INSERT INTO `komen` (`id`, `nama`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'fgh', 'fghj', '2022-09-08 20:17:20', '2022-09-08 20:17:20'),
(2, 'sopreciuoswoo', 'yahhhh sedih banget T_T', '2022-09-08 20:34:05', '2022-09-08 20:34:05'),
(3, 'sunlightsl', 'semoga yedam dan mashiho cepat balik lagi T_T', '2022-09-08 20:35:08', '2022-09-08 20:35:08'),
(4, 'parkji', 'test komen', '2022-09-08 23:08:26', '2022-09-08 23:08:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'hamada asahi', 'hmdasahi@gmail.com', 'hamada asahi', '$2y$10$kKKE9qSJ.3bhfAgJCgW/4eDYDGcjX4iq5D9kWTbNlgkKqfyMtYvPe', NULL, '2022-08-31 00:52:13', '2022-08-31 00:52:13'),
(5, 'somedeeary', 'theawdee.s@gmail.com', 'Maulidi Rusla', '$2y$10$zf/DoIdVSlwNMinEYIt.De.Tnz7qB/UCSp0WroP8ulPsK8YuDr81u', NULL, '2022-09-03 22:44:03', '2022-09-03 22:44:03'),
(6, 'somedeeary', 'albertenst29@gmail.com', 'sakti ganteng', '$2y$10$N1yVuHzX5QA58EyP1gzdFO0JbMRMVKiJaqIeDGQGMiP0KJHSGEV/.', NULL, '2022-09-07 08:16:53', '2022-09-07 08:16:53'),
(7, 'jipark', 'jipark@gmail.com', 'park jihoon', '$2y$10$4OfI6cVLQHf.0a4hzmDDYOB0KY8/znebyTXz/oDeMi7sd.QwJZjhq', NULL, '2022-09-07 23:06:20', '2022-09-07 23:06:20'),
(8, 'junkyu', 'junkyu@gmail.com', 'kyuu', '$2y$10$kb4ed1dQryUS6H3m6rNfSuuQNryQHmJoqt9QDtTG1bYNCDk3Ciq66', NULL, '2022-09-07 23:19:02', '2022-09-07 23:19:02'),
(9, 'dhea', 'dheaaidila@gmail.com', 'dhea', '$2y$10$vTjHXbtcXJQObjEgpHrNC.mS.tkDA2ZGYhTnQU9G0cSMBklPNiWz.', NULL, '2022-09-15 23:45:28', '2022-09-15 23:45:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 7, NULL, '2022-09-07 23:06:20', '2022-09-07 23:06:20'),
(2, 8, '+623838449493', '2022-09-07 23:19:02', '2022-09-07 23:19:02'),
(3, 9, '+623838449495', '2022-09-15 23:45:28', '2022-09-15 23:45:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

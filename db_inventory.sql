-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2020 pada 06.08
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_tb`
--

CREATE TABLE `products_tb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `Suppliyer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products_tb`
--

INSERT INTO `products_tb` (`id`, `product_name`, `Suppliyer_id`) VALUES
(1, 'MSI GL63', 2),
(2, 'Acer Predator Triton', 1),
(3, 'HP Omen 15', 1),
(4, 'Macbook Pro 18', 2),
(5, 'ACER SWIFT', 3),
(6, 'Razer Blade Stealth', 4),
(7, 'MSI GL61', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers_tb`
--

CREATE TABLE `suppliers_tb` (
  `id` int(11) NOT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suppliers_tb`
--

INSERT INTO `suppliers_tb` (`id`, `company_name`, `address`, `phone`) VALUES
(1, 'PT.DumbWays', 'Jalan Kemana Aja', '08389696969'),
(2, 'PT.WaysDumb', 'Jalan aja dulu', '082169212121'),
(3, 'PT.Majik', 'Jl Wonderland', '086921692169'),
(4, 'PT.Sera', 'Jl Nusakambangan', '082169216921');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `products_tb`
--
ALTER TABLE `products_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suppliers_tb`
--
ALTER TABLE `suppliers_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products_tb`
--
ALTER TABLE `products_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `suppliers_tb`
--
ALTER TABLE `suppliers_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

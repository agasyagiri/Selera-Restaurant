-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2023 pada 02.26
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selera`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_daftar_menu`
--

CREATE TABLE `tb_daftar_menu` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` int(50) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `stok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_daftar_menu`
--

INSERT INTO `tb_daftar_menu` (`id`, `foto`, `nama_menu`, `keterangan`, `kategori`, `harga`, `stok`) VALUES
(1, '1.jpg', 'Nasi Padang', 'Enak Poll', 1, '15000', '10'),
(2, '2.jpg', 'Nasi Soto', 'Enak Poll', 1, '12000', '10'),
(3, '3.jpg', 'Nasi Uduk', 'Enak Poll', 1, '12000', '10'),
(9, '4.jpg', 'Mie Ayam', 'Enak Poll', 1, '8000', '10'),
(10, '5.jpg', 'Es Teh', 'Seger Poll', 4, '3000', '10'),
(14, '6.jpg', 'Es Jeruk Peras', 'Seger Poll', 4, '3500', '15'),
(18, '7.jpg', 'Es Coklat', 'Seger Poll', 3, '5000', '15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_menu`
--

CREATE TABLE `tb_kategori_menu` (
  `id_kat_menu` int(11) NOT NULL,
  `jenis_menu` int(11) NOT NULL,
  `kategori_menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kategori_menu`
--

INSERT INTO `tb_kategori_menu` (`id_kat_menu`, `jenis_menu`, `kategori_menu`) VALUES
(1, 1, 'Nasi'),
(3, 2, 'Jus'),
(4, 2, 'Es-esan'),
(5, 1, 'Snack'),
(6, 2, 'Kopi'),
(11, 1, 'Jajan'),
(12, 1, 'Mie');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_list_order`
--

CREATE TABLE `tb_list_order` (
  `id_list_order` int(11) NOT NULL,
  `menu` int(11) NOT NULL,
  `order` int(20) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` int(19) NOT NULL,
  `pelanggan` varchar(255) NOT NULL,
  `meja` int(11) NOT NULL,
  `pelayan` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `waktu_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `catatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `pelanggan`, `meja`, `pelayan`, `status`, `waktu_order`, `catatan`) VALUES
(45261, 'dapa', 2, 1, '', '2023-11-01 16:42:57', 'uin'),
(87656789, 'jalu', 3, 1, '', '2023-11-01 16:33:57', 'uin'),
(123456789, 'dapa', 1, 1, '', '2023-11-01 16:23:02', 'uin'),
(456789876, 'sena', 4, 1, '', '2023-11-01 16:34:44', 'ppp'),
(2147483647, 'aji', 2, 1, '', '2023-11-01 16:20:08', 'ppp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(10) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `level`, `nohp`, `alamat`) VALUES
(1, 'admin', 'admin@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '123456789', 'Jl. Masa Depan'),
(2, 'kasir', 'kasir@kasir.com', '202cb962ac59075b964b07152d234b70', 2, '123456789', 'Jl. Kosong'),
(3, 'pelayan', 'pelayan@pelayan.com', '202cb962ac59075b964b07152d234b70', 3, '123456789', 'Jl. Kenangan'),
(4, 'dapur', 'dapur@dapur.com', '202cb962ac59075b964b07152d234b70', 4, '123456789', 'Jl. Buntu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_daftar_menu`
--
ALTER TABLE `tb_daftar_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_daftar_menu_ibfk_1` (`kategori`);

--
-- Indeks untuk tabel `tb_kategori_menu`
--
ALTER TABLE `tb_kategori_menu`
  ADD PRIMARY KEY (`id_kat_menu`);

--
-- Indeks untuk tabel `tb_list_order`
--
ALTER TABLE `tb_list_order`
  ADD PRIMARY KEY (`id_list_order`),
  ADD KEY `menu` (`menu`,`order`),
  ADD KEY `order` (`order`);

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `pelayan` (`pelayan`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_daftar_menu`
--
ALTER TABLE `tb_daftar_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_menu`
--
ALTER TABLE `tb_kategori_menu`
  MODIFY `id_kat_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_list_order`
--
ALTER TABLE `tb_list_order`
  MODIFY `id_list_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_daftar_menu`
--
ALTER TABLE `tb_daftar_menu`
  ADD CONSTRAINT `tb_daftar_menu_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori_menu` (`id_kat_menu`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_list_order`
--
ALTER TABLE `tb_list_order`
  ADD CONSTRAINT `tb_list_order_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `tb_daftar_menu` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_list_order_ibfk_2` FOREIGN KEY (`order`) REFERENCES `tb_order` (`id_order`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`pelayan`) REFERENCES `tb_user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

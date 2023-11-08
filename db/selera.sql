-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2023 pada 04.26
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
-- Struktur dari tabel `tb_bayar`
--

CREATE TABLE `tb_bayar` (
  `id_bayar` bigint(20) NOT NULL,
  `nominal_uang` bigint(20) NOT NULL,
  `total_bayar` bigint(20) NOT NULL,
  `waktu_bayar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_bayar`
--

INSERT INTO `tb_bayar` (`id_bayar`, `nominal_uang`, `total_bayar`, `waktu_bayar`) VALUES
(2311021019391, 40000, 39000, '2023-11-07 00:47:15'),
(2311021733535, 25000, 22000, '2023-11-03 14:50:42'),
(2311022212767, 70000, 63000, '2023-11-03 14:54:55'),
(2311061138449, 60000, 57000, '2023-11-06 04:56:34'),
(2311071331693, 60000, 54000, '2023-11-07 06:32:17');

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
(14, '6.jpg', 'Es Jeruk', 'Seger Poll', 4, '4000', '15'),
(18, '7.jpg', 'Es Coklat', 'Seger Poll', 3, '5000', '15'),
(19, '8.jpg', 'Jus Mangga', 'Seger Poll', 3, '5000', '10'),
(20, '10.jpg', 'Jus Alpukat', 'Seger Poll', 3, '5000', '10'),
(21, '11.jpg', 'Nasi Kuning', 'Enak Poll', 1, '13000', '10'),
(22, '9.jpg', 'Nasi Goreng', 'Enak Poll', 1, '10000', '10');

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
  `kode_order` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_list_order`
--

INSERT INTO `tb_list_order` (`id_list_order`, `menu`, `kode_order`, `jumlah`, `catatan`, `status`) VALUES
(7, 1, 2311021019391, 2, 'ppp', 2),
(8, 14, 2311021019391, 1, 'ppp', 2),
(9, 18, 2311021019391, 1, 'ppp', 2),
(10, 2, 2311021011630, 3, 'yhbn', 0),
(11, 10, 2311021011630, 1, 'ppp', 0),
(13, 9, 2311021733535, 2, 'ppp', 0),
(14, 10, 2311021733535, 2, 'uin', 0),
(15, 3, 2311022212767, 4, 'ppp', 0),
(16, 10, 2311022212767, 2, 'uin', 0),
(17, 14, 2311022212767, 1, 'uin', 0),
(18, 18, 2311022212767, 1, 'uin', 0),
(20, 1, 2311032223639, 3, 'ppp', 0),
(21, 3, 2311032223639, 1, 'ppp', 0),
(22, 14, 2311032223639, 2, 'ppp', 0),
(23, 18, 2311032223639, 2, 'uin', 0),
(24, 9, 2311061138449, 2, 'ppp', 0),
(25, 3, 2311061138449, 1, 'ppp', 0),
(26, 2, 2311061138449, 1, 'ppp', 0),
(27, 10, 2311061138449, 3, 'yhbn', 0),
(28, 14, 2311061138449, 2, 'yhbn', 0),
(29, 1, 2311071331693, 3, 'ppp', 2),
(30, 10, 2311071331693, 3, 'uin', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` bigint(20) NOT NULL,
  `pelanggan` varchar(255) NOT NULL,
  `meja` int(11) NOT NULL,
  `pelayan` int(11) NOT NULL,
  `waktu_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `pelanggan`, `meja`, `pelayan`, `waktu_order`) VALUES
(2311021011630, 'dapa', 1, 1, '2023-11-02 12:13:19'),
(2311021019391, 'aji', 2, 1, '2023-11-02 03:19:37'),
(2311021733535, 'jalu', 3, 1, '2023-11-02 10:33:48'),
(2311022212767, 'sena', 4, 1, '2023-11-02 15:12:29'),
(2311032223639, 'panji', 5, 1, '2023-11-03 15:25:06'),
(2311061138449, 'rosi', 6, 1, '2023-11-06 04:45:52'),
(2311071331693, 'fadil', 4, 1, '2023-11-07 06:31:39');

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
(1, 'admin', 'admin@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '12345678910', 'Jl. Masa Depan'),
(2, 'kasir', 'kasir@kasir.com', '202cb962ac59075b964b07152d234b70', 2, '123456789', 'Jl. Kosong'),
(3, 'pelayan', 'pelayan@pelayan.com', '202cb962ac59075b964b07152d234b70', 3, '123456789', 'Jl. Kenangan'),
(4, 'dapur', 'dapur@dapur.com', '202cb962ac59075b964b07152d234b70', 4, '123456789', 'Jl. Buntu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_bayar`
--
ALTER TABLE `tb_bayar`
  ADD PRIMARY KEY (`id_bayar`);

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
  ADD KEY `menu` (`menu`,`kode_order`),
  ADD KEY `order` (`kode_order`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_menu`
--
ALTER TABLE `tb_kategori_menu`
  MODIFY `id_kat_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_list_order`
--
ALTER TABLE `tb_list_order`
  MODIFY `id_list_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  ADD CONSTRAINT `tb_list_order_ibfk_2` FOREIGN KEY (`kode_order`) REFERENCES `tb_order` (`id_order`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`pelayan`) REFERENCES `tb_user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
